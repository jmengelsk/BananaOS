.class public final Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object p1, p1, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iput-object p3, p2, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    iget-object p2, p2, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p2, :cond_0

    const-string/jumbo p2, "MediaProjectionManagerService"

    const-string p3, "Content Recording: Stopped MediaProjection due to route type of REMOTE_DISPLAY not selected"

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/16 p2, 0x9

    invoke-virtual {p0, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    if-ne p1, p3, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    :cond_0
    return-void
.end method
