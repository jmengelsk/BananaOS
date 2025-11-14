.class public final Lcom/android/server/media/projection/MediaProjectionManagerService$1;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$1;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .registers 4

    return-void
.end method

.method public final onForegroundServicesChanged(III)V
    .registers 6

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$1;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_5
    iget-object p3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p3, :cond_47

    iget v0, p3, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    if-eq v0, p2, :cond_e

    goto :goto_47

    :cond_e
    iget v0, p3, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mTargetSdkVersion:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1a

    iget-boolean p3, p3, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mIsPrivileged:Z

    if-nez p3, :cond_1a

    const/4 p3, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p3, 0x0

    :goto_1b
    if-nez p3, :cond_21

    monitor-exit p1

    return-void

    :catchall_1f
    move-exception p0

    goto :goto_49

    :cond_21
    monitor-exit p1
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_1f

    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const/16 p3, 0x20

    invoke-virtual {p1, p2, p3}, Landroid/app/ActivityManagerInternal;->hasRunningForegroundService(II)Z

    move-result p1

    if-eqz p1, :cond_2d

    return-void

    :cond_2d
    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_30
    const-string/jumbo p1, "MediaProjectionManagerService"

    const-string p3, "Content Recording: Stopped MediaProjection due to foreground service change"

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p0, :cond_43

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    goto :goto_43

    :catchall_41
    move-exception p0

    goto :goto_45

    :cond_43
    :goto_43
    monitor-exit p2

    return-void

    :goto_45
    monitor-exit p2
    :try_end_46
    .catchall {:try_start_30 .. :try_end_46} :catchall_41

    throw p0

    :cond_47
    :goto_47
    :try_start_47
    monitor-exit p1

    return-void

    :goto_49
    monitor-exit p1
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_1f

    throw p0
.end method

.method public final onProcessDied(II)V
    .registers 3

    return-void
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    return-void
.end method
