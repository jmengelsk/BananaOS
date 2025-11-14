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
    .locals 1

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
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    const-wide/16 v1, -0x1

    if-eq p2, v0, :cond_4

    const/16 v0, 0x15

    if-eq p2, v0, :cond_2

    const/16 v0, 0x16

    if-ne p2, v0, :cond_1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    int-to-long v1, p1

    :goto_0
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
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

    :cond_2
    iget-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothHearingAid;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v1

    :goto_1
    monitor-exit p0

    return-wide v1

    :cond_4
    monitor-exit p0

    return-wide v1

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final isProfileSupported(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/16 v0, 0x15

    if-eq p2, v0, :cond_1

    const/16 v0, 0x16

    if-ne p2, v0, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
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

    :cond_1
    iget-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    invoke-interface {p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
