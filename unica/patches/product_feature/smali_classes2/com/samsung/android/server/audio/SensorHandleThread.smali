.class public final Lcom/samsung/android/server/audio/SensorHandleThread;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# static fields
.field public static final sBluetoothCommunicationDevices:Ljava/util/Set;


# instance fields
.field public final mAudioService:Lcom/android/server/audio/AudioService;

.field public mDevicePositionChangedDuringRingtone:Z

.field public mIsClosed:Z

.field public mIsProximateRegistered:Z

.field public mIsSemMotionRegistered:Z

.field public final mJdmFlatMotionSensor:Landroid/hardware/Sensor;

.field public mMusicDevices:Ljava/util/Set;

.field public final mProximitySensor:Landroid/hardware/Sensor;

.field public final mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field public final mSemDevicePositionSensorEnabled:Z

.field public final mSemFlatMotionSensorEnabled:Z

.field public mSensorHandler:Landroid/os/Handler;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mVoiceDevices:Ljava/util/Set;

.field public final mediaCallback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

.field public final voiceCallback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/samsung/android/server/audio/SensorHandleThread;->sBluetoothCommunicationDevices:Ljava/util/Set;

    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/high16 v1, 0x20000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V
    .locals 2

    const-string/jumbo v0, "SensorHandleThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsSemMotionRegistered:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsProximateRegistered:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsClosed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mVoiceDevices:Ljava/util/Set;

    iput-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mMusicDevices:Ljava/util/Set;

    new-instance v0, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/audio/SensorHandleThread;I)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->voiceCallback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/audio/SensorHandleThread;I)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mediaCallback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    iput-object p2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    const-string/jumbo p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mProximitySensor:Landroid/hardware/Sensor;

    const v0, 0x100c9

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mJdmFlatMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string/jumbo v0, "com.sec.feature.sensorhub"

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string/jumbo p2, "scontext"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/hardware/context/SemContextManager;

    iput-object p1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz p1, :cond_0

    const/16 p2, 0x16

    invoke-virtual {p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemDevicePositionSensorEnabled:Z

    if-nez p2, :cond_0

    const/16 p2, 0x14

    invoke-virtual {p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemFlatMotionSensorEnabled:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 6

    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    iget-boolean v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionChangedDuringRingtone:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mMusicDevices:Ljava/util/Set;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-gt v1, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v0

    const/16 v1, 0x14

    const-string/jumbo v4, "l_hw_flat_motion_state=0"

    const-string/jumbo v5, "l_hw_flat_motion_state=1"

    if-eq v0, v1, :cond_5

    const/16 v1, 0x16

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getDevicePositionContext()Lcom/samsung/android/hardware/context/SemContextDevicePosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextDevicePosition;->getPosition()I

    move-result p1

    if-ne p1, v3, :cond_4

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p1, v3, :cond_7

    iput-boolean v3, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionChangedDuringRingtone:Z

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getFlatMotionContext()Lcom/samsung/android/hardware/context/SemContextFlatMotion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextFlatMotion;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_6

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void

    :cond_6
    if-ne p1, v2, :cond_7

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p1, v3, :cond_7

    iput-boolean v3, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionChangedDuringRingtone:Z

    :cond_7
    :goto_0
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-double v3, v0

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_0

    const-string v0, "GAMEVOIP"

    iget-object v3, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mAppMode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsClosed:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsClosed:Z

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsClosed:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "l_hw_proximity_sensor_state=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "l_hw_proximity_sensor_state=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionChangedDuringRingtone:Z

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mMusicDevices:Ljava/util/Set;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gt v0, v2, :cond_5

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "jdm"

    const-string/jumbo v3, "in_house"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_6

    const-string/jumbo p0, "l_hw_flat_motion_state=1"

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void

    :cond_6
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_7

    const-string/jumbo p1, "l_hw_flat_motion_state=0"

    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p1, v2, :cond_7

    iput-boolean v2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionChangedDuringRingtone:Z

    :cond_7
    :goto_2
    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public final declared-synchronized startProximate()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mVoiceDevices:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/server/audio/SensorHandleThread;->sBluetoothCommunicationDevices:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "AS.SensorHandleThread"

    const-string/jumbo v1, "start fail by bluetooth communication device connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsProximateRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsProximateRegistered:Z

    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mProximitySensor:Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v0, p0, v1, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final startSensor()V
    .locals 4

    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->voiceCallback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/audio/AudioService;->registerCurrentDeviceChangedCallback(ILcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mediaCallback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/audio/AudioService;->registerCurrentDeviceChangedCallback(ILcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SensorHandleThread;->startProximate()V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsSemMotionRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsSemMotionRegistered:Z

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemDevicePositionSensorEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x16

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemFlatMotionSensorEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    :goto_1
    const-string/jumbo v0, "jdm"

    const-string/jumbo v1, "in_house"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mJdmFlatMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_3
    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized stopProximate()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsProximateRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsProximateRegistered:Z

    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final stopSensor()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->voiceCallback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/AudioService;->unregisterCurrentDeviceChangedCallback(ILcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;)V

    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mediaCallback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1}, Lcom/android/server/audio/AudioService;->unregisterCurrentDeviceChangedCallback(ILcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;)V

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SensorHandleThread;->stopProximate()V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsSemMotionRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    goto :goto_1

    :cond_0
    :try_start_1
    iput-boolean v2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsSemMotionRegistered:Z

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemDevicePositionSensorEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x16

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    const-string/jumbo v0, "l_hw_flat_motion_state=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemFlatMotionSensorEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    const-string/jumbo v0, "l_hw_flat_motion_state=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    :goto_1
    const-string/jumbo v0, "jdm"

    const-string/jumbo v1, "in_house"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mJdmFlatMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_3
    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
