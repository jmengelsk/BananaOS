.class public final Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public isEdgeLighting:Z

.field public final mHandler:Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;

.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;

.field public final token:Landroid/os/IBinder;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;Landroid/os/IBinder;Landroid/content/ComponentName;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;

    new-instance v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;

    iget-object p1, p1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;-><init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->mHandler:Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;

    iput-object p2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->pid:I

    iput p5, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->uid:I

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "EdgeLightingListenerManager"

    const-string p1, "EdgeLightingListener : linkToDeath error"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    const-string v0, "EdgeLightingListenerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "binderDied : binder = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "binderDied."

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->updateListenerHistory(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->mHandler:Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;

    iget-object v0, v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;

    iget-object v1, v1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  [Listener: component:("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") pid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") uid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->uid:I

    const-string v1, ")]"

    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
