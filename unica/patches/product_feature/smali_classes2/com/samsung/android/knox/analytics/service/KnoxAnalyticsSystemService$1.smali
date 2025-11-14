.class public Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKnoxAnalyticsActivation(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onKnoxAnalyticsActivation()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->startSystemService()V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->broadcastAnalyticsStatus(ZZ)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->broadcastKAStatusToMDM(ZZZ)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logActivationEventAfterStart()V

    :cond_0
    return-void
.end method

.method public final onKnoxAnalyticsDeactivation(Z)V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onKnoxAnalyticsDeactivation()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->broadcastAnalyticsStatus(ZZ)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-virtual {v0, v1, v1, p1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->broadcastKAStatusToMDM(ZZZ)V

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->stopSystemService()V

    return-void
.end method

.method public final onStatusChanged(IZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logStatusChangedEventAfterStart(IZLjava/lang/String;)V

    return-void
.end method

.method public final onTriggerChanged(IZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logTriggerEventAfterStart(IZLjava/lang/String;)V

    return-void
.end method
