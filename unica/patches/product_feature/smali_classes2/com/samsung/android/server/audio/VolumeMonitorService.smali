.class public final Lcom/samsung/android/server/audio/VolumeMonitorService;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final authority:Landroid/net/Uri;

.field public static sInstance:Lcom/samsung/android/server/audio/VolumeMonitorService;


# instance fields
.field public mAvrcpAbsVolSupported:Z

.field public mBluetoothVolumeIndex:I

.field public final mContext:Landroid/content/Context;

.field public mEnabled:Z

.field public mPlaybackActivityMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

.field public mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

.field public mState:I

.field public final mStateLock:Ljava/lang/Object;

.field public mVolumeHandler:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;

.field public mVolumeMonitorThread:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "content://com.sec.android.app.volumemonitorprovider.VolumeMonitorProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/audio/VolumeMonitorService;->authority:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mStateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeMonitorThread:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iput-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mBluetoothVolumeIndex:I

    iput-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mPlaybackActivityMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    iput-boolean v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mAvrcpAbsVolSupported:Z

    iput v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mState:I

    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/VolumeMonitorService;
    .registers 3

    const-class v0, Lcom/samsung/android/server/audio/VolumeMonitorService;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/server/audio/VolumeMonitorService;->sInstance:Lcom/samsung/android/server/audio/VolumeMonitorService;

    if-nez v1, :cond_11

    new-instance v1, Lcom/samsung/android/server/audio/VolumeMonitorService;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/server/audio/VolumeMonitorService;->sInstance:Lcom/samsung/android/server/audio/VolumeMonitorService;

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_15

    :cond_11
    :goto_11
    sget-object p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->sInstance:Lcom/samsung/android/server/audio/VolumeMonitorService;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object p0

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw p0
.end method


# virtual methods
.method public final getUserContext()Landroid/content/Context;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final initLocked(Z)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    if-nez v0, :cond_26

    const/4 v0, 0x0

    :try_start_5
    new-instance v1, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    const/4 v2, -0x3

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;-><init>(II)V

    iput-object v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_26

    :catch_e
    move-exception p1

    const-string v1, "AS.VolumeMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to init"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    return v0

    :cond_26
    :goto_26
    if-eqz p1, :cond_4d

    iget-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeMonitorThread:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    if-nez p1, :cond_4d

    new-instance p1, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;-><init>(Lcom/samsung/android/server/audio/VolumeMonitorService;)V

    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeMonitorThread:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    monitor-enter p0

    :goto_37
    :try_start_37
    iget-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_3f

    if-nez p1, :cond_49

    :try_start_3b
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3e} :catch_41
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_37

    :catchall_3f
    move-exception p1

    goto :goto_4b

    :catch_41
    :try_start_41
    const-string p1, "AS.VolumeMonitor"

    const-string v0, "Interrupted while waiting on volume handler."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    :cond_49
    monitor-exit p0

    goto :goto_4d

    :goto_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_3f

    throw p1

    :cond_4d
    :goto_4d
    const/4 p0, 0x1

    return p0
.end method

.method public final isMusicPlaying()Z
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mPlaybackActivityMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    if-eqz p0, :cond_2c

    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    invoke-static {v1}, Lcom/samsung/android/server/audio/utils/PlaybackUtils;->isMusicActive(Landroid/media/AudioPlaybackConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_11

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_26
    move-exception p0

    goto :goto_2a

    :cond_28
    monitor-exit v0

    goto :goto_2c

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_26

    throw p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    return p0
.end method

.method public final resetByDataClear()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    goto :goto_17

    :cond_9
    invoke-virtual {v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->resetData()V

    new-instance v0, Lcom/samsung/android/server/audio/VolumeMonitorService$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/server/audio/VolumeMonitorService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    monitor-exit p0

    return-void

    :goto_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_7

    throw v0
.end method

.method public final setVolumeMonitorOnOff(Z)V
    .registers 3

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_VOLUME_COUNTRY:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR_PHASE_3:Z

    if-eqz v0, :cond_9

    const/4 p1, 0x1

    :cond_9
    monitor-enter p0

    :try_start_a
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    if-ne v0, p1, :cond_12

    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    goto :goto_4b

    :cond_12
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/VolumeMonitorService;->initLocked(Z)Z

    move-result v0

    if-nez v0, :cond_1a

    monitor-exit p0

    return-void

    :cond_1a
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_10

    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->onOff(Z)V

    if-eqz p1, :cond_2b

    const-string/jumbo v0, "l_volume_monitor_onoff=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_31

    :cond_2b
    const-string/jumbo v0, "l_volume_monitor_onoff=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_31
    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    iget v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mBluetoothVolumeIndex:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setBluetoothVolume(I)V

    iget-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mAvrcpAbsVolSupported:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setAbsoluteVolumeState(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->isMusicPlaying()Z

    move-result p1

    if-eqz p1, :cond_4a

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->triggerMonitoring()V

    :cond_4a
    return-void

    :goto_4b
    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_10

    throw p1
.end method

.method public final triggerMonitoring()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    goto :goto_1e

    :cond_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_7

    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    :cond_14
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_7

    throw v0
.end method
