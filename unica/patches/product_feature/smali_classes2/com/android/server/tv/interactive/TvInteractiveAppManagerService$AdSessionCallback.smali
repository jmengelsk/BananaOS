.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;
.super Landroid/media/tv/ad/ITvAdSessionCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mInputChannels:[Landroid/view/InputChannel;

.field public final mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;[Landroid/view/InputChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    iput-object p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mInputChannels:[Landroid/view/InputChannel;

    return-void
.end method


# virtual methods
.method public final addAdSessionTokenToClientStateLocked(Landroid/media/tv/ad/ITvAdSession;)Z
    .locals 6

    const-string/jumbo v0, "TvInteractiveAppManagerService"

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Landroid/media/tv/ad/ITvAdSession;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-interface {p1, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    iget-object p1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;

    invoke-interface {p1}, Landroid/media/tv/ad/ITvAdClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    iget v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mClientStateMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    iget v5, v5, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mUserId:I

    invoke-direct {v3, v4, p1, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;I)V

    :try_start_1
    invoke-interface {p1, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mClientStateMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "client process has already died"

    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_0
    :goto_0
    iget-object p1, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSessionToken:Landroid/os/IBinder;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :catch_1
    move-exception p0

    const-string/jumbo p1, "session process has already died"

    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final onLayoutSurface(IIII)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget v7, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/media/tv/ad/ITvAdClient;->onLayoutSurface(IIIII)V
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
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in onLayoutSurface"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

.method public final onRequestCurrentChannelUri()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    invoke-interface {v1, p0}, Landroid/media/tv/ad/ITvAdClient;->onRequestCurrentChannelUri(I)V
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
    const-string/jumbo v1, "TvInteractiveAppManagerService"

    const-string/jumbo v2, "error in onRequestCurrentChannelUri"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

.method public final onRequestCurrentTvInputId()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    invoke-interface {v1, p0}, Landroid/media/tv/ad/ITvAdClient;->onRequestCurrentTvInputId(I)V
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
    const-string/jumbo v1, "TvInteractiveAppManagerService"

    const-string/jumbo v2, "error in onRequestCurrentTvInputId"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

.method public final onRequestCurrentVideoBounds()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    invoke-interface {v1, p0}, Landroid/media/tv/ad/ITvAdClient;->onRequestCurrentVideoBounds(I)V
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
    const-string/jumbo v1, "TvInteractiveAppManagerService"

    const-string/jumbo v2, "error in onRequestCurrentVideoBounds"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

.method public final onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget v7, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/media/tv/ad/ITvAdClient;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V
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
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in onRequestSigning"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

.method public final onRequestTrackInfoList()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    invoke-interface {v1, p0}, Landroid/media/tv/ad/ITvAdClient;->onRequestTrackInfoList(I)V
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
    const-string/jumbo v1, "TvInteractiveAppManagerService"

    const-string/jumbo v2, "error in onRequestTrackInfoList"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

.method public final onSessionCreated(Landroid/media/tv/ad/ITvAdSession;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    iput-object p1, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->addAdSessionTokenToClientStateLocked(Landroid/media/tv/ad/ITvAdSession;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    iget-object v2, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;

    iget-object v3, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mAdServiceId:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSessionToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mInputChannels:[Landroid/view/InputChannel;

    aget-object v5, v5, v1

    iget p1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    invoke-static {v2, v3, v4, v5, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendAdSessionTokenToClientLocked(Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    iget-object v3, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSessionToken:Landroid/os/IBinder;

    iget v2, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mUserId:I

    invoke-virtual {p1, v2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeAdSessionStateLocked(ILandroid/os/IBinder;)V

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    iget-object v2, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;

    iget-object v3, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mAdServiceId:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendAdSessionTokenToClientLocked(Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    :goto_0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mInputChannels:[Landroid/view/InputChannel;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ad/ITvAdClient;->onTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;I)V
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
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in onTvAdSessionData"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
