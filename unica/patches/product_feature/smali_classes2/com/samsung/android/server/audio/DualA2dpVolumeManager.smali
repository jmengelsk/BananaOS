.class public final Lcom/samsung/android/server/audio/DualA2dpVolumeManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final FINE_VOLUME_TABLE:[F

.field public static final VOLUME_TABLE:[F


# instance fields
.field public final MAX_VOLUME:I

.field public final mAbsVolSupported:Landroid/util/ArrayMap;

.field public mActiveDevice:Landroid/bluetooth/BluetoothDevice;

.field public final mBrokerHandler:Landroid/os/Handler;

.field public final mConnectedDevicesVolume:Landroid/util/ArrayMap;

.field public mDualModeEnabled:Z

.field public final mEventLogger:Lcom/android/server/utils/EventLogger;

.field public mMainVolume:I

.field public mMinVolume:I

.field public mPersistVolumeWorker:Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

.field public final mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

.field public final mStoredAbsVolSupported:Landroid/util/ArrayMap;

.field public final mVolumeLogger:Lcom/android/server/utils/EventLogger;

.field public needVolumeChangedIntent:Z


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const/16 v0, 0xa

    const/high16 v1, 0x3f800000  # 1.0f

    const/16 v2, 0x10

    new-array v2, v2, [F

    fill-array-data v2, :array_42

    sput-object v2, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->VOLUME_TABLE:[F

    const/16 v2, 0x97

    new-array v2, v2, [F

    sput-object v2, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->FINE_VOLUME_TABLE:[F

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    const/16 v4, 0xf

    if-ge v3, v4, :cond_3b

    sget-object v4, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->VOLUME_TABLE:[F

    add-int/lit8 v5, v3, 0x1

    aget v6, v4, v5

    aget v4, v4, v3

    sub-float/2addr v6, v4

    const/high16 v4, 0x41200000  # 10.0f

    div-float/2addr v6, v4

    move v4, v2

    :goto_26
    if-ge v4, v0, :cond_39

    sget-object v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->FINE_VOLUME_TABLE:[F

    mul-int/lit8 v8, v3, 0xa

    add-int/2addr v8, v4

    sget-object v9, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->VOLUME_TABLE:[F

    aget v9, v9, v3

    int-to-float v10, v4

    mul-float/2addr v10, v6

    add-float/2addr v10, v9

    aput v10, v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_39
    move v3, v5

    goto :goto_15

    :cond_3b
    sget-object v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->FINE_VOLUME_TABLE:[F

    const/16 v2, 0x96

    aput v1, v0, v2

    return-void

    :array_42
    .array-data 4
        0x0
        0x3c02235b  # 0.007943f
        0x3c37d417  # 0.01122f
        0x3c81d5c3  # 0.015849f
        0x3cb764f1  # 0.022387f
        0x3d01871e
        0x3d36f5cb  # 0.044668f
        0x3d81387a
        0x3db6872b  # 0.089125f
        0x3e00ea18
        0x3e36188b
        0x3e809bd8
        0x3eb5aa0d
        0x3f004dcb
        0x3f353bf3
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mDualModeEnabled:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->needVolumeChangedIntent:Z

    new-instance v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    const-string v1, ""

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;-><init>(Lcom/samsung/android/server/audio/DualA2dpVolumeManager;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mPersistVolumeWorker:Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    new-instance v0, Lcom/android/server/utils/EventLogger;

    const/16 v1, 0x3c

    const-string v3, "Dual A2dp Event history"

    invoke-direct {v0, v1, v3}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/utils/EventLogger;

    const/16 v1, 0x1e

    const-string v3, "Dual A2dp Volume history"

    invoke-direct {v0, v1, v3}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mVolumeLogger:Lcom/android/server/utils/EventLogger;

    iput v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    const/16 v0, 0xa0

    iput v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMinVolume:I

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mStoredAbsVolSupported:Landroid/util/ArrayMap;

    mul-int/lit8 v0, p3, 0xa

    iput v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->MAX_VOLUME:I

    new-instance v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/audio/DualA2dpVolumeManager;I)V

    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    iput-object p2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mBrokerHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final disconnectA2dpProfile()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final getMainVolume()I
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mDualModeEnabled:Z

    if-eqz v1, :cond_d

    iget p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    goto :goto_22

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_b

    throw p0
.end method

.method public final getValidIndex(I)I
    .registers 2

    iget p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->MAX_VOLUME:I

    if-le p1, p0, :cond_5

    return p0

    :cond_5
    if-gez p1, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    return p1
.end method

.method public final isAvrcpAbsoluteVolumeSupportedForActiveDevice()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_1e

    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1c
    move-exception p0

    goto :goto_39

    :cond_1e
    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_36

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_36

    const/4 p0, 0x1

    goto :goto_37

    :cond_36
    const/4 p0, 0x0

    :goto_37
    monitor-exit v0

    return p0

    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_1c

    throw p0
.end method

.method public final postSaveVolumeDB(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mPersistVolumeWorker:Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    iget-object v0, v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->mAddress:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mBrokerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_16

    iget-object p2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mPersistVolumeWorker:Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mPersistVolumeWorker:Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    iput p1, p2, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->mVolume:I

    goto :goto_1d

    :cond_16
    new-instance v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;-><init>(Lcom/samsung/android/server/audio/DualA2dpVolumeManager;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mPersistVolumeWorker:Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    :goto_1d
    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mPersistVolumeWorker:Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7

    const-string/jumbo v0, "setActive:"

    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",prev:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v0, "AS.DualA2dpManager"

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    const/4 v0, 0x1

    if-nez p1, :cond_43

    iget-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_3c

    move v4, v0

    :cond_3c
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    monitor-exit v1

    return v4

    :catchall_41
    move-exception p0

    goto :goto_61

    :cond_43
    iget-object v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v0, v2

    iput-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    monitor-exit v1

    return v0

    :goto_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_6 .. :try_end_62} :catchall_41

    throw p0
.end method

.method public final setAvrcpAbsoluteVolumeSupported(Ljava/lang/String;Z)V
    .registers 8

    const-string v0, "AVC:"

    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",support:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v0, "AS.DualA2dpManager"

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    new-instance p1, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->replaceAll(Ljava/util/function/BiFunction;)V

    monitor-exit v1

    return-void

    :catchall_3f
    move-exception p0

    goto :goto_55

    :cond_41
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mStoredAbsVolSupported:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :goto_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_5 .. :try_end_56} :catchall_3f

    throw p0
.end method

.method public final setDualA2dpMode(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 7

    const-string v0, "Dual:"

    const-string/jumbo v1, "mActiveDevice is changed by dual off address = "

    iget-object v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_8
    iput-boolean p2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mDualModeEnabled:Z

    if-eqz p2, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->updateMainVolume()V

    goto :goto_42

    :catchall_10
    move-exception p0

    goto :goto_78

    :cond_12
    if-eqz p1, :cond_2d

    iput-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    const-string p1, "AS.DualA2dpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    iget-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    :goto_42
    iget-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",active:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p2}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",vol:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string p0, "AS.DualA2dpManager"

    const/4 p2, 0x0

    invoke-virtual {v1, p2, p0}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p1, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    monitor-exit v2

    return-void

    :goto_78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_8 .. :try_end_79} :catchall_10

    throw p0
.end method

.method public final setVolume(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_c

    const-string p0, "AS.DualA2dpManager"

    const-string/jumbo p1, "null device"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_c
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getValidIndex(I)I

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p2, :cond_25

    goto :goto_26

    :cond_25
    return v0

    :cond_26
    :goto_26
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->postSaveVolumeDB(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateMainVolume()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v0

    const/4 v1, -0x1

    :try_start_4
    iput v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    iget v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->MAX_VOLUME:I

    iput v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMinVolume:I

    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    iget-object v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    if-ge v3, v2, :cond_28

    iput v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_33

    :cond_28
    :goto_28
    iget v3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMinVolume:I

    if-le v3, v2, :cond_2e

    iput v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMinVolume:I

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_31
    monitor-exit v0

    return-void

    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_26

    throw p0
.end method

.method public final updateMainVolume(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getValidIndex(I)I

    move-result p1

    iget v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMinVolume:I

    if-ge p1, v0, :cond_a

    iput p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMinVolume:I

    :cond_a
    iget v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    if-le p1, v0, :cond_11

    iput p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->updateMainVolume()V

    return-void
.end method
