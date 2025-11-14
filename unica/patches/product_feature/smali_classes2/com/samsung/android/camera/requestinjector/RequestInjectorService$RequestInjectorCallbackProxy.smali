.class public final Lcom/samsung/android/camera/requestinjector/RequestInjectorService$RequestInjectorCallbackProxy;
.super Lcom/samsung/android/camera/IRequestInjectorCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/requestinjector/RequestInjectorService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$RequestInjectorCallbackProxy;->this$0:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    invoke-direct {p0}, Lcom/samsung/android/camera/IRequestInjectorCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onCaptureResult(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$RequestInjectorCallbackProxy;->this$0:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    iget-object v0, v0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mCallbackSet:Ljava/util/Set;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/camera/IRequestInjectorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/IRequestInjectorCallback;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-wide v7, p5

    :try_start_1
    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/camera/IRequestInjectorCallback;->onCaptureResult(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/String;Ljava/lang/String;IJ)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-wide v7, p5

    :catch_1
    const-string/jumbo p1, "onCaptureResult: Callback has removed by DeadObjectException clientName = "

    const-string/jumbo p2, "RequestInjectorService"

    invoke-static {p1, v4, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$RequestInjectorCallbackProxy;->this$0:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    invoke-virtual {p1, v1}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->unregisterCallback(Landroid/os/IBinder;)V

    :goto_1
    move-object p1, v3

    move-object p2, v4

    move-object p3, v5

    move p4, v6

    move-wide p5, v7

    goto :goto_0

    :cond_0
    return-void
.end method
