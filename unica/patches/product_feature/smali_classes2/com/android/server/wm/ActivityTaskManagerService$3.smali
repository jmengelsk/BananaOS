.class public final Lcom/android/server/wm/ActivityTaskManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lcom/android/server/wm/MultiTaskingAppCompatUtils;->getNonSystemApplicationInfo(ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "0011"

    invoke-static {p0, p2, p1}, Lcom/android/server/wm/AdaptiveAppByDefaultLogger;->sendSaLoggingAsync(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
