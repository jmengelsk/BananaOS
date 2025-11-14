.class public final Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;
.super Landroid/view/IDisplayWindowListener$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-direct {p0}, Landroid/view/IDisplayWindowListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDesktopModeEligibleChanged(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/ICameraService;->notifyDeviceInjectorOrientationChange()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Could not notify cameraserver, remote exception: "

    const-string p2, "CameraService_worker"

    invoke-static {p1, p0, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public final onFixedRotationFinished(I)V
    .locals 0

    return-void
.end method

.method public final onFixedRotationStarted(II)V
    .locals 0

    return-void
.end method

.method public final onKeepClearAreasChanged(ILjava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method
