.class public final Lcom/samsung/android/camera/ShakeEventListener;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

.field public final mHandler:Landroid/os/Handler;

.field public mInCall:Z

.field public final mLastEventMessage:Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public mShakeDetected:Z

.field public final mShakeOffRunnable:Lcom/samsung/android/camera/ShakeEventListener$1;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 7

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mInCall:Z

    iput-boolean v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeDetected:Z

    const-string/jumbo v1, "No event."

    iput-object v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mLastEventMessage:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/camera/ShakeEventListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/ShakeEventListener$1;-><init>(Lcom/samsung/android/camera/ShakeEventListener;)V

    iput-object v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeOffRunnable:Lcom/samsung/android/camera/ShakeEventListener$1;

    iput-object p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string/jumbo p1, "sensor"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    const v1, 0x1004c

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    const-string/jumbo p1, "power"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const-string/jumbo v1, "ShakeEventListener"

    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string/jumbo p1, "alarm"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p3, p0, Lcom/samsung/android/camera/ShakeEventListener;->mHandler:Landroid/os/Handler;

    new-instance p0, Landroid/content/Intent;

    const-string/jumbo p1, "com.samsung.android.intent.ACTION_CAMERA_SERVICE_WORKER_LOGGING"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x4000000

    invoke-static {p2, v0, p0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final handleShakeEventChanged()V
    .registers 6

    const-string/jumbo v0, "Shake event changed now(false) -> next(false), enable("

    iget-object v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-boolean v3, p0, Lcom/samsung/android/camera/ShakeEventListener;->mInCall:Z

    iget-boolean p0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeDetected:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") call("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ") shake("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "ShakeEventListener"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->SHAKE_EVENT_LISTENER:Lcom/samsung/android/camera/Logger$ID;

    invoke-static {v0, p0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_6 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public final declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string p1, "Audio mode changed: "

    monitor-enter p0

    :try_start_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_22

    if-nez v0, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7539e1b9

    if-eq v1, v2, :cond_24

    const p1, 0x938ecab

    if-eq v1, p1, :cond_1a

    goto :goto_64

    :cond_1a
    const-string/jumbo p1, "com.samsung.android.intent.ACTION_CAMERA_SERVICE_WORKER_LOGGING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_64

    :catchall_22
    move-exception p1

    goto :goto_66

    :cond_24
    const-string/jumbo v1, "android.samsung.media.action.AUDIO_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    const-string/jumbo v0, "android.samsung.media.extra.AUDIO_MODE"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string/jumbo v0, "ShakeEventListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5b

    const/4 p1, 0x2

    if-eq p2, p1, :cond_50

    const/4 p1, 0x3

    if-eq p2, p1, :cond_50

    goto :goto_64

    :cond_50
    iget-boolean p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mInCall:Z

    if-nez p1, :cond_64

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mInCall:Z

    invoke-virtual {p0}, Lcom/samsung/android/camera/ShakeEventListener;->handleShakeEventChanged()V

    goto :goto_64

    :cond_5b
    iget-boolean p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mInCall:Z

    if-eqz p1, :cond_64

    iput-boolean v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mInCall:Z

    invoke-virtual {p0}, Lcom/samsung/android/camera/ShakeEventListener;->handleShakeEventChanged()V
    :try_end_64
    .catchall {:try_start_b .. :try_end_64} :catchall_22

    :cond_64
    :goto_64
    monitor-exit p0

    return-void

    :goto_66
    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_22

    throw p1
.end method

.method public final declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x1004c

    if-ne v0, v1, :cond_4d

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-int p1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_32

    const/4 v1, 0x2

    if-eq p1, v1, :cond_25

    const-string/jumbo p1, "ShakeEventListener"

    const-string/jumbo v0, "Unknown shake event. ignore"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    goto :goto_4f

    :cond_25
    :try_start_25
    iput-boolean v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeDetected:Z

    invoke-virtual {p0}, Lcom/samsung/android/camera/ShakeEventListener;->handleShakeEventChanged()V

    iget-object p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeOffRunnable:Lcom/samsung/android/camera/ShakeEventListener$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_4d

    :cond_32
    iput-boolean v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeDetected:Z

    invoke-virtual {p0}, Lcom/samsung/android/camera/ShakeEventListener;->handleShakeEventChanged()V

    iget-object p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeOffRunnable:Lcom/samsung/android/camera/ShakeEventListener$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeOffRunnable:Lcom/samsung/android/camera/ShakeEventListener$1;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4d
    .catchall {:try_start_25 .. :try_end_4d} :catchall_23

    :cond_4d
    :goto_4d
    monitor-exit p0

    return-void

    :goto_4f
    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_23

    throw p1
.end method
