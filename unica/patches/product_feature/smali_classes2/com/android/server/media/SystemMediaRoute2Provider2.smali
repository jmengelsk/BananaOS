.class public final Lcom/android/server/media/SystemMediaRoute2Provider2;
.super Lcom/android/server/media/SystemMediaRoute2Provider;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final COMPONENT_NAME:Landroid/content/ComponentName;


# instance fields
.field public mLastSystemProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

.field public final mOriginalRouteIdToProviderId:Ljava/util/Map;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageNameToSessionRecord:Ljava/util/Map;

.field public final mPendingSessionCreations:Landroid/util/LongSparseArray;

.field public final mProxyRecords:Ljava/util/Map;

.field public final mSessionOriginalIdToSessionRecord:Ljava/util/Map;


# direct methods
.method public static -$$Nest$monSessionOverrideUpdated(Lcom/android/server/media/SystemMediaRoute2Provider2;Landroid/media/RoutingSessionInfo;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/media/RoutingSessionInfo$Builder;

    invoke-direct {v0, p1}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    iget-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mLastSystemProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    invoke-virtual {p1}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;-><init>(Landroid/media/RoutingSessionInfo$Builder;I)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda2;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v2, p1, p0, v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/media/SystemMediaRoute2Provider2;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/media/SystemMediaRoute2Provider2;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Looper;)V
    .locals 1

    sget-object v0, Lcom/android/server/media/SystemMediaRoute2Provider2;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/media/SystemMediaRoute2Provider;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/os/Looper;)V

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mProxyRecords:Ljava/util/Map;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mSessionOriginalIdToSessionRecord:Ljava/util/Map;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mPackageNameToSessionRecord:Ljava/util/Map;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mOriginalRouteIdToProviderId:Ljava/util/Map;

    new-instance p2, Landroid/util/LongSparseArray;

    invoke-direct {p2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mPendingSessionCreations:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public static asUniqueSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "SYSTEM-"

    const-string v1, "-"

    invoke-static {v0, p0, v1, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final deselectRoute(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "SYSTEM_SESSION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mSessionOriginalIdToSessionRecord:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->getProxyRecord()Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-object p0, v1, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mNewOriginalIdToSourceOriginalIdMap:Ljava/util/Map;

    invoke-interface {p0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    iget-object p4, v1, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    iget-object p1, p1, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mSourceSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1, p2, p3, p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->deselectRoute(Ljava/lang/String;JLjava/lang/String;)V

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/media/MediaRoute2Provider;->notifyRequestFailed(JI)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getSessionForPackage(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider;->getSessionForPackage(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mPackageNameToSessionRecord:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    if-eqz p1, :cond_2

    new-instance v1, Landroid/media/RoutingSessionInfo$Builder;

    iget-object p1, p1, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mTranslatedSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-direct {v1, p1}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    iget-object p1, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/media/RoutingSessionInfo$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/media/RoutingSessionInfo$Builder;->setSystemSession(Z)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mLastSystemProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    invoke-virtual {p0}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/RoutingSessionInfo$Builder;->addTransferableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_2
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notifyGlobalSessionInfoUpdated()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mPackageNameToSessionRecord:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda2;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v3, v0, p0, v2, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onSystemProviderRoutesChanged(Landroid/media/MediaRoute2ProviderInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mLastSystemProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider2;->updateProviderInfo()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider2;->updateSessionInfo()V

    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider2;->notifyGlobalSessionInfoUpdated()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onSystemSessionInfoUpdated()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider2;->updateSessionInfo()V

    return-void
.end method

.method public final selectRoute(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "SYSTEM_SESSION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mSessionOriginalIdToSessionRecord:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->getProxyRecord()Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-object p0, v1, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mNewOriginalIdToSourceOriginalIdMap:Ljava/util/Map;

    invoke-interface {p0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    iget-object p4, v1, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    iget-object p1, p1, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mSourceSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1, p2, p3, p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->selectRoute(Ljava/lang/String;JLjava/lang/String;)V

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/media/MediaRoute2Provider;->notifyRequestFailed(JI)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setRouteVolume(ILjava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mOriginalRouteIdToProviderId:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mProxyRecords:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mNewOriginalIdToSourceOriginalIdMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-virtual {v1, p1, v2, p3, p4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->setRouteVolume(ILjava/lang/String;J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, p3, p4, v1}, Lcom/android/server/media/MediaRoute2Provider;->notifyRequestFailed(JI)V

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/media/SystemMediaRoute2Provider;->setRouteVolume(ILjava/lang/String;J)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setSessionVolume(ILjava/lang/String;J)V
    .locals 2

    const-string/jumbo v0, "SYSTEM_SESSION"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mSessionOriginalIdToSessionRecord:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->getProxyRecord()Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object p0, v1, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    iget-object p2, p2, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mSourceSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->setSessionVolume(ILjava/lang/String;J)V

    monitor-exit v0

    return-void

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    invoke-virtual {p0, p3, p4, p1}, Lcom/android/server/media/MediaRoute2Provider;->notifyRequestFailed(JI)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final transferToRoute(JLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 15

    move-wide/from16 v3, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    const-string v0, "Cannot resolve transfer for "

    iget-object v8, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mOriginalRouteIdToProviderId:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mProxyRecords:Ljava/util/Map;

    check-cast v7, Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    if-eqz v7, :cond_0

    iget-object v9, v7, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mSystemMediaRoutes:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaRoute2Info;

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    iget-object v10, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mPackageNameToSessionRecord:Ljava/util/Map;

    check-cast v10, Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    if-eqz v10, :cond_3

    iget-object v11, v10, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mSourceSessionInfo:Landroid/media/RoutingSessionInfo;

    if-eqz v2, :cond_2

    invoke-virtual {v11}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    if-nez v9, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v3, v4, v0}, Lcom/android/server/media/MediaRoute2Provider;->notifyRequestFailed(JI)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    iget-object v0, v7, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-virtual {v11}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v7, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mNewOriginalIdToSourceOriginalIdMap:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    move/from16 v7, p7

    move-wide v1, v3

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->transferToRoute(JLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    monitor-exit v8

    return-void

    :cond_2
    move-object v12, v5

    move-object/from16 v5, p3

    invoke-virtual {v10}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->getProxyRecord()Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v11}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object v11

    iget-object v13, v13, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-virtual {v13, v3, v4, v11}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->releaseSession(JLjava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->removeSelfFromSessionMaps()V

    goto :goto_2

    :cond_3
    move-object v12, v5

    move-object/from16 v5, p3

    :cond_4
    :goto_2
    if-eqz v9, :cond_7

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, -0x1

    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v9, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    invoke-virtual {v9, v12, v11, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_0
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v9, v10

    :goto_3
    if-eq v9, v10, :cond_6

    move v10, v9

    :goto_4
    new-instance v0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;

    move-object v1, p0

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider2;Ljava/lang/String;JLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mPendingSessionCreations:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v3, v4, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-wide v1, v3

    move-object v5, v6

    move v3, v10

    move-object/from16 v4, p4

    move-object v6, v0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->requestCreateSystemMediaSession(JILjava/lang/String;Ljava/lang/String;Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;)V

    goto :goto_5

    :cond_6
    move-object v4, v12

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move-object v4, v12

    invoke-super/range {p0 .. p7}, Lcom/android/server/media/SystemMediaRoute2Provider;->transferToRoute(JLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_5
    monitor-exit v8

    return-void

    :goto_6
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final updateProviderInfo()V
    .locals 5

    new-instance v0, Landroid/media/MediaRoute2ProviderInfo$Builder;

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mLastSystemProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    invoke-direct {v0, v1}, Landroid/media/MediaRoute2ProviderInfo$Builder;-><init>(Landroid/media/MediaRoute2ProviderInfo;)V

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mOriginalRouteIdToProviderId:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mProxyRecords:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    iget-object v3, v2, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    iget-object v3, v3, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mSystemMediaRoutes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v0, v3}, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider2;Landroid/media/MediaRoute2ProviderInfo$Builder;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;->build()Landroid/media/MediaRoute2ProviderInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRoute2Provider;->setProviderState(Landroid/media/MediaRoute2ProviderInfo;)V

    return-void
.end method

.method public final updateSessionInfo()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, ""

    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mPackageNameToSessionRecord:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mTranslatedSessionInfo:Landroid/media/RoutingSessionInfo;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSystemSessionInfo:Landroid/media/RoutingSessionInfo;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    new-instance v2, Landroid/media/RoutingSessionInfo$Builder;

    invoke-direct {v2, v1}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    iget-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSystemSessionInfo:Landroid/media/RoutingSessionInfo;

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mProxyRecords:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;-><init>(Landroid/media/RoutingSessionInfo$Builder;I)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mLastSystemProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    invoke-virtual {v1}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;-><init>(Landroid/media/RoutingSessionInfo$Builder;I)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :goto_2
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mPackageNameToSessionRecord:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    iget-object v3, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    iget-object v2, v2, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mTranslatedSessionInfo:Landroid/media/RoutingSessionInfo;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
