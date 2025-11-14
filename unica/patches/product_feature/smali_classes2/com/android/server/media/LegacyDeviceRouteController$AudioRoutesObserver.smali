.class public final Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;
.super Landroid/media/IAudioRoutesObserver$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/LegacyDeviceRouteController;


# direct methods
.method public constructor <init>(Lcom/android/server/media/LegacyDeviceRouteController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/LegacyDeviceRouteController;

    invoke-direct {p0}, Landroid/media/IAudioRoutesObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/LegacyDeviceRouteController;

    invoke-virtual {v0, p1}, Lcom/android/server/media/LegacyDeviceRouteController;->createRouteFromAudioInfo(Landroid/media/AudioRoutesInfo;)Landroid/media/MediaRoute2Info;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/LegacyDeviceRouteController;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/LegacyDeviceRouteController;

    iput-object p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mOnDeviceRouteChangedListener:Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    iget-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
