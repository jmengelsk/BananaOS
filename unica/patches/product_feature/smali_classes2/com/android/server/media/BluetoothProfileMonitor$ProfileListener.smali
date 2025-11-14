.class public final Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/BluetoothProfileMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/media/BluetoothProfileMonitor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    monitor-enter v0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1f

    const/16 v1, 0x15

    if-eq p1, v1, :cond_18

    const/16 v1, 0x16

    if-eq p1, v1, :cond_f

    goto :goto_25

    :cond_f
    :try_start_f
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    check-cast p2, Landroid/bluetooth/BluetoothLeAudio;

    iput-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    goto :goto_25

    :catchall_16
    move-exception p0

    goto :goto_27

    :cond_18
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    check-cast p2, Landroid/bluetooth/BluetoothHearingAid;

    iput-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    goto :goto_25

    :cond_1f
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    iput-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    :goto_25
    monitor-exit v0

    return-void

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_16

    throw p0
.end method

.method public final onServiceDisconnected(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    monitor-enter v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1c

    const/16 v1, 0x15

    if-eq p1, v1, :cond_17

    const/16 v1, 0x16

    if-eq p1, v1, :cond_10

    goto :goto_20

    :cond_10
    :try_start_10
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    iput-object v2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    goto :goto_20

    :catchall_15
    move-exception p0

    goto :goto_22

    :cond_17
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    iput-object v2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    goto :goto_20

    :cond_1c
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    iput-object v2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    :goto_20
    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_15

    throw p0
.end method
