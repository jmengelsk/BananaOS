.class public final Lcom/android/server/media/AudioManagerRouteController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/media/DeviceRouteController;


# static fields
.field public static final AUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO:Landroid/util/SparseArray;

.field public static final MEDIA_USAGE_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field public final mAudioDeviceCallback:Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

.field public final mBuiltInSpeakerSuitabilityStatus:I

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mOnDeviceRouteChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mOnDevicesForAttributesChangedListener:Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;

.field public final mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

.field public mSelectedRoute:Landroid/media/MediaRoute2Info;

.field public final mStrategyForMedia:Landroid/media/audiopolicy/AudioProductStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/AudioManagerRouteController;->MEDIA_USAGE_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/media/AudioManagerRouteController;->AUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string/jumbo v2, "ROUTE_ID_BUILTIN_SPEAKER"

    const v3, 0x1040460

    const/4 v4, 0x2

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/4 v2, 0x3

    const-string/jumbo v3, "ROUTE_ID_WIRED_HEADSET"

    const v4, 0x1040463

    invoke-direct {v1, v2, v4, v3}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/4 v2, 0x4

    const-string/jumbo v3, "ROUTE_ID_WIRED_HEADPHONES"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/16 v2, 0x8

    const-string/jumbo v3, "ROUTE_ID_BLUETOOTH_A2DP"

    const v4, 0x1040259

    invoke-direct {v1, v2, v4, v3}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/16 v2, 0x9

    const-string/jumbo v3, "ROUTE_ID_HDMI"

    const v5, 0x1040462

    invoke-direct {v1, v2, v5, v3}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/16 v2, 0xd

    const-string/jumbo v3, "ROUTE_ID_DOCK"

    const v6, 0x1040461

    invoke-direct {v1, v2, v6, v3}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/16 v3, 0xb

    const-string/jumbo v7, "ROUTE_ID_USB_DEVICE"

    const v8, 0x1040464

    invoke-direct {v1, v3, v8, v7}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/16 v3, 0x16

    const-string/jumbo v7, "ROUTE_ID_USB_HEADSET"

    invoke-direct {v1, v3, v8, v7}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/16 v3, 0xa

    const-string/jumbo v7, "ROUTE_ID_HDMI_ARC"

    invoke-direct {v1, v3, v5, v7}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/16 v3, 0x1d

    const-string/jumbo v7, "ROUTE_ID_HDMI_EARC"

    invoke-direct {v1, v3, v5, v7}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/16 v3, 0x17

    const-string/jumbo v7, "ROUTE_ID_HEARING_AID"

    invoke-direct {v1, v3, v4, v7}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/16 v3, 0x1a

    const-string/jumbo v7, "ROUTE_ID_BLE_HEADSET"

    invoke-direct {v1, v3, v4, v7}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string/jumbo v7, "ROUTE_ID_BLE_SPEAKER"

    invoke-direct {v1, v3, v4, v7}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(IILjava/lang/String;)V

    const/16 v7, 0x1b

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string/jumbo v7, "ROUTE_ID_BLE_BROADCAST"

    invoke-direct {v1, v3, v4, v7}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(IILjava/lang/String;)V

    const/16 v3, 0x1e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/4 v3, 0x6

    const-string/jumbo v4, "ROUTE_ID_LINE_DIGITAL"

    invoke-direct {v1, v3, v5, v4}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/4 v3, 0x5

    const-string/jumbo v4, "ROUTE_ID_LINE_ANALOG"

    invoke-direct {v1, v3, v5, v4}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/16 v3, 0x13

    const-string/jumbo v4, "ROUTE_ID_AUX_LINE"

    invoke-direct {v1, v3, v5, v4}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string/jumbo v3, "ROUTE_ID_DOCK_ANALOG"

    invoke-direct {v1, v2, v6, v3}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x1f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/16 v2, 0x20

    const-string/jumbo v3, "ROUTE_ID_MULTICHANNEL_SPEAKER_GROUP"

    invoke-direct {v1, v2, v5, v3}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Looper;Landroid/media/audiopolicy/AudioProductStrategy;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mOnDeviceRouteChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;

    invoke-direct {v0, p0}, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    iput-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioDeviceCallback:Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;

    new-instance v0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    iput-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mOnDevicesForAttributesChangedListener:Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/media/AudioManagerRouteController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    new-instance v3, Landroid/os/Handler;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v3, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/server/media/AudioManagerRouteController;->mStrategyForMedia:Landroid/media/audiopolicy/AudioProductStrategy;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e00fe

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    if-eqz p2, :cond_0

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput p2, p0, Lcom/android/server/media/AudioManagerRouteController;->mBuiltInSpeakerSuitabilityStatus:I

    new-instance v1, Lcom/android/server/media/BluetoothDeviceRoutesManager;

    new-instance v6, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    new-instance v5, Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-direct {v5, p1, p5}, Lcom/android/server/media/BluetoothProfileMonitor;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V

    move-object v2, p1

    move-object v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/media/BluetoothDeviceRoutesManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/bluetooth/BluetoothAdapter;Lcom/android/server/media/BluetoothProfileMonitor;Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;)V

    iput-object v1, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutes()V

    return-void
.end method


# virtual methods
.method public final createMediaRoute2Info(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;)Landroid/media/MediaRoute2Info;
    .locals 1

    sget-object v0, Lcom/android/server/media/AudioManagerRouteController;->AUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p3, p0, Lcom/android/server/media/AudioManagerRouteController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget v0, p2, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mNameResource:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p2, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mDefaultRouteId:Ljava/lang/String;

    :cond_2
    new-instance v0, Landroid/media/MediaRoute2Info$Builder;

    invoke-direct {v0, p1, p3}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget p1, p2, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mMediaRoute2InfoType:I

    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/media/MediaRoute2Info$Builder;->setAddress(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/media/MediaRoute2Info$Builder;->setSystemRoute(Z)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p2

    const-string/jumbo p3, "android.media.route.feature.LIVE_AUDIO"

    invoke-virtual {p2, p3}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p2

    const-string/jumbo p3, "android.media.route.feature.LOCAL_PLAYBACK"

    invoke-virtual {p2, p3}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p2

    if-ne p1, p3, :cond_3

    iget p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mBuiltInSpeakerSuitabilityStatus:I

    invoke-virtual {p2, p0}, Landroid/media/MediaRoute2Info$Builder;->setSuitabilityStatus(I)Landroid/media/MediaRoute2Info$Builder;

    :cond_3
    invoke-virtual {p2}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object p0

    return-object p0
.end method

.method public final createMediaRoute2InfoFromAudioDeviceInfo(Landroid/media/AudioDeviceInfo;)Landroid/media/MediaRoute2Info;
    .locals 7

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    monitor-enter v2

    :try_start_0
    iget-object v3, v2, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mAddressToBondedDevice:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v2

    const/4 v2, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    monitor-enter v3

    :try_start_1
    iget-object v1, v3, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mAddressToBondedDevice:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_2

    iget-object v4, v3, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    const/16 v5, 0x16

    invoke-virtual {v4, v1, v5}, Lcom/android/server/media/BluetoothProfileMonitor;->isProfileSupported(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v4, 0x1a

    goto :goto_0

    :cond_0
    const/16 v5, 0x15

    invoke-virtual {v4, v1, v5}, Lcom/android/server/media/BluetoothProfileMonitor;->isProfileSupported(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x17

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v3, v1, v4}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->getRouteIdForType(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_1
    monitor-exit v3

    iget-object v4, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    monitor-enter v4

    :try_start_2
    iget-object v3, v4, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mAddressToBondedDevice:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, v4, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    monitor-exit v4

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :goto_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_4
    :goto_3
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p1

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/android/server/media/AudioManagerRouteController;->createMediaRoute2Info(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    move-result-object p0

    return-object p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public final declared-synchronized getAvailableRoutes()Ljava/util/List;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getSelectedRoute()Landroid/media/MediaRoute2Info;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mSelectedRoute:Landroid/media/MediaRoute2Info;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final rebuildAvailableRoutes()V
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    sget-object v2, Lcom/android/server/media/AudioManagerRouteController;->MEDIA_USAGE_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "MR2SystemProvider"

    const-string/jumbo v2, "Unexpected empty list of output devices for media. Using built-in speakers."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    const-string/jumbo v2, "MR2SystemProvider"

    const-string v6, "AudioManager.getDevicesForAttributes returned more than one element. Using the first one."

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    :goto_0
    iget-object v2, v1, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    iget-object v6, v1, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    monitor-enter v6

    :try_start_0
    iget-object v9, v6, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothRoutes:Ljava/util/Map;

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;

    iget-object v11, v10, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v11}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v10, v10, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, v1, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    iget-object v9, v1, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v8

    iget-object v9, v1, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v9

    monitor-enter p0

    :try_start_1
    iget-object v10, v1, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    array-length v10, v2

    const/4 v11, 0x0

    move v12, v3

    move-object v13, v11

    :goto_2
    if-ge v12, v10, :cond_6

    aget-object v14, v2, v12

    invoke-virtual {v1, v14}, Lcom/android/server/media/AudioManagerRouteController;->createMediaRoute2InfoFromAudioDeviceInfo(Landroid/media/AudioDeviceInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v15

    if-eqz v15, :cond_4

    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v14

    move/from16 v16, v4

    new-instance v4, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    invoke-direct {v4, v15, v14, v3}, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;-><init>(Landroid/media/MediaRoute2Info;IZ)V

    iget-object v3, v1, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    invoke-virtual {v15}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v15

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v0, v14, :cond_5

    move-object v13, v4

    goto :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    :cond_4
    move/from16 v16, v4

    :cond_5
    :goto_3
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v16

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    move/from16 v16, v4

    iget-object v3, v1, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "MR2SystemProvider"

    const-string v4, "Ended up with an empty list of routes. Creating a placeholder route."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v11, v5, v11, v11}, Lcom/android/server/media/AudioManagerRouteController;->createMediaRoute2Info(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    move-result-object v3

    new-instance v4, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    const/4 v10, 0x0

    invoke-direct {v4, v3, v5, v10}, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;-><init>(Landroid/media/MediaRoute2Info;IZ)V

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-nez v13, :cond_8

    const-string/jumbo v3, "MR2SystemProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not map this selected device attribute type to an available route: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Available types: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    :cond_8
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/media/MediaRoute2Info$Builder;

    iget-object v2, v13, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    invoke-direct {v0, v2}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    xor-int/lit8 v2, v9, 0x1

    invoke-virtual {v0, v2}, Landroid/media/MediaRoute2Info$Builder;->setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/media/MediaRoute2Info$Builder;->setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v0

    new-instance v2, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    iget v3, v13, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mAudioDeviceInfoType:I

    iget-boolean v4, v13, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mCorrespondsToInactiveBluetoothRoute:Z

    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;-><init>(Landroid/media/MediaRoute2Info;IZ)V

    iget-object v3, v1, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    iget-object v4, v13, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v1, Lcom/android/server/media/AudioManagerRouteController;->mSelectedRoute:Landroid/media/MediaRoute2Info;

    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_5
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final rebuildAvailableRoutesAndNotify()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutes()V

    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mOnDeviceRouteChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda0;

    iget-object v0, v0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    iget-object v1, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda4;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final start(Landroid/os/UserHandle;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    iget-object v2, v1, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    iget-object v3, v2, Lcom/android/server/media/BluetoothProfileMonitor;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v4, v2, Lcom/android/server/media/BluetoothProfileMonitor;->mContext:Landroid/content/Context;

    iget-object v5, v2, Lcom/android/server/media/BluetoothProfileMonitor;->mProfileListener:Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    iget-object v3, v2, Lcom/android/server/media/BluetoothProfileMonitor;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v4, v2, Lcom/android/server/media/BluetoothProfileMonitor;->mContext:Landroid/content/Context;

    const/16 v6, 0x15

    invoke-virtual {v3, v4, v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    iget-object v3, v2, Lcom/android/server/media/BluetoothProfileMonitor;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, v2, Lcom/android/server/media/BluetoothProfileMonitor;->mContext:Landroid/content/Context;

    const/16 v4, 0x16

    invoke-virtual {v3, v2, v5, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mAdapterStateChangedReceiver:Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    const-string/jumbo v3, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    const-string/jumbo v4, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    const-string/jumbo v5, "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

    const-string/jumbo v6, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v15

    iget-object v12, v1, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mDeviceStateChangedReceiver:Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v14, p1

    invoke-virtual/range {v12 .. v17}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->updateBluetoothRoutes()V

    iget-object v1, v0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, v0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/android/server/media/AudioManagerRouteController;->mAudioDeviceCallback:Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;

    invoke-virtual {v1, v3, v2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    iget-object v1, v0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    sget-object v3, Lcom/android/server/media/AudioRoutingUtils;->ATTRIBUTES_MEDIA:Landroid/media/AudioAttributes;

    new-instance v4, Landroid/os/HandlerExecutor;

    invoke-direct {v4, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v0, v0, Lcom/android/server/media/AudioManagerRouteController;->mOnDevicesForAttributesChangedListener:Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;

    invoke-virtual {v1, v3, v4, v0}, Landroid/media/AudioManager;->addOnDevicesForAttributesChangedListener(Landroid/media/AudioAttributes;Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;)V

    return-void
.end method

.method public final stop()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/media/AudioManagerRouteController;->mOnDevicesForAttributesChangedListener:Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->removeOnDevicesForAttributesChangedListener(Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;)V

    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioDeviceCallback:Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    iget-object v1, v0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mAdapterStateChangedReceiver:Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, v0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mDeviceStateChangedReceiver:Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final transferTo(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const-string/jumbo p0, "MR2SystemProvider"

    const-string/jumbo p1, "Unexpected call to AudioPoliciesDeviceRouteController#transferTo(null)"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const-string/jumbo p0, "MR2SystemProvider"

    const-string/jumbo v0, "transferTo: Ignoring transfer request to unknown route id : "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v1, v0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mCorrespondsToInactiveBluetoothRoute:Z

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getAddress()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda8;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/media/AudioManagerRouteController;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/media/AudioDeviceAttributes;

    iget v0, v0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mAudioDeviceInfoType:I

    const-string v2, ""

    const/4 v3, 0x2

    invoke-direct {v1, v3, v0, v2}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    new-instance v0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda8;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/media/AudioManagerRouteController;Ljava/lang/Object;I)V

    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/media/AudioManagerRouteController;Ljava/lang/Runnable;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final updateVolume(I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutesAndNotify()V

    const/4 p0, 0x1

    return p0
.end method
