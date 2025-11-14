.class public final Lcom/android/server/media/projection/MediaProjectionManagerService$1;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$1;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 0

    return-void
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$1;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p3, :cond_5

    iget v0, p3, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    if-eq v0, p2, :cond_0

    goto :goto_3

    :cond_0
    iget v0, p3, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mTargetSdkVersion:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    iget-boolean p3, p3, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mIsPrivileged:Z

    if-nez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_2

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const/16 p3, 0x20

    invoke-virtual {p1, p2, p3}, Landroid/app/ActivityManagerInternal;->hasRunningForegroundService(II)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    const-string/jumbo p1, "MediaProjectionManagerService"

    const-string p3, "Content Recording: Stopped MediaProjection due to foreground service change"

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p0, :cond_4

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_1
    monitor-exit p2

    return-void

    :goto_2
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_5
    :goto_3
    :try_start_2
    monitor-exit p1

    return-void

    :goto_4
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onProcessDied(II)V
    .locals 0

    return-void
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
