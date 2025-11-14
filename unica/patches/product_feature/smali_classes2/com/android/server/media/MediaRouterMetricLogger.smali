.class public final Lcom/android/server/media/MediaRouterMetricLogger;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "MediaRouterMetricLogger"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaRouterMetricLogger;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;-><init>(Lcom/android/server/media/MediaRouterMetricLogger;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;

    return-void
.end method

.method public static logMediaRouterEvent(II)V
    .registers 5

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    const/16 v1, 0x3f9

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v0

    invoke-static {v0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    sget-boolean v0, Lcom/android/server/media/MediaRouterMetricLogger;->DEBUG:Z

    if-eqz v0, :cond_28

    const-string/jumbo v0, "logMediaRouterEvent: "

    const-string v1, " "

    const-string/jumbo v2, "MediaRouterMetricLogger"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    return-void
.end method


# virtual methods
.method public final addRequestInfo(IJ)V
    .registers 5

    new-instance v0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;

    invoke-direct {v0, p2, p3, p1}, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;-><init>(JI)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getRequestCacheSize()I
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    return p0
.end method

.method public final logRequestResult(IJ)V
    .registers 5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;

    if-nez v0, :cond_24

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "logRequestResult: No RequestInfo found for uniqueRequestId="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "MediaRouterMetricLogger"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    iget v0, v0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;->mEventType:I

    invoke-static {v0, p1}, Lcom/android/server/media/MediaRouterMetricLogger;->logMediaRouterEvent(II)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
