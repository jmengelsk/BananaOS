.class public final Lcom/samsung/android/camera/CameraServiceWorker$DeviceStateListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceStateListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    return-void
.end method


# virtual methods
.method public final onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .registers 8

    const-string v0, "Fold state changed, "

    const-string v1, "Fold state changed, "

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceStateListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object v3, v3, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_d
    const-string v4, "CameraService_worker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/camera/Logger$ID;->FOLD_EVENT:Lcom/samsung/android/camera/Logger$ID;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_5b

    const/4 p1, 0x3

    const-wide/16 v0, 0x0

    if-eq v2, p1, :cond_55

    const/4 p1, 0x2

    if-eq v2, p1, :cond_55

    const/4 p1, 0x6

    if-ne v2, p1, :cond_3c

    goto :goto_55

    :cond_3c
    if-eqz v2, :cond_41

    const/4 p1, 0x1

    if-ne v2, p1, :cond_54

    :cond_41
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceStateListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-wide v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDeviceState:J

    const-wide v4, 0x800000000L

    and-long/2addr v2, v4

    cmp-long p1, v2, v0

    if-nez p1, :cond_54

    const-wide/16 v0, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChange(J)V

    :cond_54
    return-void

    :cond_55
    :goto_55
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceStateListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChange(J)V

    return-void

    :catchall_5b
    move-exception p0

    :try_start_5c
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p0
.end method
