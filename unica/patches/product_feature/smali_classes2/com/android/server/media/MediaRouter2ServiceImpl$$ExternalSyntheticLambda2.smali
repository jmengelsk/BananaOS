.class public final synthetic Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 22

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "MR2ServiceImpl"

    const/4 v6, 0x0

    move-object/from16 v7, p0

    iget v7, v7, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v7, :pswitch_data_2c4

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-object/from16 v2, p2

    check-cast v2, Lcom/android/server/media/MediaRoute2Provider;

    move-object/from16 v3, p3

    check-cast v3, Landroid/media/RoutingSessionInfo;

    move-object/from16 v7, p4

    check-cast v7, Ljava/util/Set;

    invoke-virtual {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagerRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_27
    :goto_27
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    iget-object v0, v9, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mTargetPackageName:Ljava/lang/String;

    if-eqz v0, :cond_40

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_40

    move v10, v4

    goto :goto_41

    :cond_40
    move v10, v6

    :goto_41
    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_58

    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    goto :goto_58

    :cond_56
    move v0, v6

    goto :goto_59

    :cond_58
    :goto_58
    move v0, v4

    :goto_59
    if-nez v10, :cond_27

    if-nez v0, :cond_5e

    goto :goto_27

    :cond_5e
    :try_start_5e
    iget-object v0, v9, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    invoke-interface {v0, v3}, Landroid/media/IMediaRouter2Manager;->notifySessionUpdated(Landroid/media/RoutingSessionInfo;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_63} :catch_64

    goto :goto_27

    :catch_64
    move-exception v0

    const-string/jumbo v10, "notifySessionUpdated"

    invoke-virtual {v9, v10, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V

    goto :goto_27

    :cond_6c
    iget-object v0, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider2;

    if-ne v2, v0, :cond_8a

    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_79

    goto :goto_b8

    :cond_79
    invoke-virtual {v1, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouterRecords(Z)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionInfoChangedToRouters(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    invoke-virtual {v1, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouterRecords(Z)Ljava/util/List;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-static {v1, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionInfoChangedToRouters(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    goto :goto_b8

    :cond_8a
    iget-object v0, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    if-nez v0, :cond_ad

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onSessionInfoChangedOnHandler: No matching router found for session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8

    :cond_ad
    filled-new-array {v0}, [Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionInfoChangedToRouters(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    :goto_b8
    return-void

    :pswitch_b9  #0x5
    move-object/from16 v4, p1

    check-cast v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-object/from16 v7, p2

    check-cast v7, Lcom/android/server/media/MediaRoute2Provider;

    move-object/from16 v8, p3

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object/from16 v11, p4

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v13, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_d7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_fb

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    const-wide/16 v15, 0x0

    iget-wide v0, v14, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mUniqueRequestId:J

    cmp-long v0, v0, v9

    if-nez v0, :cond_d7

    iget-object v0, v14, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d7

    move-object v3, v14

    goto :goto_fd

    :cond_fb
    const-wide/16 v15, 0x0

    :goto_fd
    if-nez v3, :cond_136

    iget-object v0, v7, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    filled-new-array {v0, v8, v11}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "handleSessionCreationRequestFailed | No matching request found for provider: %s, uniqueRequestId: %d, reason: %d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->BLUETOOTH_PERMISSIONS_FOR_SYSTEM_ROUTING:[Ljava/lang/String;

    shr-long v0, v9, v2

    long-to-int v0, v0

    invoke-virtual {v4, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findManagerWithId(I)Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    move-result-object v0

    if-eqz v0, :cond_11e

    long-to-int v1, v9

    invoke-virtual {v0, v1, v12}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->notifyRequestFailed(II)V

    :cond_11e
    sget-object v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mMediaRouterMetricLogger:Lcom/android/server/media/MediaRouterMetricLogger;

    packed-switch v12, :pswitch_data_2d4

    goto :goto_132

    :pswitch_124  #0x6
    const/16 v6, 0x8

    goto :goto_132

    :pswitch_127  #0x5
    const/4 v6, 0x7

    goto :goto_132

    :pswitch_129  #0x4
    const/4 v6, 0x6

    goto :goto_132

    :pswitch_12b  #0x3
    const/4 v6, 0x5

    goto :goto_132

    :pswitch_12d  #0x2
    const/4 v6, 0x4

    goto :goto_132

    :pswitch_12f  #0x1
    const/4 v6, 0x3

    goto :goto_132

    :pswitch_131  #0x0
    const/4 v6, 0x2

    :goto_132
    invoke-virtual {v0, v6, v9, v10}, Lcom/android/server/media/MediaRouterMetricLogger;->logRequestResult(IJ)V

    goto :goto_169

    :cond_136
    iget-object v0, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-wide v0, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    cmp-long v6, v0, v15

    if-nez v6, :cond_14a

    sget-object v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->BLUETOOTH_PERMISSIONS_FOR_SYSTEM_ROUTING:[Ljava/lang/String;

    long-to-int v0, v9

    iget-object v1, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    invoke-virtual {v1, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->notifySessionCreationFailed(I)V

    goto :goto_159

    :cond_14a
    sget-object v3, Lcom/android/server/media/MediaRouter2ServiceImpl;->BLUETOOTH_PERMISSIONS_FOR_SYSTEM_ROUTING:[Ljava/lang/String;

    shr-long v2, v0, v2

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findManagerWithId(I)Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    move-result-object v2

    if-eqz v2, :cond_159

    long-to-int v0, v0

    invoke-virtual {v2, v0, v12}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->notifyRequestFailed(II)V

    :cond_159
    :goto_159
    iget-object v0, v7, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    filled-new-array {v0, v8, v11}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "onRequestFailedOnHandler | Finished handling session creation request failed for provider: %s, uniqueRequestId: %d, reason: %d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_169
    return-void

    :pswitch_16a  #0x4
    const-wide/16 v15, 0x0

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-object/from16 v0, p2

    check-cast v0, Lcom/android/server/media/MediaRoute2Provider;

    move-object/from16 v7, p3

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v9, p4

    check-cast v9, Landroid/media/RoutingSessionInfo;

    iget-object v10, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_186
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1a7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    iget-wide v12, v11, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mUniqueRequestId:J

    cmp-long v12, v12, v7

    if-nez v12, :cond_186

    iget-object v12, v11, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v12}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_186

    move-object v3, v11

    :cond_1a7
    if-nez v3, :cond_1ab

    move-wide v10, v15

    goto :goto_1ad

    :cond_1ab
    iget-wide v10, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    :goto_1ad
    sget-object v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->BLUETOOTH_PERMISSIONS_FOR_SYSTEM_ROUTING:[Ljava/lang/String;

    shr-long v12, v10, v2

    long-to-int v2, v12

    long-to-int v10, v10

    invoke-virtual {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagerRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1bb
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1dc

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    :try_start_1c7
    iget-object v12, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    iget v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    if-ne v0, v2, :cond_1cf

    move v0, v10

    goto :goto_1d0

    :cond_1cf
    move v0, v6

    :goto_1d0
    invoke-interface {v12, v0, v9}, Landroid/media/IMediaRouter2Manager;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V
    :try_end_1d3
    .catch Landroid/os/RemoteException; {:try_start_1c7 .. :try_end_1d3} :catch_1d4

    goto :goto_1bb

    :catch_1d4
    move-exception v0

    const-string/jumbo v12, "notifySessionCreatedToManagers: Failed to notify. Manager probably died."

    invoke-static {v5, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1bb

    :cond_1dc
    if-nez v3, :cond_1f8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring session creation result for unknown request. uniqueRequestId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sessionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25e

    :cond_1f8
    iget-object v0, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v0

    if-eqz v0, :cond_213

    iget-object v2, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/media/MediaRoute2Provider;->prepareReleaseSession(Ljava/lang/String;)V

    goto :goto_227

    :cond_213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSessionCreatedOnHandler: Can\'t find provider for an old session. session="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_227
    iget-object v0, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-virtual {v9}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Landroid/util/ArrayMap;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_244

    invoke-virtual {v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->hasSystemRoutingPermission()Z

    move-result v0

    if-nez v0, :cond_244

    iget-object v0, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iget-object v9, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    :cond_244
    long-to-int v0, v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_248
    iget-object v1, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-virtual {v3, v9}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->maybeClearTransferInitiatorIdentity(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/media/IMediaRouter2;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V
    :try_end_251
    .catch Landroid/os/RemoteException; {:try_start_248 .. :try_end_251} :catch_252

    goto :goto_259

    :catch_252
    move-exception v0

    const-string/jumbo v1, "notifySessionCreated"

    invoke-virtual {v3, v1, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V

    :goto_259
    sget-object v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mMediaRouterMetricLogger:Lcom/android/server/media/MediaRouterMetricLogger;

    invoke-virtual {v0, v4, v7, v8}, Lcom/android/server/media/MediaRouterMetricLogger;->logRequestResult(IJ)V

    :goto_25e
    return-void

    :pswitch_25f  #0x3
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/String;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/String;

    move-object/from16 v3, p4

    check-cast v3, Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->$r8$lambda$nXuPds3k0jio2D7WuuvE5DDYAcw(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void

    :pswitch_273  #0x2
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object/from16 v3, p3

    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->$r8$lambda$fFTtstVLACy5dqiCA6mMwECkaiQ(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V

    return-void

    :pswitch_28b  #0x1
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->$r8$lambda$gfBNjj_qEN5gYbuwjbOFgMrSMpU(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLjava/lang/String;I)V

    return-void

    :pswitch_2a7  #0x0
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object/from16 v3, p3

    check-cast v3, Landroid/media/MediaRoute2Info;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->$r8$lambda$e9Sk6TFecCbShGZjiI_FsGfvE-s(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLandroid/media/MediaRoute2Info;I)V

    return-void

    nop

    :pswitch_data_2c4
    .packed-switch 0x0
        :pswitch_2a7  #00000000
        :pswitch_28b  #00000001
        :pswitch_273  #00000002
        :pswitch_25f  #00000003
        :pswitch_16a  #00000004
        :pswitch_b9  #00000005
    .end packed-switch

    :pswitch_data_2d4
    .packed-switch 0x0
        :pswitch_131  #00000000
        :pswitch_12f  #00000001
        :pswitch_12d  #00000002
        :pswitch_12b  #00000003
        :pswitch_129  #00000004
        :pswitch_127  #00000005
        :pswitch_124  #00000006
    .end packed-switch
.end method
