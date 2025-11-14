.class public Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsProxyService;
.super Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public TAG:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy$Stub;-><init>()V

    const-class v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsProxyService;

    const-string/jumbo v0, "[KnoxAnalytics] KnoxAnalyticsProxyService"

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsProxyService;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsProxyService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final log(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)V
    .locals 1

    const-string/jumbo v0, "knox_analytics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->log(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsProxyService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "log() proxy failed"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
