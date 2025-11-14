.class public final Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/media/MediaRoute2ProviderServiceProxy$SystemMediaSessionCallback;


# instance fields
.field public final mOriginalId:Ljava/lang/String;

.field public final mProviderId:Ljava/lang/String;

.field public mSourceSessionInfo:Landroid/media/RoutingSessionInfo;

.field public mTranslatedSessionInfo:Landroid/media/RoutingSessionInfo;

.field public final synthetic this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;


# direct methods
.method public constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider2;Ljava/lang/String;Landroid/media/RoutingSessionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mProviderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mSourceSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p3}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/media/SystemMediaRoute2Provider2;->asUniqueSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mOriginalId:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->asSystemProviderSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mTranslatedSessionInfo:Landroid/media/RoutingSessionInfo;

    return-void
.end method


# virtual methods
.method public final asSystemProviderSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;
    .locals 3

    new-instance v0, Landroid/media/RoutingSessionInfo$Builder;

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mOriginalId:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iget-object p0, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/media/RoutingSessionInfo$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/RoutingSessionInfo$Builder;->setSystemSession(Z)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo$Builder;->clearSelectedRoutes()Landroid/media/RoutingSessionInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo$Builder;->clearSelectableRoutes()Landroid/media/RoutingSessionInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo$Builder;->clearDeselectableRoutes()Landroid/media/RoutingSessionInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo$Builder;->clearTransferableRoutes()Landroid/media/RoutingSessionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda0;-><init>(Landroid/media/RoutingSessionInfo;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;-><init>(Landroid/media/RoutingSessionInfo$Builder;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectableRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v2}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda0;-><init>(Landroid/media/RoutingSessionInfo;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;-><init>(Landroid/media/RoutingSessionInfo$Builder;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v2}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda0;-><init>(Landroid/media/RoutingSessionInfo;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;-><init>(Landroid/media/RoutingSessionInfo$Builder;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getTransferableRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v2}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda0;-><init>(Landroid/media/RoutingSessionInfo;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;-><init>(Landroid/media/RoutingSessionInfo$Builder;I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getProxyRecord()Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iget-object v0, v0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mProxyRecords:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mProviderId:Ljava/lang/String;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->removeSelfFromSessionMaps()V

    :cond_0
    return-object v0
.end method

.method public final onRequestFailed(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/media/MediaRoute2Provider;->notifyRequestFailed(JI)V

    return-void
.end method

.method public final onSessionReleased()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iget-object v0, v0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->removeSelfFromSessionMaps()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

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

.method public final onSessionUpdate(Landroid/media/RoutingSessionInfo;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->asSystemProviderSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iget-object v1, v1, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mSourceSessionInfo:Landroid/media/RoutingSessionInfo;

    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mTranslatedSessionInfo:Landroid/media/RoutingSessionInfo;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    invoke-static {p0, v0}, Lcom/android/server/media/SystemMediaRoute2Provider2;->-$$Nest$monSessionOverrideUpdated(Lcom/android/server/media/SystemMediaRoute2Provider2;Landroid/media/RoutingSessionInfo;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final removeSelfFromSessionMaps()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iget-object v1, v0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mSessionOriginalIdToSessionRecord:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mOriginalId:Ljava/lang/String;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mPackageNameToSessionRecord:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mSourceSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object p0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
