.class public abstract Lcom/android/server/wm/AdaptiveAppByDefaultLogger;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sAtmService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public static sendSaBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendSaBroadcast "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveAppByDefaultLogger"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static sendSaLoggingAsync(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v4, "0012"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_0

    :pswitch_1
    const-string v4, "0011"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move v3, v0

    goto :goto_0

    :pswitch_2
    const-string v4, "0010"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_1

    const-string p0, "Invalid event ID: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdaptiveAppByDefaultLogger"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_3
    new-instance p1, Lcom/android/server/wm/AdaptiveAppByDefaultLogger$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0, p0}, Lcom/android/server/wm/AdaptiveAppByDefaultLogger$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance p2, Lcom/android/server/wm/AdaptiveAppByDefaultLogger$$ExternalSyntheticLambda1;

    invoke-direct {p2, v2, p1}, Lcom/android/server/wm/AdaptiveAppByDefaultLogger$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_4
    new-instance p1, Lcom/android/server/wm/AdaptiveAppByDefaultLogger$$ExternalSyntheticLambda1;

    invoke-direct {p1, v1, p0}, Lcom/android/server/wm/AdaptiveAppByDefaultLogger$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance p2, Lcom/android/server/wm/AdaptiveAppByDefaultLogger$$ExternalSyntheticLambda1;

    invoke-direct {p2, v2, p1}, Lcom/android/server/wm/AdaptiveAppByDefaultLogger$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_5
    new-instance p1, Lcom/android/server/wm/AdaptiveAppByDefaultLogger$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/AdaptiveAppByDefaultLogger$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance p2, Lcom/android/server/wm/AdaptiveAppByDefaultLogger$$ExternalSyntheticLambda1;

    invoke-direct {p2, v2, p1}, Lcom/android/server/wm/AdaptiveAppByDefaultLogger$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x168c1f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
