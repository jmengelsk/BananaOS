.class public final Lcom/samsung/android/camera/CameraPrewarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCameraIdClearReceiver:Lcom/samsung/android/camera/CameraPrewarmReceiver$1;

.field public final mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPrewarmCameraId:J

.field public final mSemProcessListener:Lcom/samsung/android/camera/CameraPrewarmReceiver$2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 14

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/camera/CameraPrewarmReceiver;->mPrewarmCameraId:J

    new-instance v3, Lcom/samsung/android/camera/CameraPrewarmReceiver$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/camera/CameraPrewarmReceiver$1;-><init>(Lcom/samsung/android/camera/CameraPrewarmReceiver;)V

    iput-object v3, p0, Lcom/samsung/android/camera/CameraPrewarmReceiver;->mCameraIdClearReceiver:Lcom/samsung/android/camera/CameraPrewarmReceiver$1;

    new-instance v0, Lcom/samsung/android/camera/CameraPrewarmReceiver$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/CameraPrewarmReceiver$2;-><init>(Lcom/samsung/android/camera/CameraPrewarmReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/camera/CameraPrewarmReceiver;->mSemProcessListener:Lcom/samsung/android/camera/CameraPrewarmReceiver$2;

    iput-object p1, p0, Lcom/samsung/android/camera/CameraPrewarmReceiver;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string/jumbo p1, "com.samsung.android.camera.action.PREWARM_TRIGGER"

    const-string/jumbo v1, "com.samsung.android.camera.action.PREWARM_CAMERA_INFO"

    invoke-static {p1, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x2

    move-object v5, p0

    move-object v4, p2

    move-object v8, p3

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-object v2, v4

    move-object v6, v8

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo p1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "package"

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo p1, "com.sec.android.app.camera"

    const/4 p2, 0x0

    invoke-virtual {v4, p1, p2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-string/jumbo p1, "activity"

    invoke-virtual {v2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->semRegisterProcessListener(Landroid/app/ActivityManager$SemProcessListener;)V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/CameraPrewarmReceiver;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ACTION***"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPrewarmReceiver"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/camera/CameraPrewarmReceiver;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object v2, v0, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_20
    iget-boolean v0, v0, Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_97

    const-string/jumbo v2, "cameraId"

    const/4 v3, -0x1

    if-nez v0, :cond_72

    const-string/jumbo v0, "com.samsung.android.camera.action.PREWARM_TRIGGER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_53

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/samsung/android/camera/CameraPrewarmReceiver;->mPrewarmCameraId:J

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Prewarm triggr to "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/camera/CameraPrewarmReceiver;->mPrewarmCameraId:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    iget-wide p1, p0, Lcom/samsung/android/camera/CameraPrewarmReceiver;->mPrewarmCameraId:J

    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_6b

    iget-object p0, p0, Lcom/samsung/android/camera/CameraPrewarmReceiver;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    const/16 v0, 0x25

    shl-long/2addr p1, v0

    const-wide v0, 0x1000000000L

    or-long/2addr p1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeLocked(JZ)Landroid/util/Pair;

    return-void

    :cond_6b
    const-string/jumbo p0, "Prewarm triggred but Prewarm id has unknown"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_72
    const-string/jumbo v0, "com.samsung.android.camera.action.PREWARM_CAMERA_INFO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_96

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/samsung/android/camera/CameraPrewarmReceiver;->mPrewarmCameraId:J

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Prewarm Camera id set to "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/camera/CameraPrewarmReceiver;->mPrewarmCameraId:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_96
    return-void

    :catchall_97
    move-exception p0

    :try_start_98
    monitor-exit v2
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    throw p0
.end method
