.class public final Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
.super Landroid/media/tv/ITvInputHardware$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mActiveConfig:Landroid/media/tv/TvStreamConfig;

.field public final mAudioListener:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;

.field public mAudioPatch:Landroid/media/AudioPatch;

.field public mAudioSink:Ljava/util/List;

.field public mAudioSource:Landroid/media/AudioDevicePort;

.field public mCommittedVolume:F

.field public mDesiredChannelMask:I

.field public mDesiredFormat:I

.field public mDesiredSamplingRate:I

.field public final mImplLock:Ljava/lang/Object;

.field public final mInfo:Landroid/media/tv/TvInputHardwareInfo;

.field public mOverrideAudioAddress:Ljava/lang/String;

.field public mOverrideAudioType:I

.field public mReleased:Z

.field public mSourceVolume:F

.field public final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method public static -$$Nest$mstartCapture(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    monitor-exit v0

    return v2

    :catchall_a
    move-exception p0

    goto :goto_2f

    :cond_c
    if-eqz p1, :cond_2d

    if-nez p2, :cond_11

    goto :goto_2d

    :cond_11
    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getType()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1a

    monitor-exit v0

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {p0}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result p0

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/tv/TvInputHal;->addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I

    move-result p0

    if-nez p0, :cond_2b

    const/4 v2, 0x1

    :cond_2b
    monitor-exit v0

    return v2

    :cond_2d
    :goto_2d
    monitor-exit v0

    return v2

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_a

    throw p0
.end method

.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    .registers 8

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/media/tv/ITvInputHardware$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;-><init>(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    const/high16 v4, -0x40800000  # -1.0f

    iput v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    iput-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    iget-object p1, p1, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    invoke-virtual {p2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result p1

    if-eqz p1, :cond_5c

    monitor-enter v0

    :try_start_44
    invoke-virtual {p2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result p1

    invoke-virtual {p2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioSinkFromAudioPolicy(Ljava/util/List;)V

    monitor-exit v0

    return-void

    :catchall_59
    move-exception p0

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_44 .. :try_end_5b} :catchall_59

    throw p0

    :cond_5c
    return-void
.end method


# virtual methods
.method public final findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result p0

    if-eqz p0, :cond_14

    return-object v0

    :cond_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v2, 0x0

    :cond_19
    if-ge v2, p0, :cond_34

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/media/AudioDevicePort;

    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    if-ne v4, p1, :cond_19

    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    return-object v3

    :cond_34
    return-object v0
.end method

.method public final findAudioSinkFromAudioPolicy(Ljava/util/List;)V
    .registers 7

    invoke-interface {p1}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_40

    :cond_13
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_21
    :goto_21
    if-ge v2, v1, :cond_40

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/media/AudioDevicePort;

    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    and-int/2addr v4, p0

    if-eqz v4, :cond_21

    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioSystem;->isInputDevice(I)Z

    move-result v4

    if-nez v4, :cond_21

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_40
    :goto_40
    return-void
.end method

.method public final overrideAudioSink(ILjava/lang/String;III)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    iput p4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    iput p5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final release()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v1, :cond_1d

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v2, v2, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_22

    :cond_1d
    :goto_1d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_1b

    throw p0
.end method

.method public final setStreamVolume(F)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    if-nez v1, :cond_10

    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    goto :goto_18

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Device already released."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_e

    throw p0
.end method

.method public final setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 10

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    if-nez v1, :cond_6a

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_27

    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object p1, p1, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {p2}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result p2

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {p1, p2, v4}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result p1

    iput-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    goto :goto_61

    :catchall_23
    move-exception p0

    goto :goto_72

    :cond_25
    monitor-exit v0

    return v1

    :cond_27
    if-nez p2, :cond_2b

    monitor-exit v0

    return v3

    :cond_2b
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-eqz v4, :cond_4a

    invoke-virtual {p2, v4}, Landroid/media/tv/TvStreamConfig;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v4, v4, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v5}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result v4

    if-eqz v4, :cond_4b

    iput-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    goto :goto_4b

    :cond_4a
    move v4, v3

    :cond_4b
    :goto_4b
    if-nez v4, :cond_60

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v2, v2, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v4}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v4

    invoke-virtual {v2, v4, p1, p2}, Lcom/android/server/tv/TvInputHal;->addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I

    move-result p1

    if-nez p1, :cond_61

    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    goto :goto_61

    :cond_60
    move p1, v4

    :cond_61
    :goto_61
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    if-nez p1, :cond_67

    goto :goto_68

    :cond_67
    move v1, v3

    :goto_68
    monitor-exit v0

    return v1

    :cond_6a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Device already released."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_3 .. :try_end_73} :catchall_23

    throw p0
.end method

.method public final updateAudioConfigLocked()V
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v1}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_e

    move v1, v3

    goto :goto_4a

    :cond_e
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    iget v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    if-nez v5, :cond_1f

    invoke-virtual {v0, v4}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioSinkFromAudioPolicy(Ljava/util/List;)V

    goto :goto_2e

    :cond_1f
    iget-object v4, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object v4

    if-eqz v4, :cond_2e

    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    :goto_2e
    iget-object v4, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_40

    move v1, v2

    goto :goto_4a

    :cond_40
    iget-object v4, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    :goto_4a
    iget-object v4, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v4}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v4

    if-nez v4, :cond_54

    :cond_52
    move v4, v3

    goto :goto_75

    :cond_54
    iget-object v4, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v5}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v5

    iget-object v6, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v6}, Landroid/media/tv/TvInputHardwareInfo;->getAudioAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    if-nez v5, :cond_6e

    if-eqz v4, :cond_52

    :goto_6c
    move v4, v2

    goto :goto_75

    :cond_6e
    invoke-virtual {v5, v4}, Landroid/media/AudioDevicePort;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    goto :goto_6c

    :goto_75
    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    if-eqz v5, :cond_277

    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_277

    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-nez v5, :cond_89

    goto/16 :goto_277

    :cond_89
    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v7, v5, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v7

    iput v7, v5, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    iget-object v7, v5, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    iput v7, v5, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    iget v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    iget-object v7, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget v8, v7, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    int-to-float v8, v8

    iget v7, v7, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    int-to-float v7, v7

    div-float/2addr v8, v7

    mul-float/2addr v8, v5

    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_111

    iget v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    cmpl-float v5, v8, v5

    if-eqz v5, :cond_111

    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    move-result-object v5

    array-length v7, v5

    move v9, v3

    :goto_bf
    if-ge v9, v7, :cond_ce

    aget-object v10, v5, v9

    invoke-virtual {v10}, Landroid/media/AudioGain;->mode()I

    move-result v11

    and-int/2addr v11, v2

    if-eqz v11, :cond_cb

    goto :goto_cf

    :cond_cb
    add-int/lit8 v9, v9, 0x1

    goto :goto_bf

    :cond_ce
    const/4 v10, 0x0

    :goto_cf
    if-eqz v10, :cond_108

    invoke-virtual {v10}, Landroid/media/AudioGain;->maxValue()I

    move-result v5

    invoke-virtual {v10}, Landroid/media/AudioGain;->minValue()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-virtual {v10}, Landroid/media/AudioGain;->stepValue()I

    move-result v7

    div-int/2addr v5, v7

    invoke-virtual {v10}, Landroid/media/AudioGain;->minValue()I

    move-result v7

    const/high16 v9, 0x3f800000  # 1.0f

    cmpg-float v9, v8, v9

    if-gez v9, :cond_f7

    invoke-virtual {v10}, Landroid/media/AudioGain;->stepValue()I

    move-result v9

    int-to-float v5, v5

    mul-float/2addr v5, v8

    float-to-double v11, v5

    const-wide/high16 v13, 0x3fe0000000000000L  # 0.5

    add-double/2addr v11, v13

    double-to-int v5, v11

    mul-int/2addr v9, v5

    add-int/2addr v9, v7

    goto :goto_fb

    :cond_f7
    invoke-virtual {v10}, Landroid/media/AudioGain;->maxValue()I

    move-result v9

    :goto_fb
    filled-new-array {v9}, [I

    move-result-object v5

    invoke-virtual {v10}, Landroid/media/AudioGain;->channelMask()I

    move-result v7

    invoke-virtual {v10, v2, v7, v5, v3}, Landroid/media/AudioGain;->buildConfig(II[II)Landroid/media/AudioGainConfig;

    move-result-object v5

    goto :goto_112

    :cond_108
    const-string/jumbo v5, "TvInputHardwareManager"

    const-string/jumbo v7, "No audio source gain with MODE_JOINT support exists."

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_111
    const/4 v5, 0x0

    :goto_112
    iget-object v7, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-array v10, v2, [Landroid/media/AudioPatch;

    iget-object v11, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    aput-object v11, v10, v3

    if-nez v4, :cond_12c

    if-nez v1, :cond_12c

    if-nez v11, :cond_12a

    goto :goto_12c

    :cond_12a
    move v11, v3

    goto :goto_12d

    :cond_12c
    :goto_12c
    move v11, v2

    :goto_12d
    iget-object v12, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v3

    :goto_136
    if-ge v14, v13, :cond_1be

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Landroid/media/AudioDevicePort;

    invoke-virtual {v15}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v16

    move/from16 v17, v3

    iget v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    iget v6, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    iget v2, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    if-eqz v16, :cond_164

    if-nez v3, :cond_154

    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v3

    :cond_154
    move/from16 v19, v1

    const/4 v1, 0x1

    if-ne v6, v1, :cond_15d

    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v6

    :cond_15d
    if-ne v2, v1, :cond_166

    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioPortConfig;->format()I

    move-result v2

    goto :goto_166

    :cond_164
    move/from16 v19, v1

    :cond_166
    :goto_166
    if-eqz v16, :cond_17e

    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v1

    if-ne v1, v3, :cond_17e

    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v1

    if-ne v1, v6, :cond_17e

    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioPortConfig;->format()I

    move-result v1

    if-eq v1, v2, :cond_17b

    goto :goto_17e

    :cond_17b
    :goto_17b
    move-object/from16 v1, v16

    goto :goto_1b4

    :cond_17e
    :goto_17e
    invoke-virtual {v15}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$smintArrayContains(I[I)Z

    move-result v1

    if-nez v1, :cond_195

    invoke-virtual {v15}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_195

    invoke-virtual {v15}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v1

    aget v3, v1, v17

    :cond_195
    invoke-virtual {v15}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v1

    invoke-static {v6, v1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$smintArrayContains(I[I)Z

    move-result v1

    if-nez v1, :cond_1a1

    const/4 v1, 0x1

    goto :goto_1a2

    :cond_1a1
    move v1, v6

    :goto_1a2
    invoke-virtual {v15}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$smintArrayContains(I[I)Z

    move-result v6

    if-nez v6, :cond_1ad

    const/4 v2, 0x1

    :cond_1ad
    const/4 v6, 0x0

    invoke-virtual {v15, v3, v1, v2, v6}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v16

    const/4 v11, 0x1

    goto :goto_17b

    :goto_1b4
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v3, v17

    move/from16 v1, v19

    const/4 v2, 0x1

    goto/16 :goto_136

    :cond_1be
    move/from16 v19, v1

    move v1, v3

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPortConfig;

    if-eqz v7, :cond_1cb

    if-eqz v5, :cond_231

    :cond_1cb
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v1

    invoke-virtual {v2}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v3

    invoke-static {v3, v1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$smintArrayContains(I[I)Z

    move-result v1

    if-eqz v1, :cond_1e0

    invoke-virtual {v2}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v1

    goto :goto_1f5

    :cond_1e0
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1f4

    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v1

    const/16 v17, 0x0

    aget v1, v1, v17

    goto :goto_1f5

    :cond_1f4
    const/4 v1, 0x0

    :goto_1f5
    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v3

    array-length v6, v3

    const/4 v7, 0x0

    :goto_1fd
    if-ge v7, v6, :cond_213

    aget v11, v3, v7

    invoke-virtual {v2}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v12

    invoke-static {v12}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v12

    invoke-static {v11}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    move-result v13

    if-ne v12, v13, :cond_210

    goto :goto_214

    :cond_210
    add-int/lit8 v7, v7, 0x1

    goto :goto_1fd

    :cond_213
    const/4 v11, 0x1

    :goto_214
    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v3

    invoke-virtual {v2}, Landroid/media/AudioPortConfig;->format()I

    move-result v6

    invoke-static {v6, v3}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$smintArrayContains(I[I)Z

    move-result v3

    if-eqz v3, :cond_229

    invoke-virtual {v2}, Landroid/media/AudioPortConfig;->format()I

    move-result v2

    goto :goto_22a

    :cond_229
    const/4 v2, 0x1

    :goto_22a
    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v3, v1, v11, v2, v5}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v7

    const/4 v11, 0x1

    :cond_231
    if-eqz v11, :cond_26b

    iput v8, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v1, :cond_23d

    if-nez v19, :cond_23d

    if-eqz v4, :cond_26b

    :cond_23d
    if-eqz v1, :cond_24d

    iget-object v2, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v2, v2, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput-object v18, v10, v17

    goto :goto_24f

    :cond_24d
    const/16 v17, 0x0

    :goto_24f
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/media/AudioPortConfig;

    aput-object v7, v1, v17

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/media/AudioPortConfig;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/AudioPortConfig;

    invoke-static {v10, v1, v2}, Landroid/media/AudioManager;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    aget-object v1, v10, v17

    iput-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    :cond_26b
    if-eqz v5, :cond_285

    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-static {v0, v5}, Landroid/media/AudioManager;->setAudioPortGain(Landroid/media/AudioPort;Landroid/media/AudioGainConfig;)I

    return-void

    :cond_277
    :goto_277
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v1, :cond_285

    iget-object v2, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v2, v2, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    :cond_285
    return-void
.end method
