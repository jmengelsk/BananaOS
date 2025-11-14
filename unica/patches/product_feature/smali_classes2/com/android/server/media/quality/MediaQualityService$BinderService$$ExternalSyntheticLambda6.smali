.class public final synthetic Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/media/quality/MediaQualityService$BinderService;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;ZI)V
    .locals 0

    iput p3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/media/quality/MediaQualityService$BinderService;

    iput-boolean p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda6;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/media/quality/MediaQualityService$BinderService;

    iget-boolean p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda6;->f$1:Z

    invoke-virtual {v0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalSoundQualityServicePermission()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v1, v1, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v4, v5, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/String;III)V

    :cond_0
    iget-object v1, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v1, v1, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    if-eqz v2, :cond_1

    check-cast v2, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-virtual {v2}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;->isAutoAqSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    check-cast v0, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-virtual {v0, p0}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;->setAutoAqEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string/jumbo v0, "MediaQualityService"

    const-string v2, "Failed to set auto sound quality"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/media/quality/MediaQualityService$BinderService;

    iget-boolean p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda6;->f$1:Z

    invoke-virtual {v0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v1, v1, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v4, v5, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/String;III)V

    :cond_2
    iget-object v1, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v1, v1, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v2, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    if-eqz v2, :cond_3

    check-cast v2, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-virtual {v2}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;->isAutoPqSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    check-cast v0, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-virtual {v0, p0}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;->setAutoPqEnabled(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :try_start_3
    const-string/jumbo v0, "MediaQualityService"

    const-string v2, "Failed to set auto picture quality"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/media/quality/MediaQualityService$BinderService;

    iget-boolean p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda6;->f$1:Z

    invoke-virtual {v0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v1, v1, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v4, v5, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/String;III)V

    :cond_4
    iget-object v1, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v1, v1, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    if-eqz v2, :cond_5

    check-cast v2, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-virtual {v2}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;->isAutoSrSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    check-cast v0, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-virtual {v0, p0}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;->setAutoSrEnabled(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    :try_start_5
    const-string/jumbo v0, "MediaQualityService"

    const-string v2, "Failed to set super resolution"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_4
    monitor-exit v1

    return-void

    :goto_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
