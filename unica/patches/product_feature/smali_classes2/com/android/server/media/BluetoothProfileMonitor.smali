.class public final Lcom/android/server/media/BluetoothProfileMonitor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

.field public final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public final mContext:Landroid/content/Context;

.field public mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

.field public mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

.field public final mProfileListener:Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;

    invoke-direct {v0, p0}, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;-><init>(Lcom/android/server/media/BluetoothProfileMonitor;)V

    iput-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mProfileListener:Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method


# virtual methods
.method public final getGroupId(Landroid/bluetooth/BluetoothDevice;I)J
    .registers 6

    monitor-enter p0

    const/4 v0, 0x2

    const-wide/16 v1, -0x1

    if-eq p2, v0, :cond_3e

    const/16 v0, 0x15

    if-eq p2, v0, :cond_33

    const/16 v0, 0x16

    if-ne p2, v0, :cond_1c

    :try_start_e
    iget-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    if-nez p2, :cond_13

    goto :goto_18

    :cond_13
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    int-to-long v1, p1

    :goto_18
    monitor-exit p0

    return-wide v1

    :catchall_1a
    move-exception p1

    goto :goto_40

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not supported as Bluetooth profile"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    iget-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p2, :cond_38

    goto :goto_3c

    :cond_38
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothHearingAid;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v1

    :goto_3c
    monitor-exit p0

    return-wide v1

    :cond_3e
    monitor-exit p0

    return-wide v1

    :goto_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_e .. :try_end_41} :catchall_1a

    throw p1
.end method

.method public final isProfileSupported(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2b

    const/16 v0, 0x15

    if-eq p2, v0, :cond_28

    const/16 v0, 0x16

    if-ne p2, v0, :cond_11

    :try_start_c
    iget-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    goto :goto_2d

    :catchall_f
    move-exception p1

    goto :goto_3b

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not supported as Bluetooth profile"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    iget-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    goto :goto_2d

    :cond_2b
    iget-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    :goto_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_f

    if-nez p2, :cond_32

    const/4 p0, 0x0

    return p0

    :cond_32
    invoke-interface {p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :goto_3b
    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_f

    throw p1
.end method
