.class public final Lcom/android/server/wm/CompatChangeableAppsCache$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const/4 p0, 0x1

    const/4 p1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_10

    const-string p0, "CompatChangeableApps"

    const-string p1, "Failed to get package name in package receiver"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_22

    const-string p0, "CompatChangeableApps"

    const-string p1, "Failed to get action in package receiver"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_80

    goto :goto_4e

    :sswitch_2b
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    goto :goto_4e

    :cond_35
    const/4 v1, 0x2

    goto :goto_4e

    :sswitch_37
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    goto :goto_4e

    :cond_41
    move v1, p0

    goto :goto_4e

    :sswitch_43
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    goto :goto_4e

    :cond_4d
    move v1, p1

    :goto_4e
    packed-switch v1, :pswitch_data_8e

    const-string p0, "CompatChangeableApps"

    const-string/jumbo p1, "Unsupported action in package receiver: "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_5e  #0x0, 0x1, 0x2
    sget-object p2, Lcom/android/server/wm/CompatChangeableAppsCache$LazyHolder;->sCache:Lcom/android/server/wm/CompatChangeableAppsCache;

    monitor-enter p2

    :try_start_61
    iget-object v1, p2, Lcom/android/server/wm/CompatChangeableAppsCache;->mAppsArray:Landroid/util/SparseArray;

    if-nez v1, :cond_69

    monitor-exit p2

    return-void

    :catchall_67
    move-exception p0

    goto :goto_7e

    :cond_69
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_6d
    if-ge p1, v1, :cond_7c

    iget-object v2, p2, Lcom/android/server/wm/CompatChangeableAppsCache;->mAppsArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/core/CompatChangeableApps;

    invoke-virtual {v2, v0}, Lcom/samsung/android/core/CompatChangeableApps;->removeCache(Ljava/lang/String;)V

    add-int/2addr p1, p0

    goto :goto_6d

    :cond_7c
    monitor-exit p2

    return-void

    :goto_7e
    monitor-exit p2
    :try_end_7f
    .catchall {:try_start_61 .. :try_end_7f} :catchall_67

    throw p0

    :sswitch_data_80
    .sparse-switch
        0xa480416 -> :sswitch_43
        0x1f50b9c2 -> :sswitch_37
        0x5c1076e2 -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_5e  #00000000
        :pswitch_5e  #00000001
        :pswitch_5e  #00000002
    .end packed-switch
.end method
