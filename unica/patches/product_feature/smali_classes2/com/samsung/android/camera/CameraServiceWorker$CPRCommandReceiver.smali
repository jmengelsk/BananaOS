.class public final Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final ACTION_RESET_CAMERAPROVIDER:Ljava/lang/String;

.field public final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .registers 9

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string/jumbo v0, "com.samsung.cmh.action.cameraprovider"

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;->ACTION_RESET_CAMERAPROVIDER:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v3

    iget-object v1, p1, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    const/4 v4, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;->ACTION_RESET_CAMERAPROVIDER:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ACTION***"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraService_worker"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const/4 p1, 0x0

    const-wide v0, 0x1400000000L

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeLocked(JZ)Landroid/util/Pair;

    :cond_2e
    return-void
.end method
