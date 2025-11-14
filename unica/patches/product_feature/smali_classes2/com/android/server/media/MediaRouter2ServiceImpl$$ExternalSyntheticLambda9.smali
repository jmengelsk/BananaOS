.class public final synthetic Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda9;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 18

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    move-object/from16 v4, p0

    iget v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda9;->$r8$classId:I

    packed-switch v4, :pswitch_data_0

    move-object/from16 v4, p1

    check-cast v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-object/from16 v5, p2

    check-cast v5, Lcom/android/server/media/MediaRoute2Provider;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v5, Lcom/android/server/media/MediaRoute2Provider;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    iget-object v7, v5, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    const/4 v9, 0x0

    :goto_0
    move-object v10, v8

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, -0x1

    if-ge v9, v11, :cond_1

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/MediaRoute2ProviderInfo;

    invoke-virtual {v10}, Landroid/media/MediaRoute2ProviderInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v9, v3

    goto :goto_0

    :cond_1
    move v9, v12

    :goto_1
    if-ne v9, v12, :cond_2

    move-object v7, v1

    goto :goto_2

    :cond_2
    iget-object v7, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MediaRoute2ProviderInfo;

    :goto_2
    if-ne v7, v6, :cond_3

    goto/16 :goto_d

    :cond_3
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda16;

    invoke-direct {v11, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda16;-><init>(I)V

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v10

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    if-ltz v9, :cond_4

    iget-object v11, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v9, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    iget-object v9, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v8, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v8, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    move-object v10, v8

    :goto_3
    instance-of v9, v5, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    if-eqz v9, :cond_c

    move-object v9, v5

    check-cast v9, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    iget-object v11, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider2;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v12, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->$r8$clinit:I

    iget-object v12, v9, Lcom/android/server/media/MediaRoute2Provider;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    if-nez v12, :cond_6

    goto/16 :goto_5

    :cond_6
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    new-instance v13, Landroid/util/ArrayMap;

    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v12}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/MediaRoute2Info;

    invoke-virtual {v15}, Landroid/media/MediaRoute2Info;->supportsSystemMediaRouting()Z

    move-result v16

    if-nez v16, :cond_7

    goto :goto_4

    :cond_7
    move/from16 v16, v0

    invoke-virtual {v12}, Landroid/media/MediaRoute2ProviderInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/media/SystemMediaRoute2Provider2;->asUniqueSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/media/MediaRoute2Info$Builder;

    invoke-direct {v2, v0, v15}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    invoke-virtual {v15}, Landroid/media/MediaRoute2Info;->getSupportedRoutingTypes()I

    move-result v17

    and-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_8

    const-string/jumbo v3, "android.media.route.feature.LIVE_AUDIO"

    invoke-virtual {v2, v3}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    :cond_8
    invoke-virtual {v15}, Landroid/media/MediaRoute2Info;->getSupportedRoutingTypes()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_9

    const-string/jumbo v3, "android.media.route.feature.LIVE_VIDEO"

    invoke-virtual {v2, v3}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    :cond_9
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v0, v16

    const/4 v3, 0x1

    goto :goto_4

    :cond_a
    new-instance v0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v13}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v9, v1, v2}, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;-><init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Ljava/util/Map;Ljava/util/Map;)V

    move-object v1, v0

    :goto_5
    iget-object v2, v11, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez v1, :cond_b

    :try_start_0
    iget-object v0, v11, Lcom/android/server/media/SystemMediaRoute2Provider2;->mProxyRecords:Ljava/util/Map;

    iget-object v1, v9, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_b
    iget-object v0, v11, Lcom/android/server/media/SystemMediaRoute2Provider2;->mProxyRecords:Ljava/util/Map;

    iget-object v3, v9, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    invoke-virtual {v11}, Lcom/android/server/media/SystemMediaRoute2Provider2;->updateProviderInfo()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v11}, Lcom/android/server/media/SystemMediaRoute2Provider2;->updateSessionInfo()V

    invoke-virtual {v11}, Lcom/android/server/media/MediaRoute2Provider;->notifyProviderState()V

    invoke-virtual {v11}, Lcom/android/server/media/SystemMediaRoute2Provider2;->notifyGlobalSessionInfoUpdated()V

    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda22;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda22;-><init>(I)V

    invoke-interface {v8, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_8

    :goto_7
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_c
    :goto_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_d
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->isValid()Z

    move-result v8

    if-nez v8, :cond_e

    const-string/jumbo v8, "MR2ServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "onProviderStateChangedOnHandler: Ignoring invalid route : "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_e
    iget-boolean v8, v5, Lcom/android/server/media/MediaRoute2Provider;->mIsSystemRouteProvider:Z

    if-nez v8, :cond_f

    iget-object v8, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToNonPrivilegedRouters:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v9

    check-cast v8, Landroid/util/ArrayMap;

    invoke-virtual {v8, v9, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget-object v8, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToPrivilegedRouters:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v9

    check-cast v8, Landroid/util/ArrayMap;

    invoke-virtual {v8, v9, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaRoute2Info;

    invoke-virtual {v3, v8}, Landroid/media/MediaRoute2Info;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/16 v17, 0x1

    xor-int/lit8 v9, v9, 0x1

    or-int/2addr v2, v9

    if-nez v8, :cond_d

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v7, :cond_11

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_a

    :cond_11
    invoke-virtual {v7}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v8, 0x0

    :cond_12
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaRoute2Info;

    invoke-virtual {v9}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12

    iget-object v8, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToPrivilegedRouters:Ljava/util/Map;

    check-cast v8, Landroid/util/ArrayMap;

    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToNonPrivilegedRouters:Ljava/util/Map;

    check-cast v8, Landroid/util/ArrayMap;

    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    goto :goto_b

    :cond_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    const-string/jumbo v3, "MR2ServiceImpl"

    const-string/jumbo v9, "addProviderRoutes"

    invoke-virtual {v6}, Landroid/media/MediaRoute2ProviderInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->toLoggingMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "MR2ServiceImpl"

    const-string/jumbo v3, "removeProviderRoutes"

    invoke-virtual {v7}, Landroid/media/MediaRoute2ProviderInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->toLoggingMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget-boolean v1, v5, Lcom/android/server/media/MediaRoute2Provider;->mIsSystemRouteProvider:Z

    iget-object v0, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iget-object v3, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    if-nez v2, :cond_16

    if-nez v8, :cond_16

    goto :goto_d

    :cond_16
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouterRecords(Z)Ljava/util/List;

    move-result-object v5

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouterRecords(Z)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagerRecords()Ljava/util/List;

    move-result-object v0

    iget-object v7, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToPrivilegedRouters:Ljava/util/Map;

    check-cast v7, Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    iget-object v0, v9, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    invoke-interface {v0, v7}, Landroid/media/IMediaRouter2Manager;->notifyRoutesUpdated(Ljava/util/List;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    const-string/jumbo v10, "notifyRoutesUpdated"

    invoke-virtual {v9, v10, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V

    goto :goto_c

    :cond_17
    invoke-static {v5, v7}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesUpdatedToRouterRecords(Ljava/util/List;Ljava/util/List;)V

    if-nez v1, :cond_18

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToNonPrivilegedRouters:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesUpdatedToRouterRecords(Ljava/util/List;Ljava/util/List;)V

    goto :goto_d

    :cond_18
    if-eqz v2, :cond_19

    iget-object v0, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToNonPrivilegedRouters:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToNonPrivilegedRouters:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesUpdatedToRouterRecords(Ljava/util/List;Ljava/util/List;)V

    :cond_19
    :goto_d
    return-void

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-object/from16 v1, p2

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToPrivilegedRouters:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    invoke-interface {v2, v0}, Landroid/media/IMediaRouter2Manager;->notifyRoutesUpdated(Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_e

    :catch_1
    move-exception v0

    const-string/jumbo v2, "notifyRoutesUpdated"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V

    :goto_e
    return-void

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->notifySessionCreationFailed(I)V

    return-void

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-object/from16 v2, p2

    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    sget v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object v6, v1

    const/4 v1, 0x0

    :goto_f
    iget-object v7, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider2;

    if-ge v1, v5, :cond_1b

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    const/16 v17, 0x1

    add-int/lit8 v1, v1, 0x1

    check-cast v8, Landroid/media/MediaRoute2ProviderInfo;

    invoke-virtual {v8}, Landroid/media/MediaRoute2ProviderInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v9

    iget-object v7, v7, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    invoke-static {v9, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1a

    move-object v6, v8

    goto :goto_f

    :cond_1a
    invoke-virtual {v8}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    :cond_1b
    invoke-virtual {v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->hasSystemRoutingPermission()Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz v6, :cond_1c

    invoke-virtual {v6}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_10

    :cond_1c
    const-string/jumbo v0, "MR2ServiceImpl"

    const-string/jumbo v1, "System route provider not found."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    invoke-virtual {v7}, Lcom/android/server/media/MediaRoute2Provider;->getSessionInfos()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RoutingSessionInfo;

    goto :goto_11

    :cond_1d
    iget-object v0, v7, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v7, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    :goto_11
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    :try_start_4
    iget-object v1, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->getVisibleRoutes(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Landroid/media/IMediaRouter2;->notifyRouterRegistered(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_12

    :catch_2
    move-exception v0

    const-string/jumbo v1, "notifyRegistered"

    invoke-virtual {v2, v1, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V

    :cond_1e
    :goto_12
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
