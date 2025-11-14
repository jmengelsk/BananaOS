.class public final Lcom/android/server/wm/ContentRecorder;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/WindowContainerListener;


# instance fields
.field public mContentRecordingSession:Landroid/view/ContentRecordingSession;

.field public final mCorrectForAnisotropicPixels:Z

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mLastConsumingSurfaceSize:Landroid/graphics/Point;

.field public mLastOrientation:I

.field public mLastRecordedBounds:Landroid/graphics/Rect;

.field public mLastWindowingMode:I

.field public final mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

.field public mRecordedSurface:Landroid/view/SurfaceControl;

.field public mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mLastRecordedBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mLastConsumingSurfaceSize:Landroid/graphics/Point;

    iput v1, p0, Lcom/android/server/wm/ContentRecorder;->mLastOrientation:I

    iput v1, p0, Lcom/android/server/wm/ContentRecorder;->mLastWindowingMode:I

    iput-object p1, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object p2, p0, Lcom/android/server/wm/ContentRecorder;->mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

    iput-boolean p3, p0, Lcom/android/server/wm/ContentRecorder;->mCorrectForAnisotropicPixels:Z

    return-void
.end method


# virtual methods
.method public final fetchSurfaceSizeIfPresent()Landroid/graphics/Point;
    .locals 4

    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplaySurfaceDefaultSize(I)Landroid/graphics/Point;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v2, p0

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, 0x20592f932c1d353bL    # 7.513782880242941E-153

    invoke-static {p0, v2, v3, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final handleStartRecordingFailed()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->unregisterListener()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mContentRecordingController:Lcom/android/server/wm/ContentRecordingController;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/wm/ContentRecordingController;->setContentRecordingSessionLocked(Landroid/view/ContentRecordingSession;Lcom/android/server/wm/WindowManagerService;)V

    if-eqz v1, :cond_1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ContentRecorder;->stopMediaProjection(I)V

    :cond_1
    return-void
.end method

.method public final invalidateForRecording(Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v2, :cond_2

    instance-of v2, v2, Lcom/android/server/wm/DisplayContent;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v2, "debug.sf.hdr_capture"

    if-eqz p1, :cond_1

    const-string/jumbo v3, "true"

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "false"

    :goto_0
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    new-array v3, v0, [Z

    aput-boolean v1, v3, v1

    iget-object v4, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4

    :try_start_0
    new-instance v5, Lcom/android/server/wm/ContentRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p1, v3}, Lcom/android/server/wm/ContentRecorder$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ContentRecorder;Z[Z)V

    invoke-virtual {v2, v5, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    aget-boolean p0, v3, v1

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    :try_start_1
    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "ContentRecorder"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InterruptedException "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public final isCurrentlyRecording()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onConfigurationChanged(II)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->isCurrentlyRecording()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mLastRecordedBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x1

    if-nez v0, :cond_1

    aget-boolean p0, v1, v3

    if-eqz p0, :cond_9

    iget p0, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long p0, p0

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v0, -0x5be0aef84533cfcbL

    invoke-static {p2, v0, v1, v3, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    aget-boolean p1, v1, v3

    if-eqz p1, :cond_2

    iget p1, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long p1, p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-wide v1, 0x644831a3168135c8L    # 1.1967771415304633E175

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->pauseRecording()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    if-eq p2, v0, :cond_4

    iget-object p2, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {p2}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result p2

    iget-object v4, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v4}, Landroid/view/ContentRecordingSession;->getTargetUid()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/ContentRecorder;->mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

    invoke-interface {v5, p2, v4, v0}, Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;->notifyWindowingModeChanged(III)V

    :cond_4
    aget-boolean p2, v1, v3

    if-eqz p2, :cond_5

    iget p2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v4, p2

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v4, -0x450e649b5fcc792L

    invoke-static {p2, v4, v5, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_5
    iget-object p2, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->fetchSurfaceSizeIfPresent()Landroid/graphics/Point;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ContentRecorder;->mLastRecordedBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/android/server/wm/ContentRecorder;->mLastConsumingSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {p1, v4}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    :cond_6
    const/16 p1, 0x11

    if-eqz v4, :cond_8

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_7

    iget v1, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v1, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-long v5, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v3, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v1, 0x20a003f3ca7d3425L    # 1.52894206491876E-151

    invoke-static {v7, v1, v2, p1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_7
    iget-object p1, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/wm/ContentRecorder;->updateMirroredSurface(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    return-void

    :cond_8
    aget-boolean p0, v1, v3

    if-eqz p0, :cond_9

    iget p0, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v1, p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    int-to-long v5, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, p0, v2, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v1, 0x7538ea2bb40c317cL    # 4.676193748808675E256

    invoke-static {v0, v1, v2, p1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public final onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/ContentRecorder;->mLastOrientation:I

    iget v1, p0, Lcom/android/server/wm/ContentRecorder;->mLastWindowingMode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ContentRecorder;->onConfigurationChanged(II)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/server/wm/ContentRecorder;->mLastOrientation:I

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ContentRecorder;->mLastWindowingMode:I

    return-void
.end method

.method public final onRemoved()V
    .locals 6

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    iget v0, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v3, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, 0x6eed00ee2f523a98L    # 2.1471341689903853E226

    invoke-static {v0, v4, v5, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->unregisterListener()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    iget-object v1, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mContentRecordingController:Lcom/android/server/wm/ContentRecordingController;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/ContentRecordingController;->setContentRecordingSessionLocked(Landroid/view/ContentRecordingSession;Lcom/android/server/wm/WindowManagerService;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ContentRecorder;->stopMediaProjection(I)V

    return-void
.end method

.method public final onVisibleRequestedChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->isCurrentlyRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mLastRecordedBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

    invoke-interface {v0, p1}, Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;->notifyActiveProjectionCapturedContentVisibilityChanged(Z)V

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    :cond_0
    return-void
.end method

.method public final pauseRecording()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_1

    iget v0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v2, v0

    iget-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, -0x3bf3bccc7b9acc94L    # -6.516889920730127E19

    const/16 v5, 0xd

    invoke-static {v4, v2, v3, v5, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    return-void
.end method

.method public final stopMediaProjection(I)V
    .locals 5

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v2, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, 0x5297be083f2335bdL    # 7.556866628430533E89

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder;->mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;->stopActiveProjection(I)V

    :cond_1
    return-void
.end method

.method public final unregisterListener()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->unregisterWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    iput-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    :cond_1
    return-void
.end method

.method public updateMirroredSurface(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-object v2, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, v0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, v2, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v2, v2, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget v9, v1, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Point;->y:I

    iget v11, v4, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v4, v4, Landroid/view/DisplayInfo;->physicalYDpi:F

    div-float v12, v2, v8

    div-float v13, v4, v11

    div-float/2addr v12, v13

    iget-boolean v13, v0, Lcom/android/server/wm/ContentRecorder;->mCorrectForAnisotropicPixels:Z

    if-eqz v13, :cond_1

    const v13, 0x3f79999a    # 0.975f

    cmpl-float v13, v12, v13

    if-lez v13, :cond_0

    const v13, 0x3f833333    # 1.025f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr v11, v8

    div-float/2addr v4, v2

    int-to-float v2, v9

    div-float/2addr v2, v11

    int-to-float v6, v6

    div-float/2addr v2, v6

    int-to-float v6, v10

    div-float/2addr v6, v4

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v11, v2

    iput v11, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v4

    iput v2, v5, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v2, v9

    int-to-float v4, v6

    div-float/2addr v2, v4

    int-to-float v4, v10

    int-to-float v6, v7

    div-float/2addr v4, v6

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v5, Landroid/graphics/PointF;->x:F

    iput v2, v5, Landroid/graphics/PointF;->y:F

    :goto_1
    iget v2, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v4, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v6, v1, Landroid/graphics/Point;->x:I

    const/4 v7, 0x0

    if-eq v2, v6, :cond_2

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    iget v2, v1, Landroid/graphics/Point;->y:I

    if-eq v4, v2, :cond_3

    sub-int/2addr v2, v4

    div-int/lit8 v7, v2, 0x2

    :cond_3
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 v4, 0x1

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_4

    int-to-long v8, v6

    int-to-long v10, v7

    iget v2, v5, Landroid/graphics/PointF;->x:F

    float-to-double v12, v2

    iget v2, v5, Landroid/graphics/PointF;->y:F

    float-to-double v14, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    move-wide/from16 v16, v8

    int-to-long v8, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    move-wide/from16 v18, v8

    int-to-long v8, v2

    iget v2, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move-object v4, v3

    int-to-long v2, v2

    move-wide/from16 v20, v2

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-long v2, v2

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    move-wide/from16 v22, v2

    int-to-long v2, v4

    iget v4, v1, Landroid/graphics/Point;->x:I

    move-wide/from16 v24, v2

    int-to-long v2, v4

    iget v4, v1, Landroid/graphics/Point;->y:I

    move-wide/from16 v26, v2

    int-to-long v2, v4

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v30

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    filled-new-array/range {v28 .. v38}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v8, 0xf46630637663bb4L

    const v3, 0x1555a5

    invoke-static {v4, v8, v9, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_4
    iget-object v2, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object/from16 v8, p1

    invoke-virtual {v8, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    iget v10, v5, Landroid/graphics/PointF;->x:F

    iget v13, v5, Landroid/graphics/PointF;->y:F

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    int-to-float v4, v6

    int-to-float v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v0, Lcom/android/server/wm/ContentRecorder;->mLastRecordedBounds:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/server/wm/ContentRecorder;->mLastConsumingSurfaceSize:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v2, Landroid/graphics/Point;->y:I

    iget-object v1, v0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v1}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v2}, Landroid/view/ContentRecordingSession;->getTargetUid()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/wm/ContentRecorder;->mLastRecordedBounds:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/server/wm/ContentRecorder;->mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;->notifyCaptureBoundsChanged(IILandroid/graphics/Rect;)V

    return-void
.end method

.method public updateRecording()V
    .locals 13

    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->isCurrentlyRecording()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->state:I

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->pauseRecording()V

    return-void

    :cond_1
    iget-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->isCurrentlyRecording()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->state:I

    if-eq v0, v2, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    if-nez v0, :cond_2

    goto/16 :goto_9

    :cond_2
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_CONTENT_MODE_MANAGEMENT:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->canHostTasks()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_9

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->isWaitingForConsent()Z

    move-result v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_1a

    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_4

    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v7, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v7}, Landroid/hardware/display/DisplayManagerInternal;->isDisplayReadyForMirroring(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v0

    iget-object v7, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v7}, Landroid/view/ContentRecordingSession;->getTokenToRecord()Landroid/os/IBinder;

    move-result-object v7

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_6

    if-eq v0, v6, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->handleStartRecordingFailed()V

    aget-boolean v0, v3, v2

    if-eqz v0, :cond_5

    iget v0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v7, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v8, -0x31770038aab0c69dL    # -2.1567211370427395E70

    invoke-static {v0, v8, v9, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_5
    :goto_0
    move-object v0, v5

    goto/16 :goto_3

    :cond_6
    if-eqz v7, :cond_7

    invoke-static {v7}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_1

    :cond_7
    move-object v0, v5

    :goto_1
    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->handleStartRecordingFailed()V

    aget-boolean v0, v3, v2

    if-eqz v0, :cond_5

    iget v0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v7, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v8, 0x52f4a660020031c5L    # 4.206459422493839E91

    invoke-static {v0, v8, v9, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    goto :goto_3

    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->handleStartRecordingFailed()V

    aget-boolean v7, v3, v2

    if-eqz v7, :cond_c

    iget v7, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v7, v7

    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v10, -0xce2f7e5a32bce6bL

    invoke-static {v9, v10, v11, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_3

    :cond_b
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v7, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v7}, Landroid/view/ContentRecordingSession;->getDisplayToRecord()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v7, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v7, v4}, Landroid/hardware/display/DisplayManagerInternal;->setWindowManagerMirroring(IZ)V

    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->handleStartRecordingFailed()V

    aget-boolean v0, v3, v2

    if-eqz v0, :cond_5

    iget v0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v7, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v8, 0x1f7dac0487da3af0L    # 5.402916735791569E-157

    invoke-static {v0, v8, v9, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    :goto_3
    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_d

    goto/16 :goto_9

    :cond_d
    iget-object v7, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v7}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v7

    if-eq v7, v6, :cond_f

    :cond_e
    move-object v0, v5

    goto :goto_5

    :cond_f
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v7

    if-eqz v7, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getWindowType()I

    move-result v7

    const/16 v8, 0x7f6

    if-ne v7, v8, :cond_11

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v7

    iget v7, v7, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget-object v8, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v8}, Landroid/view/ContentRecordingSession;->getRecordingOwnerUid()I

    move-result v8

    if-ne v7, v8, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_5

    :cond_11
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v4

    :goto_4
    if-ge v8, v7, :cond_10

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v6, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :goto_5
    iget-object v6, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    if-eqz v6, :cond_19

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v7

    if-nez v7, :cond_12

    goto/16 :goto_8

    :cond_12
    iget-object v7, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v7}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v7

    if-ne v7, v2, :cond_13

    iget-object v8, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v8

    if-eqz v8, :cond_13

    aget-boolean p0, v3, v2

    if-eqz p0, :cond_1b

    iget p0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v0, p0

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, 0x5e16e522a8363939L    # 1.7868155149658225E145

    invoke-static {p0, v3, v4, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->fetchSurfaceSizeIfPresent()Landroid/graphics/Point;

    move-result-object v8

    if-nez v8, :cond_14

    aget-boolean p0, v3, v2

    if-eqz p0, :cond_1b

    iget p0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v0, p0

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, 0x61daeee590bf3e2fL    # 2.423402035558802E163

    invoke-static {p0, v3, v4, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    :cond_14
    aget-boolean v3, v3, v2

    if-eqz v3, :cond_15

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v9, v3

    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->state:I

    int-to-long v11, v3

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    const-wide v10, 0x1f4e1038d0503faaL    # 6.842737851919891E-158

    const/4 v12, 0x5

    invoke-static {v3, v10, v11, v12, v9}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_15
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SCREENSHOT_FOR_HDR:Z

    if-eqz v3, :cond_16

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ContentRecorder;->invalidateForRecording(Z)V

    :cond_16
    invoke-static {v6, v0}, Landroid/view/SurfaceControl;->mirrorSurface(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v8}, Lcom/android/server/wm/ContentRecorder;->updateMirroredSurface(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

    if-ne v7, v2, :cond_17

    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;->notifyActiveProjectionCapturedContentVisibilityChanged(Z)V

    goto :goto_7

    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    if-eq v1, v2, :cond_18

    goto :goto_6

    :cond_18
    move v2, v4

    :goto_6
    invoke-interface {v0, v2}, Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;->notifyActiveProjectionCapturedContentVisibilityChanged(Z)V

    :goto_7
    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v1}, Landroid/view/ContentRecordingSession;->getTargetUid()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    invoke-interface {v0, v7, v1, p0}, Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;->notifyWindowingModeChanged(III)V

    return-void

    :cond_19
    :goto_8
    aget-boolean p0, v3, v2

    if-eqz p0, :cond_1b

    iget p0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v0, p0

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, -0x694a856f3a74ca5fL    # -2.806030050928672E-199

    invoke-static {p0, v3, v4, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    :cond_1a
    aget-boolean p0, v3, v2

    if-eqz p0, :cond_1b

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, -0x2f1f87ab538ac922L    # -3.905741977683878E81

    invoke-static {p0, v0, v1, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1b
    :goto_9
    return-void
.end method
