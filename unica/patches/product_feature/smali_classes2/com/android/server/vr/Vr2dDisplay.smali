.class public final Lcom/android/server/vr/Vr2dDisplay;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mBootsToVr:Z

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mHandler:Landroid/os/Handler;

.field public mImageReader:Landroid/media/ImageReader;

.field public mIsPersistentVrModeEnabled:Z

.field public mIsVirtualDisplayAllowed:Z

.field public mStopVDRunnable:Lcom/android/server/vr/Vr2dDisplay$3;

.field public mSurface:Landroid/view/Surface;

.field public final mVdLock:Ljava/lang/Object;

.field public mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field public mVirtualDisplayDpi:I

.field public mVirtualDisplayHeight:I

.field public mVirtualDisplayWidth:I

.field public final mVrManager:Lcom/android/server/vr/VrManagerService$4;

.field public final mVrStateCallbacks:Lcom/android/server/vr/Vr2dDisplay$1;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManager;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/vr/VrManagerService$4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/vr/Vr2dDisplay$1;

    invoke-direct {v0, p0}, Lcom/android/server/vr/Vr2dDisplay$1;-><init>(Lcom/android/server/vr/Vr2dDisplay;)V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrStateCallbacks:Lcom/android/server/vr/Vr2dDisplay$1;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lcom/android/server/vr/Vr2dDisplay;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iput-object p3, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrManager:Lcom/android/server/vr/VrManagerService$4;

    const/16 p1, 0x578

    iput p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    const/16 p1, 0x708

    iput p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    const/16 p1, 0x140

    iput p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    return-void
.end method


# virtual methods
.method public final setSurfaceLocked(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    if-eq v0, p1, :cond_3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Setting the new surface from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Vr2dDisplay"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_2
    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    :cond_3
    return-void
.end method

.method public final setVirtualDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .locals 9

    const-string v0, "Ignoring Width/Height/Dpi values of "

    const-string/jumbo v1, "Setting width/height/dpi to "

    iget-object v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getDpi()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lt v3, v7, :cond_1

    if-lt v4, v7, :cond_1

    if-ge v5, v7, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "Vr2dDisplay"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    iput v4, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    iput v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    move v0, v7

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    const-string/jumbo v1, "Vr2dDisplay"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    :goto_1
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getAddedFlags()I

    move-result v1

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_2

    iput-boolean v7, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getRemovedFlags()I

    move-result p1

    and-int/2addr p1, v7

    if-ne p1, v7, :cond_3

    iput-boolean v6, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    iget v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    iget v3, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    invoke-virtual {p1, v0, v1, v3}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    iget-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Lcom/android/server/vr/Vr2dDisplay;->startImageReader()V

    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/vr/Vr2dDisplay;->updateVirtualDisplay()V

    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final startImageReader()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    iget v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    const-string/jumbo v0, "Vr2dDisplay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "VD startImageReader: res = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dpi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    invoke-static {v1, v2, v0}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/vr/Vr2dDisplay;->setSurfaceLocked(Landroid/view/Surface;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateDisplayId(I)V
    .locals 6

    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_TASKS_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long v1, p1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v4, -0xf972baf3b14cee3L    # -3.083842131713187E233

    const/4 v2, 0x1

    invoke-static {v3, v4, v5, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput p1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object p0, p0, Lcom/android/server/vr/Vr2dDisplay;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->setVr2dDisplayId(I)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final updateVirtualDisplay()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string/jumbo v0, "Vr2dDisplay"

    const-string v1, "Attempting to start virtual display"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_1

    const-string/jumbo p0, "Vr2dDisplay"

    const-string v0, "Cannot create virtual display because mDisplayManager == null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_2

    const-string/jumbo p0, "Vr2dDisplay"

    const-string/jumbo v1, "VD already exists, ignoring request"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    const-string/jumbo v2, "VR 2D Display"

    iget v3, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    iget v4, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    iget v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    const-string v2, "277f1a09-b88d-4d1e-8716-796f114d080b"

    invoke-virtual {v1, v2}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setUniqueId(Ljava/lang/String;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    const/16 v2, 0x5cd

    invoke-virtual {v1, v2}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    iget-object v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/vr/Vr2dDisplay;->updateDisplayId(I)V

    invoke-virtual {p0}, Lcom/android/server/vr/Vr2dDisplay;->startImageReader()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "Vr2dDisplay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "VD created: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :try_start_1
    const-string/jumbo v1, "Vr2dDisplay"

    const-string/jumbo v2, "Virtual display id is null after createVirtualDisplay"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/server/vr/Vr2dDisplay;->updateDisplayId(I)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Lcom/android/server/vr/Vr2dDisplay$3;

    if-nez v0, :cond_5

    new-instance v0, Lcom/android/server/vr/Vr2dDisplay$3;

    invoke-direct {v0, p0}, Lcom/android/server/vr/Vr2dDisplay$3;-><init>(Lcom/android/server/vr/Vr2dDisplay;)V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Lcom/android/server/vr/Vr2dDisplay$3;

    :cond_5
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Lcom/android/server/vr/Vr2dDisplay$3;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Lcom/android/server/vr/Vr2dDisplay$3;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
