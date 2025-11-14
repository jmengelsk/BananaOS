.class public final Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;
.super Landroid/media/metrics/IMediaMetricsManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-direct {p0}, Landroid/media/metrics/IMediaMetricsManager$Stub;-><init>()V

    return-void
.end method

.method public static loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    array-length v2, p0

    move v3, v1

    :goto_4
    if-ge v3, v2, :cond_59

    aget-object v4, p0, v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 p0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_5c

    :goto_26
    move v0, p0

    goto :goto_49

    :sswitch_28
    const-string/jumbo p1, "player_metrics_per_app_attribution_allowlist"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto :goto_26

    :cond_32
    const/4 v0, 0x2

    goto :goto_49

    :sswitch_34
    const-string/jumbo p1, "player_metrics_app_allowlist"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    goto :goto_26

    :sswitch_3e
    const-string/jumbo p1, "player_metrics_per_app_attribution_blocklist"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto :goto_26

    :cond_48
    move v0, v1

    :cond_49
    :goto_49
    packed-switch v0, :pswitch_data_6a

    const v1, 0x1869f

    goto :goto_52

    :pswitch_50  #0x0, 0x2
    const/16 v1, 0x3e8

    :goto_52
    :pswitch_52  #0x1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_57
    add-int/2addr v3, v0

    goto :goto_4

    :cond_59
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_5c
    .sparse-switch
        -0x70e7b2af -> :sswitch_3e
        -0x4cdbea91 -> :sswitch_34
        0x71446e0d -> :sswitch_28
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_50  #00000000
        :pswitch_52  #00000001
        :pswitch_50  #00000002
    .end packed-switch
.end method


# virtual methods
.method public final getBundleSessionId(I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEditingSessionId(I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPlaybackSessionId(I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRecordingSessionId(I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSessionIdInternal()Ljava/lang/String;
    .registers 4

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
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final loggingLevel()I
    .registers 10

    const-string/jumbo v0, "empty package from uid "

    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v1, v1, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v3, v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    const/4 v4, 0x2

    if-nez v3, :cond_35

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_2d

    :try_start_17
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v7, "media"

    const-string/jumbo v8, "media_metrics_mode"

    invoke-static {v7, v8, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_30

    :try_start_29
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_35

    :catchall_2d
    move-exception p0

    goto/16 :goto_189

    :catchall_30
    move-exception p0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_35
    :goto_35
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v3, v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v5, :cond_43

    monitor-exit v1

    return v6

    :cond_43
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v3, v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v5, 0x1869f

    if-nez v3, :cond_5b

    const-string/jumbo p0, "MediaMetricsManagerService"

    const-string/jumbo v0, "Logging level blocked: MEDIA_METRICS_MODE_OFF"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v5

    :cond_5b
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_169

    array-length v7, v3

    if-nez v7, :cond_70

    goto/16 :goto_169

    :cond_70
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_e2

    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    if-nez v2, :cond_9a

    const-string/jumbo v2, "player_metrics_app_blocklist"

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    if-nez v0, :cond_9a

    const-string/jumbo p0, "MediaMetricsManagerService"

    const-string/jumbo v0, "Logging level blocked: Failed to get PLAYER_METRICS_APP_BLOCKLIST."

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v5

    :cond_9a
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    const-string/jumbo v2, "player_metrics_app_blocklist"

    invoke-static {v3, v0, v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_ad

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v1

    return p0

    :cond_ad
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    if-nez v2, :cond_cd

    const-string/jumbo v2, "player_metrics_per_app_attribution_blocklist"

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    if-nez v0, :cond_cd

    const-string/jumbo p0, "MediaMetricsManagerService"

    const-string/jumbo v0, "Logging level blocked: Failed to get PLAYER_METRICS_PER_APP_ATTRIBUTION_BLOCKLIST."

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v5

    :cond_cd
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    const-string/jumbo v0, "player_metrics_per_app_attribution_blocklist"

    invoke-static {v3, p0, v0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_e0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v1

    return p0

    :cond_e0
    monitor-exit v1

    return v6

    :cond_e2
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_15e

    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    if-nez v2, :cond_10d

    const-string/jumbo v2, "player_metrics_per_app_attribution_allowlist"

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    if-nez v0, :cond_10d

    const-string/jumbo p0, "MediaMetricsManagerService"

    const-string/jumbo v0, "Logging level blocked: Failed to get PLAYER_METRICS_PER_APP_ATTRIBUTION_ALLOWLIST."

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v5

    :cond_10d
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    const-string/jumbo v2, "player_metrics_per_app_attribution_allowlist"

    invoke-static {v3, v0, v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_120

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v1

    return p0

    :cond_120
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    if-nez v2, :cond_140

    const-string/jumbo v2, "player_metrics_app_allowlist"

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    if-nez v0, :cond_140

    const-string/jumbo p0, "MediaMetricsManagerService"

    const-string/jumbo v0, "Logging level blocked: Failed to get PLAYER_METRICS_APP_ALLOWLIST."

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v5

    :cond_140
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    const-string/jumbo v0, "player_metrics_app_allowlist"

    invoke-static {v3, p0, v0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_153

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v1

    return p0

    :cond_153
    const-string/jumbo p0, "MediaMetricsManagerService"

    const-string/jumbo v0, "Logging level blocked: Not detected in any allowlist."

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v5

    :cond_15e
    monitor-exit v1
    :try_end_15f
    .catchall {:try_start_29 .. :try_end_15f} :catchall_2d

    const-string/jumbo p0, "MediaMetricsManagerService"

    const-string/jumbo v0, "Logging level blocked: Blocked by default."

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_169
    :goto_169
    :try_start_169
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

    if-ne p0, v4, :cond_187

    const/16 v5, 0x3e8

    :cond_187
    monitor-exit v1

    return v5

    :goto_189
    monitor-exit v1
    :try_end_18a
    .catchall {:try_start_169 .. :try_end_18a} :catchall_2d

    throw p0
.end method

.method public final releaseSessionId(Ljava/lang/String;I)V
    .registers 5

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
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p1, 0x1869f

    if-ne p0, p1, :cond_a

    goto :goto_15

    :cond_a
    const-string/jumbo p0, "bundlesession-statsd-atom"

    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x142

    if-eq p0, p1, :cond_16

    :goto_15
    return-void

    :cond_16
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

    if-eqz p0, :cond_59

    if-ltz p3, :cond_59

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gez p2, :cond_39

    goto :goto_59

    :cond_39
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

    :cond_59
    :goto_59
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
    .registers 52

    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    const-string/jumbo v2, "video/avc"

    const-string/jumbo v3, "video/hevc"

    const-string/jumbo v4, "video/av01"

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result v11

    const v12, 0x1869f

    if-ne v11, v12, :cond_1a

    return-void

    :cond_1a
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getInputMediaItemInfos()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_27

    sget-object v11, Lcom/android/server/media/metrics/MediaMetricsManagerService;->EMPTY_MEDIA_ITEM_INFO:Landroid/media/metrics/MediaItemInfo;

    goto :goto_31

    :cond_27
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getInputMediaItemInfos()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/metrics/MediaItemInfo;

    :goto_31
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

    if-nez v17, :cond_66

    new-instance v7, Landroid/util/Size;

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    invoke-static {v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    move-result v17

    :cond_66
    move/from16 v7, v17

    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getCodecNames()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    const-string v17, ""

    if-nez v9, :cond_7b

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_7d

    :cond_7b
    move-object/from16 v9, v17

    :goto_7d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    move-object/from16 p0, v11

    const/4 v11, 0x1

    if-le v10, v11, :cond_8d

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_8f

    :cond_8d
    move-object/from16 v8, v17

    :goto_8f
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOutputMediaItemInfo()Landroid/media/metrics/MediaItemInfo;

    move-result-object v10

    if-nez v10, :cond_98

    sget-object v10, Lcom/android/server/media/metrics/MediaMetricsManagerService;->EMPTY_MEDIA_ITEM_INFO:Landroid/media/metrics/MediaItemInfo;

    goto :goto_9c

    :cond_98
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOutputMediaItemInfo()Landroid/media/metrics/MediaItemInfo;

    move-result-object v10

    :goto_9c
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

    if-nez v21, :cond_d2

    new-instance v10, Landroid/util/Size;

    move-wide/from16 v23, v12

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v12

    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v13

    invoke-direct {v10, v12, v13}, Landroid/util/Size;-><init>(II)V

    invoke-static {v10}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    move-result v21

    :goto_cf
    move/from16 v10, v21

    goto :goto_d5

    :cond_d2
    move-wide/from16 v23, v12

    goto :goto_cf

    :goto_d5
    invoke-virtual/range {v22 .. v22}, Landroid/media/metrics/MediaItemInfo;->getCodecNames()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_eb

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v13, v18

    :goto_e8
    move-object/from16 v21, v15

    goto :goto_ee

    :cond_eb
    move-object/from16 v13, v17

    goto :goto_e8

    :goto_ee
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    move-object/from16 v25, v13

    const/4 v13, 0x1

    if-le v15, v13, :cond_fe

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_100

    :cond_fe
    move-object/from16 v12, v17

    :goto_100
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

    if-eqz v11, :cond_143

    const/4 v11, 0x1

    goto :goto_144

    :cond_143
    const/4 v11, 0x0

    :goto_144
    invoke-virtual {v10, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v10

    const-wide/16 v31, 0x2

    and-long v35, v26, v31

    cmp-long v11, v35, v33

    if-eqz v11, :cond_152

    const/4 v11, 0x1

    goto :goto_153

    :cond_152
    const/4 v11, 0x0

    :goto_153
    invoke-virtual {v10, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v10

    const-wide/16 v35, 0x4

    and-long v37, v26, v35

    cmp-long v11, v37, v33

    if-eqz v11, :cond_161

    const/4 v11, 0x1

    goto :goto_162

    :cond_161
    const/4 v11, 0x0

    :goto_162
    invoke-virtual {v10, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v10

    const-wide/16 v37, 0x8

    and-long v39, v26, v37

    cmp-long v11, v39, v33

    if-eqz v11, :cond_170

    const/4 v11, 0x1

    goto :goto_171

    :cond_170
    const/4 v11, 0x0

    :goto_171
    invoke-virtual {v10, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v10

    const-wide/16 v39, 0x10

    and-long v41, v26, v39

    cmp-long v11, v41, v33

    if-eqz v11, :cond_17f

    const/4 v11, 0x1

    goto :goto_180

    :cond_17f
    const/4 v11, 0x0

    :goto_180
    invoke-virtual {v10, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v10

    const-wide/16 v41, 0x20

    and-long v43, v26, v41

    cmp-long v11, v43, v33

    if-eqz v11, :cond_18e

    const/4 v11, 0x1

    goto :goto_18f

    :cond_18e
    const/4 v11, 0x0

    :goto_18f
    invoke-virtual {v10, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v10

    const-wide/16 v43, 0x40

    and-long v45, v26, v43

    cmp-long v11, v45, v33

    if-eqz v11, :cond_19d

    const/4 v11, 0x1

    goto :goto_19e

    :cond_19d
    const/4 v11, 0x0

    :goto_19e
    invoke-virtual {v10, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v10

    const-wide/16 v45, 0x80

    and-long v26, v26, v45

    cmp-long v11, v26, v33

    if-eqz v11, :cond_1ac

    const/4 v11, 0x1

    goto :goto_1ad

    :cond_1ac
    const/4 v11, 0x0

    :goto_1ad
    invoke-virtual {v10, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getExporterName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1bc

    goto :goto_1c8

    :cond_1bc
    sget-object v13, Lcom/android/server/media/metrics/MediaMetricsManagerService;->PATTERN_KNOWN_EDITING_LIBRARY_NAMES:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-nez v13, :cond_1ca

    :goto_1c8
    move-object/from16 v11, v17

    :cond_1ca
    invoke-virtual {v10, v11}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getMuxerName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1d9

    goto :goto_1e5

    :cond_1d9
    sget-object v13, Lcom/android/server/media/metrics/MediaMetricsManagerService;->PATTERN_KNOWN_EDITING_LIBRARY_NAMES:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-nez v13, :cond_1e7

    :goto_1e5
    move-object/from16 v11, v17

    :cond_1e7
    invoke-virtual {v10, v11}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOutputMediaItemInfo()Landroid/media/metrics/MediaItemInfo;

    move-result-object v11

    if-nez v11, :cond_1f7

    move-object/from16 v47, v8

    move-object/from16 v17, v9

    move-object v13, v12

    goto :goto_213

    :cond_1f7
    move-object v13, v12

    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getVideoSampleCount()J

    move-result-wide v11

    const-wide/16 v26, -0x1

    cmp-long v17, v11, v26

    if-nez v17, :cond_207

    move-object/from16 v47, v8

    move-object/from16 v17, v9

    goto :goto_213

    :cond_207
    move-object/from16 v47, v8

    move-object/from16 v17, v9

    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getTimeSinceCreatedMillis()J

    move-result-wide v8

    cmp-long v26, v8, v26

    if-nez v26, :cond_215

    :goto_213
    const/4 v8, -0x1

    goto :goto_22b

    :cond_215
    const-wide v26, 0x408f400000000000L  # 1000.0

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

    :goto_22b
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

    if-eqz v9, :cond_24b

    const/4 v11, 0x1

    goto :goto_24c

    :cond_24b
    const/4 v11, 0x0

    :goto_24c
    invoke-virtual {v8, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    and-long v9, v23, v31

    cmp-long v9, v9, v33

    if-eqz v9, :cond_258

    const/4 v11, 0x1

    goto :goto_259

    :cond_258
    const/4 v11, 0x0

    :goto_259
    invoke-virtual {v8, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    and-long v9, v23, v35

    cmp-long v9, v9, v33

    if-eqz v9, :cond_265

    const/4 v11, 0x1

    goto :goto_266

    :cond_265
    const/4 v11, 0x0

    :goto_266
    invoke-virtual {v8, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    and-long v9, v23, v37

    cmp-long v9, v9, v33

    if-eqz v9, :cond_272

    const/4 v11, 0x1

    goto :goto_273

    :cond_272
    const/4 v11, 0x0

    :goto_273
    invoke-virtual {v8, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    and-long v9, v23, v39

    cmp-long v9, v9, v33

    if-eqz v9, :cond_27f

    const/4 v11, 0x1

    goto :goto_280

    :cond_27f
    const/4 v11, 0x0

    :goto_280
    invoke-virtual {v8, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    and-long v9, v23, v41

    cmp-long v9, v9, v33

    if-eqz v9, :cond_28c

    const/4 v11, 0x1

    goto :goto_28d

    :cond_28c
    const/4 v11, 0x0

    :goto_28d
    invoke-virtual {v8, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    and-long v9, v23, v43

    cmp-long v9, v9, v33

    if-eqz v9, :cond_299

    const/4 v11, 0x1

    goto :goto_29a

    :cond_299
    const/4 v11, 0x0

    :goto_29a
    invoke-virtual {v8, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    and-long v9, v23, v45

    cmp-long v9, v9, v33

    if-eqz v9, :cond_2a6

    const/4 v11, 0x1

    goto :goto_2a7

    :cond_2a6
    const/4 v11, 0x0

    :goto_2a7
    invoke-virtual {v8, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    const-wide/16 v9, 0x100

    and-long v11, v23, v9

    cmp-long v11, v11, v33

    if-eqz v11, :cond_2b5

    const/4 v11, 0x1

    goto :goto_2b6

    :cond_2b5
    const/4 v11, 0x0

    :goto_2b6
    invoke-virtual {v8, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    const-wide/16 v11, 0x200

    and-long v26, v23, v11

    cmp-long v26, v26, v33

    move-wide/from16 p1, v9

    if-eqz v26, :cond_2c6

    const/4 v9, 0x1

    goto :goto_2c7

    :cond_2c6
    const/4 v9, 0x0

    :goto_2c7
    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    const-wide/16 v9, 0x400

    and-long v23, v23, v9

    cmp-long v23, v23, v33

    if-eqz v23, :cond_2d7

    move-wide/from16 v23, v9

    const/4 v9, 0x1

    goto :goto_2da

    :cond_2d7
    move-wide/from16 v23, v9

    const/4 v9, 0x0

    :goto_2da
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

    if-eqz v9, :cond_311

    goto :goto_349

    :cond_311
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_57a

    :goto_318
    const/4 v9, -0x1

    goto :goto_346

    :sswitch_31a
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_321

    goto :goto_318

    :cond_321
    const/4 v9, 0x4

    goto :goto_346

    :sswitch_323
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_32a

    goto :goto_318

    :cond_32a
    const/4 v9, 0x3

    goto :goto_346

    :sswitch_32c
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_333

    goto :goto_318

    :cond_333
    const/4 v9, 0x2

    goto :goto_346

    :sswitch_335
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_33c

    goto :goto_318

    :cond_33c
    const/4 v9, 0x1

    goto :goto_346

    :sswitch_33e
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_345

    goto :goto_318

    :cond_345
    const/4 v9, 0x0

    :goto_346
    packed-switch v9, :pswitch_data_590

    :goto_349
    const/4 v9, 0x0

    goto :goto_354

    :pswitch_34b  #0x4
    const/4 v9, 0x4

    goto :goto_354

    :pswitch_34d  #0x3
    const/4 v9, 0x3

    goto :goto_354

    :pswitch_34f  #0x2
    const/4 v9, 0x1

    goto :goto_354

    :pswitch_351  #0x1
    const/4 v9, 0x2

    goto :goto_354

    :pswitch_353  #0x0
    const/4 v9, 0x5

    :goto_354
    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleRateHz()I

    move-result v9

    sparse-switch v9, :sswitch_data_59e

    const/4 v9, -0x1

    :sswitch_360
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

    if-lez v8, :cond_3a1

    if-gtz v10, :cond_397

    goto :goto_3a1

    :cond_397
    if-ge v8, v10, :cond_39b

    const/4 v11, 0x3

    goto :goto_3a2

    :cond_39b
    if-ge v10, v8, :cond_39f

    const/4 v11, 0x2

    goto :goto_3a2

    :cond_39f
    const/4 v11, 0x1

    goto :goto_3a2

    :cond_3a1
    :goto_3a1
    const/4 v11, 0x0

    :goto_3a2
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

    if-eqz v7, :cond_3e6

    const/4 v11, 0x1

    goto :goto_3e7

    :cond_3e6
    const/4 v11, 0x0

    :goto_3e7
    invoke-virtual {v5, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    and-long v7, v19, v31

    cmp-long v7, v7, v33

    if-eqz v7, :cond_3f3

    const/4 v11, 0x1

    goto :goto_3f4

    :cond_3f3
    const/4 v11, 0x0

    :goto_3f4
    invoke-virtual {v5, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    and-long v7, v19, v35

    cmp-long v7, v7, v33

    if-eqz v7, :cond_400

    const/4 v11, 0x1

    goto :goto_401

    :cond_400
    const/4 v11, 0x0

    :goto_401
    invoke-virtual {v5, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    and-long v7, v19, v37

    cmp-long v7, v7, v33

    if-eqz v7, :cond_40d

    const/4 v11, 0x1

    goto :goto_40e

    :cond_40d
    const/4 v11, 0x0

    :goto_40e
    invoke-virtual {v5, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    and-long v7, v19, v39

    cmp-long v7, v7, v33

    if-eqz v7, :cond_41a

    const/4 v11, 0x1

    goto :goto_41b

    :cond_41a
    const/4 v11, 0x0

    :goto_41b
    invoke-virtual {v5, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    and-long v7, v19, v41

    cmp-long v7, v7, v33

    if-eqz v7, :cond_427

    const/4 v11, 0x1

    goto :goto_428

    :cond_427
    const/4 v11, 0x0

    :goto_428
    invoke-virtual {v5, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    and-long v7, v19, v43

    cmp-long v7, v7, v33

    if-eqz v7, :cond_434

    const/4 v11, 0x1

    goto :goto_435

    :cond_434
    const/4 v11, 0x0

    :goto_435
    invoke-virtual {v5, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    and-long v7, v19, v45

    cmp-long v7, v7, v33

    if-eqz v7, :cond_441

    const/4 v11, 0x1

    goto :goto_442

    :cond_441
    const/4 v11, 0x0

    :goto_442
    invoke-virtual {v5, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    and-long v7, v19, p1

    cmp-long v7, v7, v33

    if-eqz v7, :cond_44e

    const/4 v11, 0x1

    goto :goto_44f

    :cond_44e
    const/4 v11, 0x0

    :goto_44f
    invoke-virtual {v5, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    and-long v7, v19, v26

    cmp-long v7, v7, v33

    if-eqz v7, :cond_45b

    const/4 v11, 0x1

    goto :goto_45c

    :cond_45b
    const/4 v11, 0x0

    :goto_45c
    invoke-virtual {v5, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    and-long v7, v19, v23

    cmp-long v7, v7, v33

    if-eqz v7, :cond_468

    const/4 v11, 0x1

    goto :goto_469

    :cond_468
    const/4 v11, 0x0

    :goto_469
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

    if-eqz v7, :cond_4a0

    goto :goto_4d8

    :cond_4a0
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_5c0

    :goto_4a7
    const/4 v11, -0x1

    goto :goto_4d5

    :sswitch_4a9
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b0

    goto :goto_4a7

    :cond_4b0
    const/4 v11, 0x4

    goto :goto_4d5

    :sswitch_4b2
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b9

    goto :goto_4a7

    :cond_4b9
    const/4 v11, 0x3

    goto :goto_4d5

    :sswitch_4bb
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c2

    goto :goto_4a7

    :cond_4c2
    const/4 v11, 0x2

    goto :goto_4d5

    :sswitch_4c4
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4cb

    goto :goto_4a7

    :cond_4cb
    const/4 v11, 0x1

    goto :goto_4d5

    :sswitch_4cd
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d4

    goto :goto_4a7

    :cond_4d4
    const/4 v11, 0x0

    :goto_4d5
    packed-switch v11, :pswitch_data_5d6

    :goto_4d8
    const/4 v7, 0x0

    goto :goto_4e3

    :pswitch_4da  #0x4
    const/4 v7, 0x4

    goto :goto_4e3

    :pswitch_4dc  #0x3
    const/4 v7, 0x3

    goto :goto_4e3

    :pswitch_4de  #0x2
    const/4 v7, 0x1

    goto :goto_4e3

    :pswitch_4e0  #0x1
    const/4 v7, 0x2

    goto :goto_4e3

    :pswitch_4e2  #0x0
    const/4 v7, 0x5

    :goto_4e3
    invoke-virtual {v5, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    invoke-virtual/range {v22 .. v22}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleRateHz()I

    move-result v1

    sparse-switch v1, :sswitch_data_5e4

    const/4 v8, -0x1

    goto :goto_4f1

    :sswitch_4f0
    move v8, v1

    :goto_4f1
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

    if-lez v1, :cond_532

    if-gtz v2, :cond_528

    goto :goto_532

    :cond_528
    if-ge v1, v2, :cond_52c

    const/4 v5, 0x3

    goto :goto_533

    :cond_52c
    if-ge v2, v1, :cond_530

    const/4 v5, 0x2

    goto :goto_533

    :cond_530
    const/4 v5, 0x1

    goto :goto_533

    :cond_532
    :goto_532
    const/4 v5, 0x0

    :goto_533
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

    :sswitch_data_57a
    .sparse-switch
        -0x631b55f6 -> :sswitch_33e
        -0x63185e82 -> :sswitch_335
        0x4f62373a -> :sswitch_32c
        0x5f50bed8 -> :sswitch_323
        0x5f50bed9 -> :sswitch_31a
    .end sparse-switch

    :pswitch_data_590
    .packed-switch 0x0
        :pswitch_353  #00000000
        :pswitch_351  #00000001
        :pswitch_34f  #00000002
        :pswitch_34d  #00000003
        :pswitch_34b  #00000004
    .end packed-switch

    :sswitch_data_59e
    .sparse-switch
        0x1f40 -> :sswitch_360
        0x2b11 -> :sswitch_360
        0x3e80 -> :sswitch_360
        0x5622 -> :sswitch_360
        0xac44 -> :sswitch_360
        0xbb80 -> :sswitch_360
        0x17700 -> :sswitch_360
        0x2ee00 -> :sswitch_360
    .end sparse-switch

    :sswitch_data_5c0
    .sparse-switch
        -0x631b55f6 -> :sswitch_4cd
        -0x63185e82 -> :sswitch_4c4
        0x4f62373a -> :sswitch_4bb
        0x5f50bed8 -> :sswitch_4b2
        0x5f50bed9 -> :sswitch_4a9
    .end sparse-switch

    :pswitch_data_5d6
    .packed-switch 0x0
        :pswitch_4e2  #00000000
        :pswitch_4e0  #00000001
        :pswitch_4de  #00000002
        :pswitch_4dc  #00000003
        :pswitch_4da  #00000004
    .end packed-switch

    :sswitch_data_5e4
    .sparse-switch
        0x1f40 -> :sswitch_4f0
        0x2b11 -> :sswitch_4f0
        0x3e80 -> :sswitch_4f0
        0x5622 -> :sswitch_4f0
        0xac44 -> :sswitch_4f0
        0xbb80 -> :sswitch_4f0
        0x17700 -> :sswitch_4f0
        0x2ee00 -> :sswitch_4f0
    .end sparse-switch
.end method

.method public final reportNetworkEvent(Ljava/lang/String;Landroid/media/metrics/NetworkEvent;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_a

    return-void

    :cond_a
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
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_a

    return-void

    :cond_a
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
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_a

    return-void

    :cond_a
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p3

    const/16 v0, 0x140

    invoke-virtual {p3, v0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p0, :cond_1c

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    goto :goto_1d

    :cond_1c
    move p0, v0

    :goto_1d
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
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_a

    return-void

    :cond_a
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
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_a

    return-void

    :cond_a
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
