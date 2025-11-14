.class public final Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;


# instance fields
.field public final mDisplayId:I

.field public mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    iput p1, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mDisplayId:I

    return-void
.end method


# virtual methods
.method public final fetchMediaProjectionManager()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    return-void
.end method

.method public final notifyActiveProjectionCapturedContentVisibilityChanged(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->fetchMediaProjectionManager()V

    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/media/projection/IMediaProjectionManager;->notifyActiveProjectionCapturedContentVisibilityChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 v0, 0x4

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v0, 0x0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v1, 0x16357972e5e23934L

    invoke-static {p1, v1, v2, v0, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final notifyCaptureBoundsChanged(IILandroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->fetchMediaProjectionManager()V

    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/media/projection/IMediaProjectionManager;->notifyCaptureBoundsChanged(IILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 p2, 0x4

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 p2, 0x0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v0, 0x39e4ee58ac5f3856L    # 8.255839796801303E-30

    invoke-static {p1, v0, v1, p2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final notifyWindowingModeChanged(III)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->fetchMediaProjectionManager()V

    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/media/projection/IMediaProjectionManager;->notifyWindowingModeChanged(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 p2, 0x4

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 p2, 0x0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v0, -0x1424aecde7ddcd54L    # -3.592300748717029E211

    invoke-static {p1, v0, v1, p2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final stopActiveProjection(I)V
    .locals 9

    iget v0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mDisplayId:I

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->fetchMediaProjectionManager()V

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x4

    :try_start_0
    aget-boolean v4, v1, v3

    if-eqz v4, :cond_1

    int-to-long v4, v0

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v7, 0x2c6128f062ff341dL    # 6.426974591688406E-95

    invoke-static {v6, v7, v8, v2, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {p0, p1}, Landroid/media/projection/IMediaProjectionManager;->stopActiveProjection(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    aget-boolean p1, v1, v3

    if-eqz p1, :cond_2

    int-to-long v0, v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v0, 0x3cf377066afc38ecL    # 4.322085285124858E-15

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return-void
.end method
