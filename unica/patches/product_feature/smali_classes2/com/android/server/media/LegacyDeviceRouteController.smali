.class public final Lcom/android/server/media/LegacyDeviceRouteController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/media/DeviceRouteController;


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mBuiltInSpeakerSuitabilityStatus:I

.field public final mContext:Landroid/content/Context;

.field public mDeviceRoute:Landroid/media/MediaRoute2Info;

.field public mDeviceVolume:I

.field public final mOnDeviceRouteChangedListener:Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/media/IAudioService;Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda0;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;

    invoke-direct {v0, p0}, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;-><init>(Lcom/android/server/media/LegacyDeviceRouteController;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mOnDeviceRouteChangedListener:Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda0;

    iput-object p2, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e00fe

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    if-eqz p1, :cond_2b

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2b

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2b

    const/4 p1, 0x0

    :cond_2b
    iput p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mBuiltInSpeakerSuitabilityStatus:I

    :try_start_2d
    invoke-interface {p3, v0}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object p1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_31} :catch_32

    goto :goto_3b

    :catch_32
    move-exception p1

    const-string p2, "LDeviceRouteController"

    const-string p3, "Cannot connect to audio service to start listen to routes"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_3b
    invoke-virtual {p0, p1}, Lcom/android/server/media/LegacyDeviceRouteController;->createRouteFromAudioInfo(Landroid/media/AudioRoutesInfo;)Landroid/media/MediaRoute2Info;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    return-void
.end method


# virtual methods
.method public final createRouteFromAudioInfo(Landroid/media/AudioRoutesInfo;)Landroid/media/MediaRoute2Info;
    .registers 8

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eqz p1, :cond_33

    iget p1, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v2, p1, 0x2

    const v3, 0x1040463

    if-eqz v2, :cond_f

    const/4 p1, 0x4

    goto :goto_37

    :cond_f
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_15

    move p1, v0

    goto :goto_37

    :cond_15
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_1f

    const/16 p1, 0xd

    const v3, 0x1040461

    goto :goto_37

    :cond_1f
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_29

    const/16 p1, 0x9

    const v3, 0x1040462

    goto :goto_37

    :cond_29
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_33

    const/16 p1, 0xb

    const v3, 0x1040464

    goto :goto_37

    :cond_33
    const v3, 0x1040460

    move p1, v1

    :goto_37
    monitor-enter p0

    :try_start_38
    new-instance v2, Landroid/media/MediaRoute2Info$Builder;

    const-string v4, "DEVICE_ROUTE"

    iget-object v5, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRoute2Info$Builder;->setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceVolume:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/media/MediaRoute2Info$Builder;->setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    const-string/jumbo v2, "android.media.route.feature.LIVE_AUDIO"

    invoke-virtual {v0, v2}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    const-string/jumbo v2, "android.media.route.feature.LIVE_VIDEO"

    invoke-virtual {v0, v2}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    const-string/jumbo v2, "android.media.route.feature.LOCAL_PLAYBACK"

    invoke-virtual {v0, v2}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    if-ne p1, v1, :cond_90

    iget p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mBuiltInSpeakerSuitabilityStatus:I

    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2Info$Builder;->setSuitabilityStatus(I)Landroid/media/MediaRoute2Info$Builder;

    goto :goto_90

    :catchall_8e
    move-exception p1

    goto :goto_96

    :cond_90
    :goto_90
    invoke-virtual {v0}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :goto_96
    monitor-exit p0
    :try_end_97
    .catchall {:try_start_38 .. :try_end_97} :catchall_8e

    throw p1
.end method

.method public final declared-synchronized getAvailableRoutes()Ljava/util/List;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public final declared-synchronized getSelectedRoute()Landroid/media/MediaRoute2Info;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final start(Landroid/os/UserHandle;)V
    .registers 2

    return-void
.end method

.method public final stop()V
    .registers 1

    return-void
.end method

.method public final declared-synchronized transferTo(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized updateVolume(I)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceVolume:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    if-ne v0, p1, :cond_8

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_8
    :try_start_8
    iput p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceVolume:I

    new-instance v0, Landroid/media/MediaRoute2Info$Builder;

    iget-object v1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    invoke-direct {v0, v1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1e

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method
