.class public final Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;
.super Landroid/view/OrientationEventListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mLatestOrientation:I

.field public final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    iget-object p1, p1, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    if-eqz p1, :cond_39

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_1b

    iput p2, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    return-void

    :cond_1b
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_35

    const/4 v0, 0x2

    if-eq p1, v0, :cond_30

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2b

    iput p2, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    return-void

    :cond_2b
    const/16 p1, 0x5a

    iput p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    return-void

    :cond_30
    const/16 p1, 0xb4

    iput p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    return-void

    :cond_35
    const/16 p1, 0x10e

    iput p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    :cond_39
    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    goto :goto_27

    :cond_4
    add-int/lit8 p1, p1, 0x2d

    div-int/lit8 p1, p1, 0x5a

    mul-int/lit8 p1, p1, 0x5a

    rem-int/lit16 p1, p1, 0x168

    iget v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    if-eq v0, p1, :cond_27

    iput p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object p0

    if-nez p0, :cond_1b

    goto :goto_27

    :cond_1b
    :try_start_1b
    invoke-interface {p0}, Landroid/hardware/ICameraService;->notifyDeviceInjectorOrientationChange()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p0

    const-string p1, "Could not notify cameraserver, remote exception: "

    const-string v0, "CameraService_worker"

    invoke-static {p1, p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_27
    :goto_27
    return-void
.end method
