.class public final Lcom/android/server/shealth/SamsungHealthService$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    if-nez p2, :cond_3

    goto :goto_1c

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_1c

    :cond_a
    const-string/jumbo p2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    const-string/jumbo p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    :goto_1c
    return-void

    :cond_1d
    invoke-static {p1}, Lcom/android/server/shealth/SamsungHealthService;->backgroundAllowlist(Landroid/content/Context;)V

    return-void
.end method
