.class public abstract Lcom/android/server/media/SystemMediaRoute2Provider;
.super Lcom/android/server/media/MediaRoute2Provider;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mAudioReceiver:Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

.field public final mBluetoothRouteController:Lcom/android/server/media/BluetoothRouteController$NoOpBluetoothRouteController;

.field public final mContext:Landroid/content/Context;

.field public mDefaultRoute:Landroid/media/MediaRoute2Info;

.field public mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

.field public final mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

.field public final mHandler:Landroid/os/Handler;

.field public mMusicShareDeviceRoute:Landroid/media/MediaRoute2Info;

.field public volatile mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

.field public volatile mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

.field public final mRequestLock:Ljava/lang/Object;

.field public mScreenMirroringRoute:Landroid/media/MediaRoute2Info;

.field public mSelectedRouteId:Ljava/lang/String;

.field public mSystemSessionInfo:Landroid/media/RoutingSessionInfo;

.field public final mTransferLock:Ljava/lang/Object;

.field public final mUser:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/os/Looper;)V
    .locals 8

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/server/media/MediaRoute2Provider;-><init>(Landroid/content/ComponentName;Z)V

    new-instance p2, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

    invoke-direct {p2, p0}, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioReceiver:Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mRequestLock:Ljava/lang/Object;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mTransferLock:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mMusicShareDeviceRoute:Landroid/media/MediaRoute2Info;

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mScreenMirroringRoute:Landroid/media/MediaRoute2Info;

    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mUser:Landroid/os/UserHandle;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    const-string/jumbo p3, "audio"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    const-class v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    new-instance v0, Lcom/android/server/media/BluetoothRouteController$NoOpBluetoothRouteController;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBluetoothRouteController:Lcom/android/server/media/BluetoothRouteController$NoOpBluetoothRouteController;

    new-instance v0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/media/AudioManager;

    sget-object v1, Lcom/android/server/media/AudioRoutingUtils;->ATTRIBUTES_MEDIA:Landroid/media/AudioAttributes;

    invoke-static {}, Landroid/media/AudioManager;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/AudioProductStrategy;

    sget-object v3, Lcom/android/server/media/AudioRoutingUtils;->ATTRIBUTES_MEDIA:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v3}, Landroid/media/audiopolicy/AudioProductStrategy;->supportsAudioAttributes(Landroid/media/AudioAttributes;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_1
    move-object v6, p2

    :goto_0
    const-class v1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    :cond_2
    move-object v7, p2

    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    new-instance v2, Lcom/android/server/media/AudioManagerRouteController;

    move-object v3, p1

    move-object v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/media/AudioManagerRouteController;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Looper;Landroid/media/audiopolicy/AudioProductStrategy;Landroid/bluetooth/BluetoothAdapter;)V

    iget-object p1, v2, Lcom/android/server/media/AudioManagerRouteController;->mOnDeviceRouteChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v3, p1

    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object p1

    new-instance v2, Lcom/android/server/media/LegacyDeviceRouteController;

    invoke-direct {v2, v3, v4, p1, v0}, Lcom/android/server/media/LegacyDeviceRouteController;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/media/IAudioService;Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda0;)V

    :goto_1
    iput-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    return-void
.end method


# virtual methods
.method public final getDebugString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBluetoothRouteController:Lcom/android/server/media/BluetoothRouteController$NoOpBluetoothRouteController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s - package: %s, selected route id: %s, bluetooth impl: %s"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSessionForPackage(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/RoutingSessionInfo$Builder;

    iget-object p0, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/RoutingSessionInfo;

    invoke-direct {v1, p0}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    invoke-virtual {v1, p1}, Landroid/media/RoutingSessionInfo$Builder;->setClientPackageName(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract notifyGlobalSessionInfoUpdated()V
.end method

.method public abstract onSystemProviderRoutesChanged(Landroid/media/MediaRoute2ProviderInfo;)V
.end method

.method public abstract onSystemSessionInfoUpdated()V
.end method

.method public final prepareReleaseSession(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final releaseSession(JLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final reportPendingSessionRequestResultLockedIfNeeded(Landroid/media/RoutingSessionInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    iget-wide v0, v0, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mRequestId:J

    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    iget-object v2, v2, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTargetOriginalRouteId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const-string/jumbo v4, "MR2SystemProvider"

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Session creation success to route "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    iget-object v5, v5, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTargetOriginalRouteId:Ljava/lang/String;

    invoke-static {v2, v5, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    iget-object v2, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-virtual {v2, p0, v0, v1, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onSessionCreated(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBluetoothRouteController:Lcom/android/server/media/BluetoothRouteController$NoOpBluetoothRouteController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    iget-object v5, v5, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTargetOriginalRouteId:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Session creation waiting state to route "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    iget-object p0, p0, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTargetOriginalRouteId:Ljava/lang/String;

    invoke-static {p1, p0, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Session creation failed to route "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    iget-object v2, v2, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTargetOriginalRouteId:Ljava/lang/String;

    invoke-static {p1, v2, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    iget-object p1, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)V

    return-void
.end method

.method public final requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILandroid/os/UserHandle;Ljava/lang/String;)V
    .locals 9

    const-string v1, "DEFAULT_ROUTE"

    invoke-static {p4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1, p0, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onSessionCreated(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mRequestLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    iget-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    iget-wide v6, v6, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mRequestId:J

    const/4 v8, 0x0

    invoke-virtual {v2, p0, v6, v7, v8}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v2, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    const/4 v6, 0x0

    move-wide v3, p1

    move-object v5, p4

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v2 .. v8}, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;-><init>(JLjava/lang/String;ILandroid/os/UserHandle;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v5, "SYSTEM_SESSION"

    move-object v0, p0

    move-wide v1, p1

    move-object v6, p4

    move v7, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/SystemMediaRoute2Provider;->transferToRoute(JLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setRouteVolume(ILjava/lang/String;J)V
    .locals 0

    iget-object p3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    const/4 p2, 0x3

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public transferToRoute(JLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    iget-object p5, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {p5}, Lcom/android/server/media/DeviceRouteController;->getSelectedRoute()Landroid/media/MediaRoute2Info;

    move-result-object p5

    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object p5

    const-string v0, "DEFAULT_ROUTE"

    invoke-static {p6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v4, p5

    goto :goto_0

    :cond_0
    move-object v4, p6

    :goto_0
    iget-object p6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mTransferLock:Ljava/lang/Object;

    monitor-enter p6

    :try_start_0
    new-instance v1, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    move-wide v2, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;-><init>(JLjava/lang/String;ILandroid/os/UserHandle;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    monitor-exit p6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {p1}, Lcom/android/server/media/DeviceRouteController;->getAvailableRoutes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;

    invoke-direct {p2, v4}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    invoke-static {v4, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/android/server/media/DeviceRouteController;->transferTo(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBluetoothRouteController:Lcom/android/server/media/BluetoothRouteController$NoOpBluetoothRouteController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {p1, v4}, Lcom/android/server/media/DeviceRouteController;->transferTo(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBluetoothRouteController:Lcom/android/server/media/BluetoothRouteController$NoOpBluetoothRouteController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateSessionInfosIfNeeded()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifyGlobalSessionInfoUpdated()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit p6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateDiscoveryPreference(Ljava/util/Set;Landroid/media/RouteDiscoveryPreference;)V
    .locals 0

    return-void
.end method

.method public final updateProviderState()V
    .locals 3

    new-instance v0, Landroid/media/MediaRoute2ProviderInfo$Builder;

    invoke-direct {v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {v1}, Lcom/android/server/media/DeviceRouteController;->getAvailableRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    invoke-virtual {v0, v2}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mMusicShareDeviceRoute:Landroid/media/MediaRoute2Info;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    :cond_1
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mScreenMirroringRoute:Landroid/media/MediaRoute2Info;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    :cond_2
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBluetoothRouteController:Lcom/android/server/media/BluetoothRouteController$NoOpBluetoothRouteController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    invoke-virtual {v0, v2}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;->build()Landroid/media/MediaRoute2ProviderInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->onSystemProviderRoutesChanged(Landroid/media/MediaRoute2ProviderInfo;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Updating system provider info : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "MR2SystemProvider"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateSessionInfosIfNeeded()Z
    .locals 14

    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSystemSessionInfo:Landroid/media/RoutingSessionInfo;

    new-instance v2, Landroid/media/RoutingSessionInfo$Builder;

    const-string/jumbo v3, "SYSTEM_SESSION"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/RoutingSessionInfo$Builder;->setSystemSession(Z)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {v4}, Lcom/android/server/media/DeviceRouteController;->getSelectedRoute()Landroid/media/MediaRoute2Info;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBluetoothRouteController:Lcom/android/server/media/BluetoothRouteController$NoOpBluetoothRouteController;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    new-instance v6, Landroid/media/MediaRoute2Info$Builder;

    const-string v7, "DEFAULT_ROUTE"

    invoke-direct {v6, v7, v4}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    invoke-virtual {v6, v3}, Landroid/media/MediaRoute2Info$Builder;->setSystemRoute(Z)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/media/MediaRoute2Info$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    iget-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/media/RoutingSessionInfo$Builder;->addSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    iget-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {v6}, Lcom/android/server/media/DeviceRouteController;->getAvailableRoutes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MediaRoute2Info;

    invoke-virtual {v7}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_1
    iget-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBluetoothRouteController:Lcom/android/server/media/BluetoothRouteController$NoOpBluetoothRouteController;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MediaRoute2Info;

    invoke-virtual {v7}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    :goto_2
    if-ge v8, v6, :cond_3

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/media/RoutingSessionInfo$Builder;->addTransferableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v3, :cond_4

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getTransferReason()I

    move-result v8

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorPackageName()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Selected routes list should contain only 1 route id."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    move-object v9, v6

    move-object v10, v9

    move v8, v7

    :goto_3
    iget-object v11, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mTransferLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v12, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    iget-object v12, v12, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTargetOriginalRouteId:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-object v12, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    iget-object v12, v12, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTargetOriginalRouteId:Ljava/lang/String;

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest$$ExternalSyntheticLambda1;

    invoke-direct {v13, v12}, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v13}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    iget v8, v4, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTransferReason:I

    iget-object v4, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    iget-object v9, v4, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    iget-object v10, v4, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTransferInitiatorPackageName:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_6
    if-nez v5, :cond_7

    iput-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    :cond_7
    :goto_4
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2, v8}, Landroid/media/RoutingSessionInfo$Builder;->setTransferReason(I)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Landroid/media/RoutingSessionInfo$Builder;->setTransferInitiator(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    iget-object v4, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/media/RoutingSessionInfo$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mRequestLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0, v2}, Lcom/android/server/media/SystemMediaRoute2Provider;->reportPendingSessionRequestResultLockedIfNeeded(Landroid/media/RoutingSessionInfo;)V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    monitor-exit v0

    return v7

    :cond_8
    const-string/jumbo v1, "MR2SystemProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Updating system routing session info : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSystemSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->onSystemSessionInfoUpdated()V

    new-instance v1, Landroid/media/RoutingSessionInfo$Builder;

    const-string/jumbo v4, "SYSTEM_SESSION"

    const-string v5, ""

    invoke-direct {v1, v4, v5}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/media/RoutingSessionInfo$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/RoutingSessionInfo$Builder;->setSystemSession(Z)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v1

    const-string v4, "DEFAULT_ROUTE"

    invoke-virtual {v1, v4}, Landroid/media/RoutingSessionInfo$Builder;->addSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getTransferReason()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/media/RoutingSessionInfo$Builder;->setTransferReason(I)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/media/RoutingSessionInfo$Builder;->setTransferInitiator(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v3

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_5
    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0

    :goto_6
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public final updateVolume()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getVolume()I

    move-result v1

    if-eq v1, v0, :cond_0

    new-instance v1, Landroid/media/MediaRoute2Info$Builder;

    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    invoke-direct {v1, v2}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    invoke-virtual {v1, v0}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBluetoothRouteController:Lcom/android/server/media/BluetoothRouteController$NoOpBluetoothRouteController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {v1, v0}, Lcom/android/server/media/DeviceRouteController;->updateVolume(I)Z

    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateProviderState()V

    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->notifyProviderState()V

    return-void
.end method
