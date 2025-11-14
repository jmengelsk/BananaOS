.class public final synthetic Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/RoutingSessionInfo;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;

    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/content/ComponentName;

    iget-object v0, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    sget-boolean v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    invoke-virtual {v0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->unbind()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "Route provider service (%s) binding died, but we did not rebind."

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "MR2ProviderSvcProxy"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;

    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/os/IBinder;

    iget-object v0, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    sget-boolean v3, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    const-string/jumbo v4, "MR2ProviderSvcProxy"

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": Connected"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v5, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mBound:Z

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->disconnect()V

    invoke-static {p0}, Landroid/media/IMediaRoute2ProviderService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRoute2ProviderService;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v5, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    invoke-direct {v5, v0, p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;-><init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Landroid/media/IMediaRoute2ProviderService;)V

    :try_start_0
    invoke-interface {p0}, Landroid/media/IMediaRoute2ProviderService;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v6, v5, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, v5, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mCallbackStub:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;

    invoke-interface {p0, v1}, Landroid/media/IMediaRoute2ProviderService;->setCallback(Landroid/media/IMediaRoute2ProviderServiceCallback;)V

    iget-object p0, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda5;

    invoke-direct {v1, v2, v5}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v5, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    goto :goto_0

    :catch_0
    invoke-virtual {v5}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->binderDied()V

    if-eqz v3, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Registration failed"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Service returned invalid binder"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :pswitch_1
    iget-object v3, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    iget-object v4, v3, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    iget-object v5, v4, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-eq v5, v3, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v3, v4, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v5, v1

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/RoutingSessionInfo;

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v6}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->assignProviderIdForSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSystemSessionCallbacks:Ljava/util/Map;

    invoke-virtual {v6}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object v8

    check-cast v7, Landroid/util/ArrayMap;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$SystemMediaSessionCallback;

    if-eqz v7, :cond_5

    invoke-interface {v7, v6}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$SystemMediaSessionCallback;->onSessionUpdate(Landroid/media/RoutingSessionInfo;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_5
    move v7, v1

    :goto_2
    iget-object v8, v4, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    iget-object v8, v4, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/RoutingSessionInfo;

    invoke-virtual {v8}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_3

    :cond_6
    add-int/2addr v7, v2

    goto :goto_2

    :cond_7
    move v7, v0

    :goto_3
    const-wide/16 v8, 0x0

    if-gez v7, :cond_8

    iget-object v7, v4, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    add-int/lit8 v10, v5, 0x1

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v5, v4, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    iget-object v7, v4, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda2;

    invoke-direct {v11, v7, v2}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;I)V

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v11, v4, v7, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v5, v10

    goto :goto_1

    :cond_8
    if-ge v7, v5, :cond_9

    const-string/jumbo v7, "MR2ProviderSvcProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring duplicate session ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    iget-object v10, v4, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/RoutingSessionInfo;

    invoke-virtual {v4, v8, v9, v10, v6}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->createSessionWithPopulatedTransferInitiationDataLocked(JLandroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    move-result-object v6

    iget-object v8, v4, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v7, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v4, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    add-int/lit8 v9, v5, 0x1

    invoke-static {v8, v7, v5}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    iget-object v5, v4, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    iget-object v7, v4, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda2;

    invoke-direct {v8, v7, v1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;I)V

    sget-object v7, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-static {v8, v4, v6, v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v5, v9

    goto/16 :goto_1

    :cond_a
    iget-object p0, v4, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v2

    :goto_4
    if-lt p0, v5, :cond_b

    iget-object v1, v4, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    iget-object v2, v4, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSessionOriginalIdToTransferRequest:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v6

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v4, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    iget-object v6, v4, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda3;

    invoke-direct {v7, v6}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    invoke-static {v7, v4, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/2addr p0, v0

    goto :goto_4

    :cond_b
    monitor-exit v3

    :goto_5
    return-void

    :goto_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/media/RoutingSessionInfo;

    iget-object v3, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    iget-object v4, v3, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-eq v4, v0, :cond_c

    goto/16 :goto_8

    :cond_c
    if-nez p0, :cond_d

    const-string/jumbo p0, "MR2ProviderSvcProxy"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onSessionReleased: Ignoring null session sent from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_d
    invoke-virtual {v3, p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->assignProviderIdForSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    move-result-object p0

    iget-object v0, v3, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v4, v3, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSystemSessionCallbacks:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object v5

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$SystemMediaSessionCallback;

    if-eqz v4, :cond_e

    invoke-interface {v4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$SystemMediaSessionCallback;->onSessionReleased()V

    monitor-exit v0

    goto/16 :goto_8

    :catchall_1
    move-exception p0

    goto/16 :goto_9

    :cond_e
    iget-object v4, v3, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSessionOriginalIdToTransferRequest:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v5

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :cond_f
    if-ge v6, v5, :cond_10

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/2addr v6, v2

    check-cast v7, Landroid/media/RoutingSessionInfo;

    invoke-virtual {v7}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v4, v3, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v4, v2

    goto :goto_7

    :cond_10
    move v4, v1

    :goto_7
    if-nez v4, :cond_12

    iget-object v5, v3, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mReleasingSessions:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    :cond_11
    if-ge v1, v6, :cond_12

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/2addr v1, v2

    check-cast v7, Landroid/media/RoutingSessionInfo;

    invoke-virtual {v7}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object p0, v3, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mReleasingSessions:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_8

    :cond_12
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v4, :cond_13

    const-string/jumbo p0, "MR2ProviderSvcProxy"

    const-string/jumbo v0, "onSessionReleased: Matching session info not found"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_13
    iget-object v0, v3, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda4;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-static {v1, v0, v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_8
    return-void

    :goto_9
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaRoute2ProviderInfo;

    iget-object v1, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    iget-object v2, v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-eq v2, v0, :cond_14

    goto :goto_a

    :cond_14
    sget-boolean v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": updated"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "MR2ProviderSvcProxy"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    invoke-virtual {v1, p0}, Lcom/android/server/media/MediaRoute2Provider;->setProviderState(Landroid/media/MediaRoute2ProviderInfo;)V

    invoke-virtual {v1}, Lcom/android/server/media/MediaRoute2Provider;->notifyProviderState()V

    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
