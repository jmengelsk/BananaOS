.class public final Lcom/android/server/tv/TvInputManagerService$SessionCallback;
.super Landroid/media/tv/ITvInputSessionCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mChannels:[Landroid/view/InputChannel;

.field public final mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;[Landroid/view/InputChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/media/tv/ITvInputSessionCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iput-object p3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mChannels:[Landroid/view/InputChannel;

    return-void
.end method


# virtual methods
.method public final addSessionTokenToClientStateLocked(Landroid/media/tv/ITvInputSession;)Z
    .locals 6

    const-string/jumbo v0, "TvInputManagerService"

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Landroid/media/tv/ITvInputSession;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-interface {p1, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    invoke-interface {p1}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget v3, v3, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    sget-object v4, Lcom/android/server/tv/TvInputManagerService;->sFrontEndDevicePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ClientState;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/server/tv/TvInputManagerService$ClientState;

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget v5, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    invoke-direct {v3, v4, p1, v5}, Lcom/android/server/tv/TvInputManagerService$ClientState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V

    :try_start_1
    invoke-interface {p1, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, v2, Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "client process has already died"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_0
    :goto_0
    iget-object p1, v3, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :catch_1
    move-exception p0

    const-string/jumbo p1, "session process has already died"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final onAdBufferConsumed(Landroid/media/tv/AdBuffer;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onAdBufferConsumed(Landroid/media/tv/AdBuffer;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Landroid/os/SharedMemory;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_3
    const-string/jumbo v1, "TvInputManagerService"

    const-string/jumbo v2, "error in onAdBufferConsumed"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_1

    :try_start_4
    invoke-virtual {p1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object p0

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/SharedMemory;->close()V

    :cond_2
    throw p0

    :cond_3
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final onAdResponse(Landroid/media/tv/AdResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onAdResponse(Landroid/media/tv/AdResponse;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo v1, "error in onAdResponse"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onAitInfoUpdated(Landroid/media/tv/AitInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onAitInfoUpdated(Landroid/media/tv/AitInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo v1, "error in onAitInfoUpdated"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onAudioPresentationSelected(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ITvInputClient;->onAudioPresentationSelected(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo p2, "error in onAudioPresentationSelected"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onAudioPresentationsChanged(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onAudioPresentationsChanged(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo v1, "error in onAudioPresentationsChanged"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onAvailableSpeeds([F)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onAvailableSpeeds([FI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo v1, "error in onAvailableSpeeds"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo v1, "error in onBroadcastInfoResponse"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onChannelRetuned(Landroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    :try_start_1
    iget v1, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v2, p1, v1}, Landroid/media/tv/ITvInputClient;->onChannelRetuned(Landroid/net/Uri;I)V

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-boolean v2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->currentChannel:Landroid/net/Uri;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget v2, v2, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    invoke-virtual {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z

    iput-object p1, v2, Lcom/android/server/tv/TvInputManagerService$SessionState;->currentChannel:Landroid/net/Uri;

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {p1, v1}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-boolean v1, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1, p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionActualInputId(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v1, v1, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/server/tv/TvInputManagerService;->logExternalInputEvent(ILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iput-object p1, v1, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iput-object p0, v1, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo v1, "error in onChannelRetuned"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :cond_4
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onContentAllowed()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p0}, Landroid/media/tv/ITvInputClient;->onContentAllowed(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo v1, "TvInputManagerService"

    const-string/jumbo v2, "error in onContentAllowed"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onContentBlocked(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onContentBlocked(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo v1, "error in onContentBlocked"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onCueingMessageAvailability(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onCueingMessageAvailability(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo v1, "error in onCueingMessageAvailability"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onError(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onError(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo v1, "error in onError"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onLayoutSurface(IIII)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v1, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget v7, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/media/tv/ITvInputClient;->onLayoutSurface(IIIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo p2, "error in onLayoutSurface"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onRecordingStopped(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onRecordingStopped(Landroid/net/Uri;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo v1, "error in onRecordingStopped"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iput-object p1, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    iput-object p2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->addSessionTokenToClientStateLocked(Landroid/media/tv/ITvInputSession;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    iget-object v3, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mChannels:[Landroid/view/InputChannel;

    aget-object v5, v5, p2

    iget v1, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v4, v5, v1}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    iget v1, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    invoke-virtual {p1, v1, v2}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(ILandroid/os/IBinder;)V

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    iget-object v3, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {v2, v3, p1, p1, v1}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    :goto_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mChannels:[Landroid/view/InputChannel;

    aget-object p0, p0, p2

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ITvInputClient;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo p2, "error in onSessionEvent"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onSignalStrength(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onSignalStrength(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo v1, "error in onSignalStrength"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onTimeShiftCurrentPositionChanged(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ITvInputClient;->onTimeShiftCurrentPositionChanged(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo p2, "error in onTimeShiftCurrentPositionChanged"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onTimeShiftMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onTimeShiftMode(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo v1, "error in onTimeShiftMode"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onTimeShiftStartPositionChanged(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ITvInputClient;->onTimeShiftStartPositionChanged(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo p2, "error in onTimeShiftStartPositionChanged"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onTimeShiftStatusChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onTimeShiftStatusChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo v1, "error in onTimeShiftStatusChanged"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onTrackSelected(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ITvInputClient;->onTrackSelected(ILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo p2, "error in onTrackSelected"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onTracksChanged(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onTracksChanged(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo v1, "error in onTracksChanged"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onTuned(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onTuned(Landroid/net/Uri;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo v1, "error in onTuned"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ITvInputClient;->onTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo p2, "error in onTvInputSessionData"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onTvMessage(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ITvInputClient;->onTvMessage(ILandroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo p2, "error in onTvMessage"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onVideoAvailable()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v3, v2, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$smgetTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v3, v2, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    iget v2, v2, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v3, v2}, Landroid/media/tv/ITvInputClient;->onVideoAvailable(I)V

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    const/4 v3, 0x6

    invoke-static {v2, v3, p0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mlogTuneStateChanged(Lcom/android/server/tv/TvInputManagerService;ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo v1, "TvInputManagerService"

    const-string/jumbo v2, "error in onVideoAvailable"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onVideoFreezeUpdated(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onVideoFreezeUpdated(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo v1, "error in onVideoFreezeUpdated"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onVideoUnavailable(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v3, v2, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$smgetTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v3, v2, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    iget v2, v2, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v3, p1, v2}, Landroid/media/tv/ITvInputClient;->onVideoUnavailable(II)V

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->getVideoUnavailableReasonForStatsd(I)I

    move-result p1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2, p1, p0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mlogTuneStateChanged(Lcom/android/server/tv/TvInputManagerService;ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo v1, "error in onVideoUnavailable"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
