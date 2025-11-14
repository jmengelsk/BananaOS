.class public final Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
.super Ljava/lang/Record;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "mProxy",
        "mSystemMediaRoutes",
        "mNewOriginalIdToSourceOriginalIdMap"
    }
    componentSignatures = {
        null,
        .subannotation Ldalvik/annotation/Signature;
            value = {
                "Ljava/util/Map<",
                "Ljava/lang/String;",
                "Landroid/media/MediaRoute2Info;",
                ">;"
            }
        .end subannotation,
        .subannotation Ldalvik/annotation/Signature;
            value = {
                "Ljava/util/Map<",
                "Ljava/lang/String;",
                "Ljava/lang/String;",
                ">;"
            }
        .end subannotation
    }
    componentTypes = {
        Lcom/android/server/media/MediaRoute2ProviderServiceProxy;,
        Ljava/util/Map;,
        Ljava/util/Map;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mNewOriginalIdToSourceOriginalIdMap:Ljava/util/Map;

.field public final mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

.field public final mSystemMediaRoutes:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mSystemMediaRoutes:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mNewOriginalIdToSourceOriginalIdMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    iget-object v1, p1, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mSystemMediaRoutes:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mSystemMediaRoutes:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mNewOriginalIdToSourceOriginalIdMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mNewOriginalIdToSourceOriginalIdMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mSystemMediaRoutes:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mNewOriginalIdToSourceOriginalIdMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final requestCreateSystemMediaSession(JILjava/lang/String;Ljava/lang/String;Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mNewOriginalIdToSourceOriginalIdMap:Ljava/util/Map;

    invoke-interface {v0, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    const-string/jumbo p0, "MR2SystemProvider"

    const-string p3, "Failed system media session creation due to lack of mapping for id: "

    invoke-static {p3, p5, p0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x3

    invoke-virtual {p6, p0, p1, p2}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->onRequestFailed(IJ)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    iget-boolean p5, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    if-eqz p5, :cond_1

    iget-object p5, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, p5, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mService:Landroid/media/IMediaRoute2ProviderService;

    const/4 v7, 0x0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v7}, Landroid/media/IMediaRoute2ProviderService;->requestCreateSystemMediaSession(JILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    iget-object p1, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRequestIdToSystemSessionRequest:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v2, v3, p6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catch_0
    const-string/jumbo p0, "MR2ProviderSvcProxy"

    const-string/jumbo p1, "requestCreateSystemMediaSession: Failed to deliver request."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    iget-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mSystemMediaRoutes:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mNewOriginalIdToSourceOriginalIdMap:Ljava/util/Map;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    aput-object v3, v4, v1

    const/4 v2, 0x2

    aput-object p0, v4, v2

    const-class p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    const-string/jumbo v2, "mProxy;mSystemMediaRoutes;mNewOriginalIdToSourceOriginalIdMap"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    new-array v2, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "["

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    array-length p0, v2

    if-ge v0, p0, :cond_2

    aget-object p0, v2, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v4, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    array-length p0, v2

    sub-int/2addr p0, v1

    if-eq v0, p0, :cond_1

    const-string p0, ", "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
