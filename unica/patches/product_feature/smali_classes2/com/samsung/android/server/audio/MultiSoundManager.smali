.class public final Lcom/samsung/android/server/audio/MultiSoundManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final MULTI_SOUND_SUPPORTED_DEVICE_SET:Ljava/util/Set;

.field public static final sLastSetDeviceToNativeLock:Ljava/lang/Object;

.field public static sLastSetDeviceToNativeTime:J


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mAudioHandler:Landroid/os/Handler;

.field public final mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

.field public final mContext:Landroid/content/Context;

.field public mEnabled:Z

.field public final mInterface:Lcom/android/server/audio/AudioService$11;

.field public final mMultiSoundLock:Ljava/lang/Object;

.field public mNm:Landroid/app/NotificationManager;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPinAppInfoList:Ljava/util/HashMap;

.field public final mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

.field public final mRemoteSubmixApps:Ljava/util/Set;

.field public mSetVolumeRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

.field public final mTaskStack:Ljava/util/HashMap;

.field public mUpdateFocusedAppRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

.field public final mVolumeTable:[F


# direct methods
.method public static -$$Nest$mupdateForegroundAppUid(Lcom/samsung/android/server/audio/MultiSoundManager;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mUpdateFocusedAppRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mUpdateFocusedAppRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance p2, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    const/4 v1, 0x2

    invoke-direct {p2, p0, p1, v1}, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;II)V

    iput-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mUpdateFocusedAppRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    new-instance p2, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    const/4 v1, 0x1

    invoke-direct {p2, p0, p1, v1}, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;II)V

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/server/audio/MultiSoundManager;->sLastSetDeviceToNativeLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/samsung/android/server/audio/MultiSoundManager;->MULTI_SOUND_SUPPORTED_DEVICE_SET:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x4000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x4000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService$11;Landroid/os/Handler;Lcom/android/server/audio/AudioSystemAdapter;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mTaskStack:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    new-instance v0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;II)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mSetVolumeRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    new-instance v0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;II)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mUpdateFocusedAppRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    const/16 v1, 0x65

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mVolumeTable:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v2, 0x64

    aput v0, v1, v2

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mVolumeTable:[F

    int-to-double v3, v0

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    mul-double/2addr v3, v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    const-wide/high16 v5, -0x3fec000000000000L    # -5.0

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    iput-object p3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "activity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    iput-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mActivityManager:Landroid/app/ActivityManager;

    const-string/jumbo p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    :try_start_0
    new-instance p2, Lcom/samsung/android/server/audio/MultiSoundManager$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/audio/MultiSoundManager$1;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;)V

    invoke-interface {p1, p2}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception - registerTaskStackListener "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "AS.MultiSoundManager"

    invoke-static {p0, p1, p2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final enableSeparateRemoteSubmix(IZ)V
    .locals 3

    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    const-string/jumbo v1, "audioParam"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string/jumbo v1, "l_multi_sound_key"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string/jumbo v1, "enable"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Z)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string/jumbo v1, "exclusive"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Z)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string/jumbo v1, "device"

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string/jumbo v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMediaSessionServiceInternal:Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionService;->mIsAppCastingOn:Z

    iput p1, p0, Lcom/android/server/media/MediaSessionService;->mAppCastingUid:I

    return-void
.end method

.method public final getAppDevice(I)I
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    iget-object v1, v0, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v1, v1, Lcom/android/server/audio/AudioService;->mIsLeBroadCasting:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$11;->isSmartViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const v3, 0x8000

    if-eqz v1, :cond_2

    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget p1, p1, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    if-ne p1, v3, :cond_4

    const-string v0, "0"

    goto :goto_0

    :cond_4
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    goto :goto_1

    :cond_5
    move p1, v2

    :goto_1
    if-ne p1, v3, :cond_6

    goto :goto_3

    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-nez v0, :cond_7

    :goto_2
    return v2

    :cond_7
    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    :goto_3
    return p1

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getCurrentMediaDevice()I

    move-result p1

    sget-object v1, Lcom/samsung/android/media/SemAudioSystem;->MULTI_SOUND_PRIMARY_DEVICE_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return p1

    :cond_9
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-nez v3, :cond_b

    const-string v3, "AS.AudioDeviceInventory"

    const-string/jumbo v4, "invalid null DeviceInfo in connectedDevices"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_b
    iget v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v5, -0x80000000

    and-int/2addr v5, v4

    if-eqz v5, :cond_c

    goto :goto_4

    :cond_c
    sget-object v5, Lcom/samsung/android/media/SemAudioSystem;->MULTI_SOUND_PRIMARY_DEVICE_SET:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget v3, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    or-int/2addr v2, v3

    goto :goto_4

    :cond_d
    monitor-exit p1

    and-int/lit16 p0, v2, 0x4000

    if-eqz p0, :cond_e

    const/16 p0, 0x4000

    return p0

    :cond_e
    const/high16 p0, 0x4000000

    and-int p1, v2, p0

    if-eqz p1, :cond_f

    return p0

    :cond_f
    and-int/lit8 p0, v2, 0x4

    if-eqz p0, :cond_10

    const/4 p0, 0x4

    return p0

    :cond_10
    and-int/lit8 p0, v2, 0x8

    if-eqz p0, :cond_11

    const/16 p0, 0x8

    return p0

    :cond_11
    const/16 p0, 0x400

    and-int/lit16 p1, v2, 0x400

    if-eqz p1, :cond_12

    return p0

    :cond_12
    return v0

    :goto_5
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_6
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final getAppDevice(IZ)I
    .locals 0

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    move-result p0

    return p0
.end method

.method public final getCurrentMediaDevice()I
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->getVssForStreamOrDefault(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    invoke-static {p0}, Landroid/media/AudioSystem;->getDeviceMaskFromSet(Ljava/util/Set;)I

    move-result p0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-eqz v0, :cond_5

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/high16 v0, 0x40000

    and-int v1, p0, v0

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/high16 v0, 0x80000

    and-int v1, p0, v0

    if-eqz v1, :cond_2

    return v0

    :cond_2
    const/high16 v0, 0x200000

    and-int v1, p0, v0

    if-eqz v1, :cond_3

    return v0

    :cond_3
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int v2, v1, p0

    if-ne v2, v1, :cond_4

    return v1

    :cond_5
    return p0
.end method

.method public final getPinAppInfo(I)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->isRemoteSubmixAppExist()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const v3, 0x8000

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    iget-object v3, v3, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3, v0}, Lcom/android/server/audio/AudioService;->getPackageName(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    iget-object v3, v3, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :try_start_2
    const-string p0, ", "

    invoke-static {p0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v2

    return-object p0

    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(IZ)I

    move-result v6

    if-eq v6, p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v7, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    iget-object v6, v6, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v6, v5}, Lcom/android/server/audio/AudioService;->getPackageName(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v4

    iget-object v7, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    iget-object v7, v7, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v7, v7, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v8, "multisound_app"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    array-length v8, v5

    move v9, v4

    :goto_2
    if-ge v9, v8, :cond_4

    aget-object v10, v5, v9

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v11, :cond_3

    move-object v6, v10

    goto :goto_3

    :cond_3
    add-int/2addr v9, v0

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_3
    :try_start_4
    iget-object v5, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    iget-object v5, v5, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, v5, Lcom/android/server/audio/AudioService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v5

    :try_start_5
    const-string v6, "AS.MultiSoundManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "not found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string p0, ", "

    invoke-static {p0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v3

    return-object p0

    :goto_4
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :goto_5
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final getPinDevice(Z)I
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    iget v5, v4, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    iget v4, v4, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    invoke-virtual {p0, v4, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(IZ)I

    move-result v4

    if-eqz v4, :cond_1

    const v5, 0x8000

    if-eq v4, v5, :cond_1

    return v4

    :cond_3
    :goto_1
    return v0
.end method

.method public final isRemoteSubmixAppExist()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final resetByEnableDisable()V
    .locals 9

    const-string v0, "AS.MultiSoundManager"

    const-string/jumbo v1, "resetByEnableDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    iget v6, v5, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v6, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    iget-object v7, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    iget v5, v5, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    if-nez v6, :cond_1

    const v6, 0x8000

    if-eq v0, v6, :cond_1

    const v6, 0x20000002

    if-eq v0, v6, :cond_1

    invoke-virtual {v7}, Lcom/android/server/audio/AudioService$11;->isSmartViewEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v5}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    move-result v6

    if-eq v0, v6, :cond_1

    sget v6, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    iget-object v6, v7, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v6, v5}, Lcom/android/server/audio/AudioService;->getPackageName(I)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Lcom/android/server/audio/AudioService;->sendBecomingNoisyIntent(I[Ljava/lang/String;)I

    :cond_1
    iget-object v6, v7, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v6, v6, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v6, v5, v3}, Lcom/android/server/audio/MediaFocusControl;->updateFocusRequester(IZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->setStateToNative()V

    return-void
.end method

.method public final sendBroadcastToAll(Landroid/content/Intent;)V
    .locals 3

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final sendIntentToSpecificPackage(Landroid/content/Intent;[Ljava/lang/String;)V
    .locals 12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v6

    :goto_0
    invoke-virtual {v2, p1, v3, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->queryRegisteredReceiverPackages(Landroid/content/Intent;)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string/jumbo v3, "sendBecomingNoisyIntentToUnpinApps to "

    const-string/jumbo v4, "send intent except "

    const-string v5, "AS.MultiSoundManager"

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    array-length v8, p2

    move v9, v6

    :goto_2
    if-ge v9, v8, :cond_3

    aget-object v10, p2, v9

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v4, v10, v5}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->sendBroadcastToAll(Landroid/content/Intent;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v2, v5}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    array-length v1, v0

    move v2, v6

    :goto_3
    if-ge v2, v1, :cond_9

    aget-object v7, v0, v2

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_5

    :cond_5
    array-length v8, p2

    move v9, v6

    :goto_4
    if-ge v9, v8, :cond_7

    aget-object v10, p2, v9

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v4, v10, v5}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p1, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->sendBroadcastToAll(Landroid/content/Intent;)V

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setAppDevice(IIZ)V
    .locals 5

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    const-string/jumbo v3, "setAppDevice"

    iget-object v2, v2, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "AS.MultiSoundManager"

    const-string/jumbo p1, "setAppDevice: permission error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    sget-object v2, Lcom/samsung/android/server/audio/MultiSoundManager;->MULTI_SOUND_SUPPORTED_DEVICE_SET:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    const-string p0, "AS.MultiSoundManager"

    const-string/jumbo p1, "setAppDevice: unsupported device"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    if-eqz v2, :cond_2

    iget v2, v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    if-ne v2, p2, :cond_2

    const-string p0, "AS.MultiSoundManager"

    const-string/jumbo p1, "same device pin."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_2
    sget-object v2, Lcom/samsung/android/media/SemAudioSystem;->MULTI_SOUND_PRIMARY_DEVICE_SET:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x2

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    if-nez v2, :cond_4

    new-instance v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    const/16 v3, 0x64

    invoke-direct {v2, p1, p2, v3}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;-><init>(III)V

    goto :goto_0

    :cond_4
    iput p2, v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    :goto_0
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->removable()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/audio/MultiSoundManager;->setDeviceToNative(II)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-eqz p1, :cond_6

    if-ne p2, v0, :cond_6

    if-eqz p3, :cond_6

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->getPriorityDevice(I)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->showHeadUpNotification(II)V

    :cond_6
    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setAppToRemoteSubmix(II)V
    .locals 6

    const-string v0, "Invalid uid "

    const-string v1, "Already set uid "

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    monitor-enter v2

    const/16 v3, -0x3e8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p2, v3, :cond_2

    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p0, "AS.MultiSoundManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const p2, 0x8000

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/audio/MultiSoundManager;->setRemoteSubmixAppToNative(II)V

    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/server/audio/MultiSoundManager;->enableSeparateRemoteSubmix(IZ)V

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/16 v1, -0x3ea

    if-ne p2, v1, :cond_3

    goto :goto_0

    :cond_3
    move v4, v5

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p0, "AS.MultiSoundManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_4
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, -0x1

    invoke-virtual {p0, p2, v5}, Lcom/samsung/android/server/audio/MultiSoundManager;->enableSeparateRemoteSubmix(IZ)V

    :cond_5
    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/server/audio/MultiSoundManager;->setRemoteSubmixAppToNative(II)V

    move v5, v4

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p0, p1, v5}, Lcom/android/server/audio/MediaFocusControl;->updateFocusRequester(IZ)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setAppVolume(II)V
    .locals 4

    const/16 v0, 0x64

    if-gt p2, v0, :cond_6

    if-gez p2, :cond_0

    goto :goto_5

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    if-nez v2, :cond_2

    if-ne p2, v0, :cond_1

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    new-instance v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    const/4 v0, 0x0

    invoke-direct {v2, p1, v0, p2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;-><init>(III)V

    goto :goto_2

    :cond_2
    if-ltz p2, :cond_4

    if-le p2, v0, :cond_3

    goto :goto_0

    :cond_3
    iput p2, v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mRatio:I

    goto :goto_1

    :cond_4
    :goto_0
    const-string p2, "AS.MultiSoundManager"

    const-string v0, "Invalid app volume"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->removable()Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_5

    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppVolumeToNative(I)V

    return-void

    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    :goto_5
    const-string p0, "AS.MultiSoundManager"

    const-string/jumbo p1, "setAppVolume: Invalid volume"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setAppVolumeToNative(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mSetVolumeRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    iget v1, v0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioHandler:Landroid/os/Handler;

    if-ne v1, p1, :cond_0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;II)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mSetVolumeRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mSetVolumeRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setDeviceToNative(II)V
    .locals 5

    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    const-string/jumbo v1, "audioParam"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string/jumbo v1, "l_multi_sound_key"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object p1

    const-string/jumbo v0, "device"

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object p1

    const-string/jumbo p2, "type"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/server/audio/MultiSoundManager;->sLastSetDeviceToNativeLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-wide v2, Lcom/samsung/android/server/audio/MultiSoundManager;->sLastSetDeviceToNativeTime:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    const-wide/16 v0, 0x1e

    add-long/2addr v0, v2

    :cond_0
    sput-wide v0, Lcom/samsung/android/server/audio/MultiSoundManager;->sLastSetDeviceToNativeTime:J

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioHandler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v3, p0, p1, v4}, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;Lcom/samsung/android/media/AudioParameter;I)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setRemoteSubmixAppToNative(II)V
    .locals 2

    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    const-string/jumbo v1, "audioParam"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string/jumbo v1, "l_multi_sound_key"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object p1

    const-string/jumbo v0, "device"

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object p1

    const-string/jumbo p2, "type"

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method public final setStateToNative()V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    iget-object v2, v1, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v2, v2, Lcom/android/server/audio/AudioService;->mIsLeBroadCasting:Z

    const-string v3, "AS.MultiSoundManager"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const-string/jumbo v0, "send multisound off during le broadcasting"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v0, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$11;->isSmartViewEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "send multisound off during smart view"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v1, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v1}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    const-string/jumbo v2, "audioParam"

    invoke-virtual {v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v1

    const-string/jumbo v2, "l_multi_sound_key"

    invoke-virtual {v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v1

    const-string/jumbo v2, "enable"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Z)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;Lcom/samsung/android/media/AudioParameter;I)V

    const-wide/16 v2, 0xc8

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final showHeadUpNotification(II)V
    .locals 10

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v5, 0x1

    aput-object v4, v2, v5

    filled-new-array {p1, p2}, [I

    move-result-object p1

    sget-object p2, Lcom/samsung/android/media/SemAudioSystem;->MULTI_SOUND_PRIMARY_DEVICE_SET:Ljava/util/Set;

    aget v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget v4, p1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    move p2, v3

    :goto_0
    if-ge p2, v0, :cond_5

    aget v4, p1, p2

    if-eq v4, v0, :cond_3

    const/4 v6, 0x4

    if-eq v4, v6, :cond_2

    const/16 v6, 0x8

    if-eq v4, v6, :cond_2

    array-length v4, v1

    move v6, v3

    :goto_1
    if-ge v6, v4, :cond_4

    aget-object v7, v1, v6

    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->semGetInternalType()I

    move-result v8

    aget v9, p1, p2

    if-ne v8, v9, :cond_1

    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, p2

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1040655

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, p2

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1040921

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, p2

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const p2, 0x104090f

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aget-object p2, v2, v3

    aget-object v1, v2, v5

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.audio.headup.changedevice"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0xc000000

    invoke-static {p2, v5, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const-string v4, "AudioCore_Notification"

    invoke-direct {v1, v2, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x1080bdf

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const v4, 0x1040910

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v2, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const v1, 0x104090c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0, p2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    const/16 p2, 0x3ed

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public final showNotification()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinDevice(Z)I

    move-result v2

    if-eqz v2, :cond_6

    if-ne v0, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "tablet"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string/jumbo v4, "com.samsung.android.setting.multisound.MultiSoundSettingsActivity"

    const-string/jumbo v5, "com.samsung.android.setting.multisound"

    if-eqz v3, :cond_2

    const-string/jumbo v3, "android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_KEY"

    const-string/jumbo v4, "top_level_sounds"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "android.intent.action.Launch_Setting"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const/high16 v4, 0x14000000

    invoke-static {v3, v1, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.TurnOff_MultiSound"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const/high16 v5, 0x4000000

    invoke-static {v4, v1, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const-string v7, "AudioCore_Notification"

    invoke-direct {v4, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v6, 0x4

    const v7, 0x1040915

    if-eq v2, v6, :cond_5

    const/16 v6, 0x8

    if-eq v2, v6, :cond_5

    const/16 v6, 0x80

    if-eq v2, v6, :cond_4

    const/16 v6, 0x4000

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_3

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const v5, 0x1040917

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const v5, 0x1040913

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v5, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const v7, 0x104091a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x1080bdf

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1040911

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v5, 0x1080078

    invoke-virtual {v1, v5, v2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104091b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v5, v1, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    const/16 v0, 0x3ec

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final updateAudioServiceNotificationChannel()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    const-string v1, "AudioCore_Notification"

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040921

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method
