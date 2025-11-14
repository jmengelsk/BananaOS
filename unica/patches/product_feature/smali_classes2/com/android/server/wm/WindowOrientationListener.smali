.class public abstract Lcom/android/server/wm/WindowOrientationListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final LOG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentRotation:I

.field public final mDefaultRotation:I

.field public final mDeviceInfoSensor:Landroid/hardware/Sensor;

.field public mEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public mLastSensorRotation:I

.field public final mLock:Ljava/lang/Object;

.field mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

.field public mProposedTableMode:I

.field public final mRate:I

.field mRotationResolverService:Landroid/rotationresolver/RotationResolverInternal;

.field public final mSensor:Landroid/hardware/Sensor;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mTableMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "debug.orientation.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mTableMode:I

    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mProposedTableMode:I

    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLastSensorRotation:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mDeviceInfoSensor:Landroid/hardware/Sensor;

    iput p3, p0, Lcom/android/server/wm/WindowOrientationListener;->mDefaultRotation:I

    const-string/jumbo p3, "sensor"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/SensorManager;

    iput-object p3, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mRate:I

    const/16 v1, 0x1b

    invoke-virtual {p3, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_34
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v2

    if-eqz v2, :cond_47

    goto :goto_34

    :cond_47
    move-object p2, v1

    goto :goto_34

    :cond_49
    iput-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz p2, :cond_54

    new-instance p2, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    invoke-direct {p2, p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;-><init>(Lcom/android/server/wm/WindowOrientationListener;)V

    iput-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    :cond_54
    iget-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    const p3, 0x10071

    invoke-virtual {p2, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mDeviceInfoSensor:Landroid/hardware/Sensor;

    if-eqz p2, :cond_6a

    const-string/jumbo p2, "WindowOrientationListener"

    const-string/jumbo p3, "supports device_common_info"

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    iget-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    if-nez p2, :cond_7f

    iget-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz p2, :cond_7f

    new-instance p2, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;

    invoke-direct {p2, p0, p1}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;-><init>(Lcom/android/server/wm/WindowOrientationListener;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    :cond_7f
    return-void
.end method


# virtual methods
.method public final enable$1()V
    .registers 10

    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_14

    const-string/jumbo p0, "WindowOrientationListener"

    const-string v0, "Cannot detect sensors. Not enabled"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    move-object p0, v0

    goto :goto_6a

    :cond_14
    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    if-eqz v0, :cond_1a

    monitor-exit v1

    return-void

    :cond_1a
    sget-boolean v0, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    if-eqz v0, :cond_27

    const-string/jumbo v0, "WindowOrientationListener"

    const-string/jumbo v2, "WindowOrientationListener enabled clearCurrentRotation=true"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->resetLocked()V

    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_46

    iget-object v3, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    iget-object v5, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v6, p0, Lcom/android/server/wm/WindowOrientationListener;->mRate:I

    iget-object v8, p0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    const v7, 0x186a0

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    goto :goto_66

    :cond_46
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mDeviceInfoSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_59

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/wm/WindowOrientationListener;->mTableMode:I

    iput v3, p0, Lcom/android/server/wm/WindowOrientationListener;->mProposedTableMode:I

    iput v3, p0, Lcom/android/server/wm/WindowOrientationListener;->mLastSensorRotation:I

    iget-object v3, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v0, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_59
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    iget-object v4, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v5, p0, Lcom/android/server/wm/WindowOrientationListener;->mRate:I

    iget-object v6, p0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :goto_66
    iput-boolean v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    monitor-exit v1

    return-void

    :goto_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_11

    throw p0
.end method

.method public final getProposedRotation()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    if-eqz v1, :cond_11

    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->getProposedRotationLocked()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    goto :goto_14

    :cond_11
    const/4 p0, -0x1

    monitor-exit v0

    return p0

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f

    throw p0
.end method

.method public abstract isRotationResolverEnabled()Z
.end method

.method public abstract onProposedRotationChanged(I)V
.end method
