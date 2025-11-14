.class public final Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;
.super Landroid/media/IAudioRoutesObserver$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-direct {p0}, Landroid/media/IAudioRoutesObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    .registers 8

    const-string/jumbo v0, "dispatchAudioRoutesChanged setForcePath = "

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-object v1, v1, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    const-string v2, "BT"

    invoke-virtual {p1}, Landroid/media/AudioRoutesInfo;->getSetForcePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_21

    iget-object v2, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    iput-boolean v3, v2, Lcom/android/server/media/MediaRouterService;->mForceBluetoothA2dpOn:Z

    goto :goto_32

    :catchall_1f
    move-exception p0

    goto :goto_8d

    :cond_21
    const-string/jumbo v2, "OTHERS"

    invoke-virtual {p1}, Landroid/media/AudioRoutesInfo;->getSetForcePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    iput-boolean v4, v2, Lcom/android/server/media/MediaRouterService;->mForceBluetoothA2dpOn:Z

    :cond_32
    :goto_32
    const-string/jumbo v2, "MediaRouterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/AudioRoutesInfo;->getSetForcePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mForceBluetoothA2dpOn = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-boolean v0, v0, Lcom/android/server/media/MediaRouterService;->mForceBluetoothA2dpOn:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    iget v5, v2, Lcom/android/server/media/MediaRouterService;->mAudioRouteMainType:I

    if-eq v0, v5, :cond_8b

    and-int/lit8 v0, v0, 0x13

    if-nez v0, :cond_83

    iget-object v0, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-nez v0, :cond_6a

    iget-object v5, v2, Lcom/android/server/media/MediaRouterService;->mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v5, :cond_69

    goto :goto_6a

    :cond_69
    move v3, v4

    :cond_6a
    :goto_6a
    iput-boolean v3, v2, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    if-eqz v0, :cond_85

    if-eqz v3, :cond_85

    const-string/jumbo v0, "MediaRouterService"

    const-string/jumbo v2, "force restoreBluetoothA2dp()"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService;->restoreBluetoothA2dp()V

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    iput-boolean v4, v0, Lcom/android/server/media/MediaRouterService;->mForceBluetoothA2dpOn:Z

    goto :goto_85

    :cond_83
    iput-boolean v4, v2, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    :cond_85
    :goto_85
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    iget p1, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iput p1, p0, Lcom/android/server/media/MediaRouterService;->mAudioRouteMainType:I

    :cond_8b
    monitor-exit v1

    return-void

    :goto_8d
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8 .. :try_end_8e} :catchall_1f

    throw p0
.end method
