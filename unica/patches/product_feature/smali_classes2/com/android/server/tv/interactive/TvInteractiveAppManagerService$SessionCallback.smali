.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;
.super Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mInputChannels:[Landroid/view/InputChannel;

.field public final mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;[Landroid/view/InputChannel;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iput-object p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mInputChannels:[Landroid/view/InputChannel;

    return-void
.end method


# virtual methods
.method public final addSessionTokenToClientStateLocked(Landroid/media/tv/interactive/ITvInteractiveAppSession;)Z
    .registers 8

    const-string/jumbo v0, "TvInteractiveAppManagerService"

    const/4 v1, 0x0

    :try_start_4
    invoke-interface {p1}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-interface {p1, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_56

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object p1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    invoke-interface {p1}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mClientStateMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    if-nez v3, :cond_49

    new-instance v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget v5, v5, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mUserId:I

    invoke-direct {v3, v4, p1, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;I)V

    :try_start_36
    invoke-interface {p1, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_39} :catch_41

    iget-object v0, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mClientStateMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    :catch_41
    move-exception p0

    const-string/jumbo p1, "client process has already died"

    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_49
    :goto_49
    iget-object p1, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSessionToken:Landroid/os/IBinder;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :catch_56
    move-exception p0

    const-string/jumbo p1, "session process has already died"

    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final onAdBufferReady(Landroid/media/tv/AdBuffer;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1f

    if-nez v1, :cond_10

    goto :goto_40

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onAdBufferReady(Landroid/media/tv/AdBuffer;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_23
    .catchall {:try_start_10 .. :try_end_15} :catchall_21

    if-eqz p1, :cond_34

    :try_start_17
    invoke-virtual {p1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object p0

    :goto_1b
    invoke-virtual {p0}, Landroid/os/SharedMemory;->close()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1f

    goto :goto_34

    :catchall_1f
    move-exception p0

    goto :goto_42

    :catchall_21
    move-exception p0

    goto :goto_36

    :catch_23
    move-exception p0

    :try_start_24
    const-string/jumbo v1, "TvInteractiveAppManagerService"

    const-string/jumbo v2, "error in onAdBuffer"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_21

    if-eqz p1, :cond_34

    :try_start_2f
    invoke-virtual {p1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object p0

    goto :goto_1b

    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    :goto_36
    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/SharedMemory;->close()V

    :cond_3f
    throw p0

    :cond_40
    :goto_40
    monitor-exit v0

    return-void

    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_2f .. :try_end_43} :catchall_1f

    throw p0
.end method

.method public final onAdRequest(Landroid/media/tv/AdRequest;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onAdRequest(Landroid/media/tv/AdRequest;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo v1, "error in onAdRequest"

    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public final onBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in onBiInteractiveAppCreated"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public final onBroadcastInfoRequest(Landroid/media/tv/BroadcastInfoRequest;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onBroadcastInfoRequest(Landroid/media/tv/BroadcastInfoRequest;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo v1, "error in onBroadcastInfoRequest"

    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public final onCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onCommandRequest(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in onCommandRequest"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public final onLayoutSurface(IIII)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v0, :cond_2a

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1a

    if-nez v2, :cond_10

    goto :goto_2a

    :cond_10
    :try_start_10
    iget v7, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onLayoutSurface(IIIII)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1d
    .catchall {:try_start_10 .. :try_end_19} :catchall_1a

    goto :goto_28

    :catchall_1a
    move-exception v0

    move-object p0, v0

    goto :goto_2c

    :catch_1d
    move-exception v0

    move-object p0, v0

    :try_start_1f
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in onLayoutSurface"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    monitor-exit v1

    return-void

    :cond_2a
    :goto_2a
    monitor-exit v1

    return-void

    :goto_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_1a

    throw p0
.end method

.method public final onRemoveBroadcastInfo(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRemoveBroadcastInfo(II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo v1, "error in onRemoveBroadcastInfo"

    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public final onRequestAvailableSpeeds()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestAvailableSpeeds(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo v1, "TvInteractiveAppManagerService"

    const-string/jumbo v2, "error in onRequestAvailableSpeeds"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public final onRequestCertificate(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestCertificate(Ljava/lang/String;II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in onRequestCertificate"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public final onRequestCurrentChannelLcn()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestCurrentChannelLcn(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo v1, "TvInteractiveAppManagerService"

    const-string/jumbo v2, "error in onRequestCurrentChannelLcn"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public final onRequestCurrentChannelUri()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestCurrentChannelUri(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo v1, "TvInteractiveAppManagerService"

    const-string/jumbo v2, "error in onRequestCurrentChannelUri"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public final onRequestCurrentTvInputId()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestCurrentTvInputId(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo v1, "TvInteractiveAppManagerService"

    const-string/jumbo v2, "error in onRequestCurrentTvInputId"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public final onRequestCurrentVideoBounds()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestCurrentVideoBounds(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo v1, "TvInteractiveAppManagerService"

    const-string/jumbo v2, "error in onRequestCurrentVideoBounds"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public final onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v0, :cond_2b

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1b

    if-nez v2, :cond_10

    goto :goto_2b

    :cond_10
    :try_start_10
    iget v8, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v8}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_1e
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1b

    goto :goto_29

    :catchall_1b
    move-exception v0

    move-object p0, v0

    goto :goto_2d

    :catch_1e
    move-exception v0

    move-object p0, v0

    :try_start_20
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in onRequestScheduleRecording"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    monitor-exit v1

    return-void

    :cond_2b
    :goto_2b
    monitor-exit v1

    return-void

    :goto_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_1b

    throw p0
.end method

.method public final onRequestScheduleRecording2(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V
    .registers 23

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v0, :cond_32

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_22

    if-nez v2, :cond_10

    goto :goto_32

    :cond_10
    :try_start_10
    iget v12, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v12}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestScheduleRecording2(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_21} :catch_25
    .catchall {:try_start_10 .. :try_end_21} :catchall_22

    goto :goto_30

    :catchall_22
    move-exception v0

    move-object p0, v0

    goto :goto_34

    :catch_25
    move-exception v0

    move-object p0, v0

    :try_start_27
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo v0, "error in onRequestScheduleRecording2"

    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_30
    monitor-exit v1

    return-void

    :cond_32
    :goto_32
    monitor-exit v1

    return-void

    :goto_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_22

    throw p0
.end method

.method public final onRequestSelectedTrackInfo()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestSelectedTrackInfo(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo v1, "TvInteractiveAppManagerService"

    const-string/jumbo v2, "error in onRequestSelectedTrackInfo"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public final onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v0, :cond_2a

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1a

    if-nez v2, :cond_10

    goto :goto_2a

    :cond_10
    :try_start_10
    iget v7, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1d
    .catchall {:try_start_10 .. :try_end_19} :catchall_1a

    goto :goto_28

    :catchall_1a
    move-exception v0

    move-object p0, v0

    goto :goto_2c

    :catch_1d
    move-exception v0

    move-object p0, v0

    :try_start_1f
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in onRequestSigning"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    monitor-exit v1

    return-void

    :cond_2a
    :goto_2a
    monitor-exit v1

    return-void

    :goto_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_1a

    throw p0
.end method

.method public final onRequestSigning2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v0, :cond_2b

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1b

    if-nez v2, :cond_10

    goto :goto_2b

    :cond_10
    :try_start_10
    iget v8, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v8}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestSigning2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BI)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_1e
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1b

    goto :goto_29

    :catchall_1b
    move-exception v0

    move-object p0, v0

    goto :goto_2d

    :catch_1e
    move-exception v0

    move-object p0, v0

    :try_start_20
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in onRequestSigning"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    monitor-exit v1

    return-void

    :cond_2b
    :goto_2b
    monitor-exit v1

    return-void

    :goto_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_1b

    throw p0
.end method

.method public final onRequestStartRecording(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestStartRecording(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in onRequestStartRecording"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public final onRequestStopRecording(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestStopRecording(Ljava/lang/String;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo v1, "error in onRequestStopRecording"

    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public final onRequestStreamVolume()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestStreamVolume(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo v1, "TvInteractiveAppManagerService"

    const-string/jumbo v2, "error in onRequestStreamVolume"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public final onRequestTimeShiftMode()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestTimeShiftMode(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo v1, "TvInteractiveAppManagerService"

    const-string/jumbo v2, "error in onRequestTimeShiftMode"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public final onRequestTrackInfoList()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestTrackInfoList(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo v1, "TvInteractiveAppManagerService"

    const-string/jumbo v2, "error in onRequestTrackInfoList"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public final onRequestTvRecordingInfo(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestTvRecordingInfo(Ljava/lang/String;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo v1, "error in onRequestTvRecordingInfo"

    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public final onRequestTvRecordingInfoList(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestTvRecordingInfoList(II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo v1, "error in onRequestTvRecordingInfoList"

    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public final onSessionCreated(Landroid/media/tv/interactive/ITvInteractiveAppSession;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iput-object p1, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    const/4 v1, 0x0

    if-eqz p1, :cond_26

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->addSessionTokenToClientStateLocked(Landroid/media/tv/interactive/ITvInteractiveAppSession;)Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v2, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    iget-object v3, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mIAppServiceId:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSessionToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mInputChannels:[Landroid/view/InputChannel;

    aget-object v5, v5, v1

    iget p1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-static {v2, v3, v4, v5, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    goto :goto_3d

    :catchall_24
    move-exception p0

    goto :goto_46

    :cond_26
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v3, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSessionToken:Landroid/os/IBinder;

    iget v2, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mUserId:I

    invoke-virtual {p1, v2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeSessionStateLocked$1(ILandroid/os/IBinder;)V

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v2, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    iget-object v3, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mIAppServiceId:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    :goto_3d
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mInputChannels:[Landroid/view/InputChannel;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    monitor-exit v0

    return-void

    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_24

    throw p0
.end method

.method public final onSessionStateChanged(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onSessionStateChanged(III)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in onSessionStateChanged"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public final onSetTvRecordingInfo(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onSetTvRecordingInfo(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in onSetTvRecordingInfo"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public final onSetVideoBounds(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onSetVideoBounds(Landroid/graphics/Rect;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo v1, "error in onSetVideoBounds"

    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public final onTeletextAppStateChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onTeletextAppStateChanged(II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo v1, "error in onTeletextAppStateChanged"

    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public final onTimeShiftCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    if-nez v1, :cond_10

    goto :goto_24

    :cond_10
    :try_start_10
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onTimeShiftCommandRequest(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception p0

    goto :goto_26

    :catch_18
    move-exception p0

    :try_start_19
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in onTimeShiftCommandRequest"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    monitor-exit v0

    return-void

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_16

    throw p0
.end method
