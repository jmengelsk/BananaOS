.class public final Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;


# instance fields
.field public final mRestoreBluetoothA2dpRunnable:Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl$$ExternalSyntheticLambda0;

.field public final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    new-instance v0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaRouterService;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->mRestoreBluetoothA2dpRunnable:Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final onAudioPlayerActiveStateChanged(Landroid/media/AudioPlaybackConfiguration;Z)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_c

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result p2

    if-eqz p2, :cond_c

    move p2, v1

    goto :goto_d

    :cond_c
    move p2, v0

    :goto_d
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-object v3, v3, Lcom/android/server/media/MediaRouterService;->mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/IntArray;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_2d

    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-object v4, v4, Lcom/android/server/media/MediaRouterService;->mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->remove(I)V

    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-object v4, v4, Lcom/android/server/media/MediaRouterService;->mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->remove(I)V

    :cond_2d
    if-eqz p2, :cond_43

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-object v3, v3, Lcom/android/server/media/MediaRouterService;->mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/util/IntArray;->add(I)V

    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-object p1, p1, Lcom/android/server/media/MediaRouterService;->mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

    invoke-virtual {p1, v2}, Landroid/util/IntArray;->add(I)V

    move p1, v2

    goto :goto_5c

    :cond_43
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-object p1, p1, Lcom/android/server/media/MediaRouterService;->mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result p1

    if-lez p1, :cond_5b

    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-object p1, p1, Lcom/android/server/media/MediaRouterService;->mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1, v3}, Landroid/util/IntArray;->get(I)I

    move-result p1

    goto :goto_5c

    :cond_5b
    const/4 p1, -0x1

    :goto_5c
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-object v3, v3, Lcom/android/server/media/MediaRouterService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->mRestoreBluetoothA2dpRunnable:Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-ltz p1, :cond_c6

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6c
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouterService$UserRecord;

    if-eqz v4, :cond_9a

    iget-object v4, v4, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    if-eqz v4, :cond_9a

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_86
    if-ge v0, v5, :cond_9a

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/2addr v0, v1

    check-cast v6, Lcom/android/server/media/MediaRouterService$ClientRecord;

    iget-object v7, v6, Lcom/android/server/media/MediaRouterService$ClientRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v7}, Lcom/android/server/media/MediaRouterService;->validatePackageName$1(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_86

    goto :goto_9b

    :catchall_98
    move-exception p0

    goto :goto_c4

    :cond_9a
    const/4 v6, 0x0

    :goto_9b
    monitor-exit v3
    :try_end_9c
    .catchall {:try_start_6c .. :try_end_9c} :catchall_98

    if-eqz v6, :cond_ad

    :try_start_9e
    iget-object p0, v6, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    invoke-interface {p0}, Landroid/media/IMediaRouterClient;->onRestoreRoute()V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_a3} :catch_a4

    goto :goto_b0

    :catch_a4
    const-string/jumbo p0, "MediaRouterService"

    const-string v0, "Failed to call onRestoreRoute. Client probably died."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    :cond_ad
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService;->restoreBluetoothA2dp()V

    :goto_b0
    sget p0, Lcom/android/server/media/MediaRouterService;->$r8$clinit:I

    const-string/jumbo p0, "MediaRouterService"

    const-string/jumbo v0, "onAudioPlayerActiveStateChanged: uid="

    const-string v1, ", active="

    const-string v3, ", restoreUid="

    invoke-static {v2, v0, v1, v3, p2}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p2, p1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :goto_c4
    :try_start_c4
    monitor-exit v3
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_98

    throw p0

    :cond_c6
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-object p1, p1, Lcom/android/server/media/MediaRouterService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->mRestoreBluetoothA2dpRunnable:Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl$$ExternalSyntheticLambda0;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget p0, Lcom/android/server/media/MediaRouterService;->$r8$clinit:I

    const-string/jumbo p0, "MediaRouterService"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onAudioPlayerActiveStateChanged: uid="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", active="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", delaying"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
