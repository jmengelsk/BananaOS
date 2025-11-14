.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;
.super Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mComponent:Landroid/content/ComponentName;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mUserId:I

    return-void
.end method


# virtual methods
.method public final onStateChanged(III)V
    .locals 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v2, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    iget v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mUserId:I

    invoke-static {v3, v4, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetServiceStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mIAppServiceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mUserId:I

    invoke-virtual {v4, p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p0

    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    :try_start_2
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    invoke-interface {v6, v3, p1, p2, p3}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;->onStateChanged(Ljava/lang/String;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_3
    const-string/jumbo v7, "TvInteractiveAppManagerService"

    const-string/jumbo v8, "failed to report RTE state changed"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
