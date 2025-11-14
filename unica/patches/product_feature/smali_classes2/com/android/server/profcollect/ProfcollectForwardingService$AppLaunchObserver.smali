.class public final Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;
.super Lcom/android/server/wm/ActivityMetricsLaunchObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final onIntentStarted(Landroid/content/Intent;J)V
    .registers 4

    const-string/jumbo p0, "applaunch_trace_freq"

    const/4 p1, 0x5

    invoke-static {p1, p0}, Lcom/android/server/profcollect/Utils;->withFrequency(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    sget-object p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    invoke-static {p0}, Lcom/android/server/profcollect/Utils;->checkPrerequisites(Lcom/android/server/profcollect/IProfCollectd;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_26

    :cond_13
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda0;

    const-string/jumbo p3, "applaunch"

    invoke-direct {p2, p0, p3}, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_26
    :goto_26
    return-void
.end method
