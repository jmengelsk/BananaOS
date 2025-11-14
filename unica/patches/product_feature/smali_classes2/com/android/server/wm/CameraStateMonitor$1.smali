.class public final Lcom/android/server/wm/CameraStateMonitor$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/CameraStateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/CameraStateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/CameraStateMonitor$1;->this$0:Lcom/android/server/wm/CameraStateMonitor;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraClosed(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor$1;->this$0:Lcom/android/server/wm/CameraStateMonitor;

    iget-object v0, v0, Lcom/android/server/wm/CameraStateMonitor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor$1;->this$0:Lcom/android/server/wm/CameraStateMonitor;

    invoke-static {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->-$$Nest$mnotifyCameraClosedWithDelay(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor$1;->this$0:Lcom/android/server/wm/CameraStateMonitor;

    iget-object v0, v0, Lcom/android/server/wm/CameraStateMonitor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor$1;->this$0:Lcom/android/server/wm/CameraStateMonitor;

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/CameraStateMonitor;->-$$Nest$mnotifyCameraOpenedWithDelay(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
