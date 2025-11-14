.class public Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;
.super Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mActivationObserver:Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

.field public final mContext:Landroid/content/Context;

.field public mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

.field public mIsKnoxAnalyticsActivated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    const-string/jumbo v0, "[KnoxAnalytics] KnoxAnalyticsServiceImpl"

    sput-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Lcom/samsung/android/knox/analytics/service/EventQueue;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService$Stub;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mIsKnoxAnalyticsActivated:Z

    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;-><init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mActivationObserver:Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {p2, v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->registerObserver(Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;)V

    return-void
.end method


# virtual methods
.method public final log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "log(): null data"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mIsKnoxAnalyticsActivated:Z

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "KnoxAnalytics has been shutdown, can\'t log."

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceCallingPermissionForLog(Landroid/content/Context;II)V

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->postMessage(ILcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void

    :cond_2
    sget-object p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "mEventQueue is null!"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final log(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->convertToKnoxAnalyticsSDK(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void
.end method
