.class public final Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;
.super Landroid/media/metrics/IMediaMetricsManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-direct {p0}, Landroid/media/metrics/IMediaMetricsManager$Stub;-><init>()V

    return-void
.end method

.method public static loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, p0, v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 p0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    :goto_1
    move v0, p0

    goto :goto_2

    :sswitch_0
    const-string/jumbo p1, "player_metrics_per_app_attribution_allowlist"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    goto :goto_2

    :sswitch_1
    const-string/jumbo p1, "player_metrics_app_allowlist"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :sswitch_2
    const-string/jumbo p1, "player_metrics_per_app_attribution_blocklist"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    packed-switch v0, :pswitch_data_0

    const v1, 0x1869f

    goto :goto_3

    :pswitch_0
    const/16 v1, 0x3e8

    :goto_3
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_4
    add-int/2addr v3, v0

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70e7b2af -> :sswitch_2
        -0x4cdbea91 -> :sswitch_1
        0x71446e0d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getBundleSessionId(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEditingSessionId(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPlaybackSessionId(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRecordingSessionId(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSessionIdInternal()Ljava/lang/String;
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [B

    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 p0, 0xb

    invoke-static {v0, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string/jumbo v1, "metrics.manager"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "create"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->LOG_SESSION_ID:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-object p0
.end method

.method public final getTranscodingSessionId(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final loggingLevel()I
    .locals 9

    const-string/jumbo v0, "empty package from uid "

    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v1, v1, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v3, v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    const/4 v4, 0x2

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v7, "media"

    const-string/jumbo v8, "media_metrics_mode"

    invoke-static {v7, v8, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :catchall_1
    move-exception p0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v3, v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v5, :cond_1

    monitor-exit v1

    return v6

    :cond_1
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v3, v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v5, 0x1869f

    if-nez v3, :cond_2

    const-string/jumbo p0, "MediaMetricsManagerService"

    const-string/jumbo v0, "Logging level blocked: MEDIA_METRICS_MODE_OFF"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v5

    :cond_2
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    array-length v7, v3

    if-nez v7, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    if-nez v2, :cond_4

    const-string/jumbo v2, "player_metrics_app_blocklist"

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    if-nez v0, :cond_4

    const-string/jumbo p0, "MediaMetricsManagerService"

    const-string/jumbo v0, "Logging level blocked: Failed to get PLAYER_METRICS_APP_BLOCKLIST."

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v5

    :cond_4
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    const-string/jumbo v2, "player_metrics_app_blocklist"

    invoke-static {v3, v0, v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v1

    return p0

    :cond_5
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    if-nez v2, :cond_6

    const-string/jumbo v2, "player_metrics_per_app_attribution_blocklist"

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    if-nez v0, :cond_6

    const-string/jumbo p0, "MediaMetricsManagerService"

    const-string/jumbo v0, "Logging level blocked: Failed to get PLAYER_METRICS_PER_APP_ATTRIBUTION_BLOCKLIST."

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v5

    :cond_6
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    const-string/jumbo v0, "player_metrics_per_app_attribution_blocklist"

    invoke-static {v3, p0, v0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v1

    return p0

    :cond_7
    monitor-exit v1

    return v6

    :cond_8
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    if-nez v2, :cond_9

    const-string/jumbo v2, "player_metrics_per_app_attribution_allowlist"

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    if-nez v0, :cond_9

    const-string/jumbo p0, "MediaMetricsManagerService"

    const-string/jumbo v0, "Logging level blocked: Failed to get PLAYER_METRICS_PER_APP_ATTRIBUTION_ALLOWLIST."

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v5

    :cond_9
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    const-string/jumbo v2, "player_metrics_per_app_attribution_allowlist"

    invoke-static {v3, v0, v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v1

    return p0

    :cond_a
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    if-nez v2, :cond_b

    const-string/jumbo v2, "player_metrics_app_allowlist"

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    if-nez v0, :cond_b

    const-string/jumbo p0, "MediaMetricsManagerService"

    const-string/jumbo v0, "Logging level blocked: Failed to get PLAYER_METRICS_APP_ALLOWLIST."

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v5

    :cond_b
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    const-string/jumbo v0, "player_metrics_app_allowlist"

    invoke-static {v3, p0, v0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v1

    return p0

    :cond_c
    const-string/jumbo p0, "MediaMetricsManagerService"

    const-string/jumbo v0, "Logging level blocked: Not detected in any allowlist."

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v5

    :cond_d
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string/jumbo p0, "MediaMetricsManagerService"

    const-string/jumbo v0, "Logging level blocked: Blocked by default."

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_e
    :goto_1
    :try_start_3
    const-string/jumbo v3, "MediaMetricsManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v4, :cond_f

    const/16 v5, 0x3e8

    :cond_f
    monitor-exit v1

    return v5

    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final releaseSessionId(Ljava/lang/String;I)V
    .locals 2

    const-string/jumbo p0, "Releasing sessionId "

    const-string v0, " for userId "

    const-string v1, " [NOP]"

    invoke-static {p2, p0, p1, v0, v1}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "MediaMetricsManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final reportBundleMetrics(Ljava/lang/String;Landroid/os/PersistableBundle;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p1, 0x1869f

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "bundlesession-statsd-atom"

    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x142

    if-eq p0, p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string/jumbo p0, "playbackstateevent-sessionid"

    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p3, "playbackstateevent-state"

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    const-string/jumbo v0, "playbackstateevent-lifetime"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    if-eqz p0, :cond_3

    if-ltz p3, :cond_3

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void

    :cond_3
    :goto_1
    const-string/jumbo p1, "dropping incomplete data for atom 322: _sessionId: "

    const-string p2, " _state: "

    const-string v2, " _lifetime: "

    invoke-static {p3, p1, p0, p2, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo p1, "MediaMetricsManagerService"

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    return-void
.end method

.method public final reportEditingEndedEvent(Ljava/lang/String;Landroid/media/metrics/EditingEndedEvent;I)V
    .locals 48

    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    const-string/jumbo v2, "video/avc"

    const-string/jumbo v3, "video/hevc"

    const-string/jumbo v4, "video/av01"

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result v11

    const v12, 0x1869f

    if-ne v11, v12, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getInputMediaItemInfos()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    sget-object v11, Lcom/android/server/media/metrics/MediaMetricsManagerService;->EMPTY_MEDIA_ITEM_INFO:Landroid/media/metrics/MediaItemInfo;

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getInputMediaItemInfos()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/metrics/MediaItemInfo;

    :goto_0
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getDataTypes()J

    move-result-wide v12

    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    move-result-object v14

    const-string/jumbo v15, "audio/"

    invoke-static {v15, v14}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    move-result-object v5

    const-string/jumbo v6, "video/"

    invoke-static {v6, v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getVideoSize()Landroid/util/Size;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    move-result v17

    if-nez v17, :cond_2

    new-instance v7, Landroid/util/Size;

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    invoke-static {v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    move-result v17

    :cond_2
    move/from16 v7, v17

    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getCodecNames()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    const-string v17, ""

    if-nez v9, :cond_3

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object/from16 v9, v17

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    move-object/from16 p0, v11

    const/4 v11, 0x1

    if-le v10, v11, :cond_4

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object/from16 v8, v17

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOutputMediaItemInfo()Landroid/media/metrics/MediaItemInfo;

    move-result-object v10

    if-nez v10, :cond_5

    sget-object v10, Lcom/android/server/media/metrics/MediaMetricsManagerService;->EMPTY_MEDIA_ITEM_INFO:Landroid/media/metrics/MediaItemInfo;

    goto :goto_3

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOutputMediaItemInfo()Landroid/media/metrics/MediaItemInfo;

    move-result-object v10

    :goto_3
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getDataTypes()J

    move-result-wide v19

    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    move-result-object v11

    invoke-static {v15, v11}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    move-result-object v15

    invoke-static {v6, v15}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getVideoSize()Landroid/util/Size;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    move-result v21

    move-object/from16 v22, v10

    if-nez v21, :cond_6

    new-instance v10, Landroid/util/Size;

    move-wide/from16 v23, v12

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v12

    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v13

    invoke-direct {v10, v12, v13}, Landroid/util/Size;-><init>(II)V

    invoke-static {v10}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    move-result v21

    :goto_4
    move/from16 v10, v21

    goto :goto_5

    :cond_6
    move-wide/from16 v23, v12

    goto :goto_4

    :goto_5
    invoke-virtual/range {v22 .. v22}, Landroid/media/metrics/MediaItemInfo;->getCodecNames()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_7

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v13, v18

    :goto_6
    move-object/from16 v21, v15

    goto :goto_7

    :cond_7
    move-object/from16 v13, v17

    goto :goto_6

    :goto_7
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    move-object/from16 v25, v13

    const/4 v13, 0x1

    if-le v15, v13, :cond_8

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v12, v17

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOperationTypes()J

    move-result-wide v26

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v15

    const/16 v13, 0x31e

    invoke-virtual {v15, v13}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v13

    move-object/from16 v15, p1

    invoke-virtual {v13, v15}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getFinalState()I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getFinalProgressPercent()F

    move-result v15

    invoke-virtual {v13, v15}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getErrorCode()I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v13

    move/from16 v28, v10

    move-object v15, v11

    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getTimeSinceCreatedMillis()J

    move-result-wide v10

    invoke-virtual {v13, v10, v11}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v10

    const-wide/16 v29, 0x1

    and-long v31, v26, v29

    const-wide/16 v33, 0x0

    cmp-long v11, v31, v33

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    goto :goto_9

    :cond_9
    const/4 v11, 0x0

    :goto_9
    invoke-virtual {v10, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v10

    const-wide/16 v31, 0x2

    and-long v35, v26, v31

    cmp-long v11, v35, v33

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    goto :goto_a

    :cond_a
    const/4 v11, 0x0

    :goto_a
    invoke-virtual {v10, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v10

    const-wide/16 v35, 0x4

    and-long v37, v26, v35

    cmp-long v11, v37, v33

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    goto :goto_b

    :cond_b
    const/4 v11, 0x0

    :goto_b
    invoke-virtual {v10, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v10

    const-wide/16 v37, 0x8

    and-long v39, v26, v37

    cmp-long v11, v39, v33

    if-eqz v11, :cond_c

    const/4 v11, 0x1

    goto :goto_c

    :cond_c
    const/4 v11, 0x0

    :goto_c
    invoke-virtual {v10, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v10

    const-wide/16 v39, 0x10

    and-long v41, v26, v39

    cmp-long v11, v41, v33

    if-eqz v11, :cond_d

    const/4 v11, 0x1

    goto :goto_d

    :cond_d
    const/4 v11, 0x0

    :goto_d
    invoke-virtual {v10, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v10

    const-wide/16 v41, 0x20

    and-long v43, v26, v41

    cmp-long v11, v43, v33

    if-eqz v11, :cond_e

    const/4 v11, 0x1

    goto :goto_e

    :cond_e
    const/4 v11, 0x0

    :goto_e
    invoke-virtual {v10, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v10

    const-wide/16 v43, 0x40

    and-long v45, v26, v43

    cmp-long v11, v45, v33

    if-eqz v11, :cond_f

    const/4 v11, 0x1

    goto :goto_f

    :cond_f
    const/4 v11, 0x0

    :goto_f
    invoke-virtual {v10, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v10

    const-wide/16 v45, 0x80

    and-long v26, v26, v45

    cmp-long v11, v26, v33

    if-eqz v11, :cond_10

    const/4 v11, 0x1

    goto :goto_10

    :cond_10
    const/4 v11, 0x0

    :goto_10
    invoke-virtual {v10, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getExporterName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_11

    goto :goto_11

    :cond_11
    sget-object v13, Lcom/android/server/media/metrics/MediaMetricsManagerService;->PATTERN_KNOWN_EDITING_LIBRARY_NAMES:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-nez v13, :cond_12

    :goto_11
    move-object/from16 v11, v17

    :cond_12
    invoke-virtual {v10, v11}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getMuxerName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_13

    goto :goto_12

    :cond_13
    sget-object v13, Lcom/android/server/media/metrics/MediaMetricsManagerService;->PATTERN_KNOWN_EDITING_LIBRARY_NAMES:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-nez v13, :cond_14

    :goto_12
    move-object/from16 v11, v17

    :cond_14
    invoke-virtual {v10, v11}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOutputMediaItemInfo()Landroid/media/metrics/MediaItemInfo;

    move-result-object v11

    if-nez v11, :cond_15

    move-object/from16 v47, v8

    move-object/from16 v17, v9

    move-object v13, v12

    goto :goto_13

    :cond_15
    move-object v13, v12

    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getVideoSampleCount()J

    move-result-wide v11

    const-wide/16 v26, -0x1

    cmp-long v17, v11, v26

    if-nez v17, :cond_16

    move-object/from16 v47, v8

    move-object/from16 v17, v9

    goto :goto_13

    :cond_16
    move-object/from16 v47, v8

    move-object/from16 v17, v9

    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getTimeSinceCreatedMillis()J

    move-result-wide v8

    cmp-long v26, v8, v26

    if-nez v26, :cond_17

    :goto_13
    const/4 v8, -0x1

    goto :goto_14

    :cond_17
    const-wide v26, 0x408f400000000000L    # 1000.0

    long-to-double v11, v11

    mul-double v11, v11, v26

    long-to-double v8, v8

    div-double/2addr v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    const-wide/32 v11, 0x7fffffff

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    :goto_14
    invoke-virtual {v10, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getInputMediaItemInfos()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/media/metrics/MediaItemInfo;->getSourceType()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    and-long v9, v23, v29

    cmp-long v9, v9, v33

    if-eqz v9, :cond_18

    const/4 v11, 0x1

    goto :goto_15

    :cond_18
    const/4 v11, 0x0

    :goto_15
    invoke-virtual {v8, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    and-long v9, v23, v31

    cmp-long v9, v9, v33

    if-eqz v9, :cond_19

    const/4 v11, 0x1

    goto :goto_16

    :cond_19
    const/4 v11, 0x0

    :goto_16
    invoke-virtual {v8, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    and-long v9, v23, v35

    cmp-long v9, v9, v33

    if-eqz v9, :cond_1a

    const/4 v11, 0x1

    goto :goto_17

    :cond_1a
    const/4 v11, 0x0

    :goto_17
    invoke-virtual {v8, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    and-long v9, v23, v37

    cmp-long v9, v9, v33

    if-eqz v9, :cond_1b

    const/4 v11, 0x1

    goto :goto_18

    :cond_1b
    const/4 v11, 0x0

    :goto_18
    invoke-virtual {v8, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    and-long v9, v23, v39

    cmp-long v9, v9, v33

    if-eqz v9, :cond_1c

    const/4 v11, 0x1

    goto :goto_19

    :cond_1c
    const/4 v11, 0x0

    :goto_19
    invoke-virtual {v8, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    and-long v9, v23, v41

    cmp-long v9, v9, v33

    if-eqz v9, :cond_1d

    const/4 v11, 0x1

    goto :goto_1a

    :cond_1d
    const/4 v11, 0x0

    :goto_1a
    invoke-virtual {v8, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    and-long v9, v23, v43

    cmp-long v9, v9, v33

    if-eqz v9, :cond_1e

    const/4 v11, 0x1

    goto :goto_1b

    :cond_1e
    const/4 v11, 0x0

    :goto_1b
    invoke-virtual {v8, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    and-long v9, v23, v45

    cmp-long v9, v9, v33

    if-eqz v9, :cond_1f

    const/4 v11, 0x1

    goto :goto_1c

    :cond_1f
    const/4 v11, 0x0

    :goto_1c
    invoke-virtual {v8, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    const-wide/16 v9, 0x100

    and-long v11, v23, v9

    cmp-long v11, v11, v33

    if-eqz v11, :cond_20

    const/4 v11, 0x1

    goto :goto_1d

    :cond_20
    const/4 v11, 0x0

    :goto_1d
    invoke-virtual {v8, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    const-wide/16 v11, 0x200

    and-long v26, v23, v11

    cmp-long v26, v26, v33

    move-wide/from16 p1, v9

    if-eqz v26, :cond_21

    const/4 v9, 0x1

    goto :goto_1e

    :cond_21
    const/4 v9, 0x0

    :goto_1e
    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    const-wide/16 v9, 0x400

    and-long v23, v23, v9

    cmp-long v23, v23, v33

    if-eqz v23, :cond_22

    move-wide/from16 v23, v9

    const/4 v9, 0x1

    goto :goto_1f

    :cond_22
    move-wide/from16 v23, v9

    const/4 v9, 0x0

    :goto_1f
    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/media/metrics/MediaItemInfo;->getDurationMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/media/metrics/MediaItemInfo;->getClipDurationMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/media/metrics/MediaItemInfo;->getContainerMimeType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getFilteredMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    invoke-virtual {v8, v14}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_23

    goto :goto_22

    :cond_23
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :goto_20
    const/4 v9, -0x1

    goto :goto_21

    :sswitch_0
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_24

    goto :goto_20

    :cond_24
    const/4 v9, 0x4

    goto :goto_21

    :sswitch_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_25

    goto :goto_20

    :cond_25
    const/4 v9, 0x3

    goto :goto_21

    :sswitch_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_26

    goto :goto_20

    :cond_26
    const/4 v9, 0x2

    goto :goto_21

    :sswitch_3
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_27

    goto :goto_20

    :cond_27
    const/4 v9, 0x1

    goto :goto_21

    :sswitch_4
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_28

    goto :goto_20

    :cond_28
    const/4 v9, 0x0

    :goto_21
    packed-switch v9, :pswitch_data_0

    :goto_22
    const/4 v9, 0x0

    goto :goto_23

    :pswitch_0
    const/4 v9, 0x4

    goto :goto_23

    :pswitch_1
    const/4 v9, 0x3

    goto :goto_23

    :pswitch_2
    const/4 v9, 0x1

    goto :goto_23

    :pswitch_3
    const/4 v9, 0x2

    goto :goto_23

    :pswitch_4
    const/4 v9, 0x5

    :goto_23
    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleRateHz()I

    move-result v9

    sparse-switch v9, :sswitch_data_1

    const/4 v9, -0x1

    :sswitch_5
    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/media/metrics/MediaItemInfo;->getAudioChannelCount()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    move-wide/from16 v26, v11

    invoke-virtual/range {p0 .. p0}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleCount()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v10

    if-lez v8, :cond_2c

    if-gtz v10, :cond_29

    goto :goto_24

    :cond_29
    if-ge v8, v10, :cond_2a

    const/4 v11, 0x3

    goto :goto_25

    :cond_2a
    if-ge v10, v8, :cond_2b

    const/4 v11, 0x2

    goto :goto_25

    :cond_2b
    const/4 v11, 0x1

    goto :goto_25

    :cond_2c
    :goto_24
    const/4 v11, 0x0

    :goto_25
    invoke-virtual {v7, v11}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    move-result v8

    invoke-static {v8, v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoHdrFormatEnum(ILjava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    move-result v7

    invoke-static {v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoFrameRateEnum(F)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    move-object/from16 v7, v17

    invoke-virtual {v5, v7}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    move-object/from16 v8, v47

    invoke-virtual {v5, v8}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    and-long v7, v19, v29

    cmp-long v7, v7, v33

    if-eqz v7, :cond_2d

    const/4 v11, 0x1

    goto :goto_26

    :cond_2d
    const/4 v11, 0x0

    :goto_26
    invoke-virtual {v5, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    and-long v7, v19, v31

    cmp-long v7, v7, v33

    if-eqz v7, :cond_2e

    const/4 v11, 0x1

    goto :goto_27

    :cond_2e
    const/4 v11, 0x0

    :goto_27
    invoke-virtual {v5, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    and-long v7, v19, v35

    cmp-long v7, v7, v33

    if-eqz v7, :cond_2f

    const/4 v11, 0x1

    goto :goto_28

    :cond_2f
    const/4 v11, 0x0

    :goto_28
    invoke-virtual {v5, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    and-long v7, v19, v37

    cmp-long v7, v7, v33

    if-eqz v7, :cond_30

    const/4 v11, 0x1

    goto :goto_29

    :cond_30
    const/4 v11, 0x0

    :goto_29
    invoke-virtual {v5, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    and-long v7, v19, v39

    cmp-long v7, v7, v33

    if-eqz v7, :cond_31

    const/4 v11, 0x1

    goto :goto_2a

    :cond_31
    const/4 v11, 0x0

    :goto_2a
    invoke-virtual {v5, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    and-long v7, v19, v41

    cmp-long v7, v7, v33

    if-eqz v7, :cond_32

    const/4 v11, 0x1

    goto :goto_2b

    :cond_32
    const/4 v11, 0x0

    :goto_2b
    invoke-virtual {v5, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    and-long v7, v19, v43

    cmp-long v7, v7, v33

    if-eqz v7, :cond_33

    const/4 v11, 0x1

    goto :goto_2c

    :cond_33
    const/4 v11, 0x0

    :goto_2c
    invoke-virtual {v5, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    and-long v7, v19, v45

    cmp-long v7, v7, v33

    if-eqz v7, :cond_34

    const/4 v11, 0x1

    goto :goto_2d

    :cond_34
    const/4 v11, 0x0

    :goto_2d
    invoke-virtual {v5, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    and-long v7, v19, p1

    cmp-long v7, v7, v33

    if-eqz v7, :cond_35

    const/4 v11, 0x1

    goto :goto_2e

    :cond_35
    const/4 v11, 0x0

    :goto_2e
    invoke-virtual {v5, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    and-long v7, v19, v26

    cmp-long v7, v7, v33

    if-eqz v7, :cond_36

    const/4 v11, 0x1

    goto :goto_2f

    :cond_36
    const/4 v11, 0x0

    :goto_2f
    invoke-virtual {v5, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    and-long v7, v19, v23

    cmp-long v7, v7, v33

    if-eqz v7, :cond_37

    const/4 v11, 0x1

    goto :goto_30

    :cond_37
    const/4 v11, 0x0

    :goto_30
    invoke-virtual {v5, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Landroid/media/metrics/MediaItemInfo;->getDurationMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Landroid/media/metrics/MediaItemInfo;->getClipDurationMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Landroid/media/metrics/MediaItemInfo;->getContainerMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getFilteredMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_38

    goto :goto_33

    :cond_38
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_2

    :goto_31
    const/4 v11, -0x1

    goto :goto_32

    :sswitch_6
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_31

    :cond_39
    const/4 v11, 0x4

    goto :goto_32

    :sswitch_7
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_31

    :cond_3a
    const/4 v11, 0x3

    goto :goto_32

    :sswitch_8
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_31

    :cond_3b
    const/4 v11, 0x2

    goto :goto_32

    :sswitch_9
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_31

    :cond_3c
    const/4 v11, 0x1

    goto :goto_32

    :sswitch_a
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_31

    :cond_3d
    const/4 v11, 0x0

    :goto_32
    packed-switch v11, :pswitch_data_1

    :goto_33
    const/4 v7, 0x0

    goto :goto_34

    :pswitch_5
    const/4 v7, 0x4

    goto :goto_34

    :pswitch_6
    const/4 v7, 0x3

    goto :goto_34

    :pswitch_7
    const/4 v7, 0x1

    goto :goto_34

    :pswitch_8
    const/4 v7, 0x2

    goto :goto_34

    :pswitch_9
    const/4 v7, 0x5

    :goto_34
    invoke-virtual {v5, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    invoke-virtual/range {v22 .. v22}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleRateHz()I

    move-result v1

    sparse-switch v1, :sswitch_data_3

    const/4 v8, -0x1

    goto :goto_35

    :sswitch_b
    move v8, v1

    :goto_35
    invoke-virtual {v0, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    invoke-virtual/range {v22 .. v22}, Landroid/media/metrics/MediaItemInfo;->getAudioChannelCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    invoke-virtual/range {v22 .. v22}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual/range {v21 .. v21}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-lez v1, :cond_41

    if-gtz v2, :cond_3e

    goto :goto_36

    :cond_3e
    if-ge v1, v2, :cond_3f

    const/4 v5, 0x3

    goto :goto_37

    :cond_3f
    if-ge v2, v1, :cond_40

    const/4 v5, 0x2

    goto :goto_37

    :cond_40
    const/4 v5, 0x1

    goto :goto_37

    :cond_41
    :goto_36
    const/4 v5, 0x0

    :goto_37
    invoke-virtual {v0, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    invoke-virtual/range {v22 .. v22}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    invoke-virtual/range {v22 .. v22}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    move-result v1

    invoke-static {v1, v6}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoHdrFormatEnum(ILjava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    invoke-virtual/range {v22 .. v22}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    invoke-virtual/range {v22 .. v22}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    move-result v1

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoFrameRateEnum(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v0

    invoke-static {v0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x631b55f6 -> :sswitch_4
        -0x63185e82 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x1f40 -> :sswitch_5
        0x2b11 -> :sswitch_5
        0x3e80 -> :sswitch_5
        0x5622 -> :sswitch_5
        0xac44 -> :sswitch_5
        0xbb80 -> :sswitch_5
        0x17700 -> :sswitch_5
        0x2ee00 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x631b55f6 -> :sswitch_a
        -0x63185e82 -> :sswitch_9
        0x4f62373a -> :sswitch_8
        0x5f50bed8 -> :sswitch_7
        0x5f50bed9 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0x1f40 -> :sswitch_b
        0x2b11 -> :sswitch_b
        0x3e80 -> :sswitch_b
        0x5622 -> :sswitch_b
        0xac44 -> :sswitch_b
        0xbb80 -> :sswitch_b
        0x17700 -> :sswitch_b
        0x2ee00 -> :sswitch_b
    .end sparse-switch
.end method

.method public final reportNetworkEvent(Ljava/lang/String;Landroid/media/metrics/NetworkEvent;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    const/16 p3, 0x141

    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/NetworkEvent;->getNetworkType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/NetworkEvent;->getTimeSinceCreatedMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public final reportPlaybackErrorEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackErrorEvent;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    const/16 p3, 0x143

    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getExceptionStack()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getErrorCode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getSubErrorCode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getTimeSinceCreatedMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public final reportPlaybackMetrics(Ljava/lang/String;Landroid/media/metrics/PlaybackMetrics;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p3

    const/16 v0, 0x140

    invoke-virtual {p3, v0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    invoke-virtual {p3, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getMediaDurationMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getStreamSource()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getStreamType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlaybackType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getDrmType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getContentType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlayerName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlayerVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    new-array p1, v0, [B

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getVideoFramesPlayed()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getVideoFramesDropped()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getAudioUnderrunCount()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getNetworkBytesRead()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getLocalBytesRead()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getNetworkTransferDurationMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getDrmSessionId()[B

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public final reportPlaybackStateEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackStateEvent;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    const/16 p3, 0x142

    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackStateEvent;->getState()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackStateEvent;->getTimeSinceCreatedMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public final reportTrackChangeEvent(Ljava/lang/String;Landroid/media/metrics/TrackChangeEvent;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    const/16 p3, 0x144

    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackState()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackChangeReason()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getContainerMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getSampleMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getCodecName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getBitrate()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTimeSinceCreatedMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getLanguageRegion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getChannelCount()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getAudioSampleRate()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getVideoFrameRate()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method
