.class public final Lcom/android/server/power/stats/BatteryStatsImpl$Constants;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public BATTERY_CHARGED_DELAY_MS:I

.field public BATTERY_CHARGING_ENFORCE_LEVEL:I

.field public BATTERY_LEVEL_COLLECTION_DELAY_MS:J

.field public EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

.field public KERNEL_UID_READERS_THROTTLE_TIME:J

.field public MAX_HISTORY_BUFFER:I

.field public MAX_HISTORY_SIZE:I

.field public PER_UID_MODEM_MODEL:I

.field public PHONE_ON_EXTERNAL_STATS_COLLECTION:Z

.field public PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

.field public RESET_WHILE_PLUGGED_IN_MINIMUM_DURATION_HOURS:I

.field public TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

.field public UID_REMOVE_DELAY_MS:J

.field public final mParser:Landroid/util/KeyValueListParser;

.field public mResolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->UID_REMOVE_DELAY_MS:J

    const-wide/32 v2, 0x927c0

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_LEVEL_COLLECTION_DELAY_MS:J

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

    const v0, 0xdbba0

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGING_ENFORCE_LEVEL:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PER_UID_MODEM_MODEL:I

    iput-boolean p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PHONE_ON_EXTERNAL_STATS_COLLECTION:Z

    const/16 p2, 0x2f

    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->RESET_WHILE_PLUGGED_IN_MINIMUM_DURATION_HOURS:I

    new-instance p2, Landroid/util/KeyValueListParser;

    const/16 v0, 0x2c

    invoke-direct {p2, v0}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-static {}, Lcom/android/server/power/stats/BatteryStatsImpl;->access$000()Z

    move-result p2

    if-eqz p2, :cond_3f

    const/high16 p2, 0x10000

    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    goto :goto_43

    :cond_3f
    const/high16 p2, 0x20000

    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    :goto_43
    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    iget p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mMaxHistorySizeBytes:I

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_SIZE:I

    return-void
.end method


# virtual methods
.method public onChange()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mBatteryHistoryDirectory:Lcom/android/server/power/stats/BatteryHistoryDirectory;

    if-eqz v0, :cond_d

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_SIZE:I

    iput v1, v0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mMaxHistorySize:I

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->trim()V

    :cond_d
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsHistory;->setMaxHistoryBufferSize(I)V

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .registers 4

    const-string/jumbo p1, "battery_charging_state_update_delay"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateBatteryChargedDelayMsLocked()V

    monitor-exit p1

    return-void

    :catchall_15
    move-exception p0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_15

    throw p0

    :cond_18
    const-string/jumbo p1, "battery_charging_state_enforce_level"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    :try_start_28
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateBatteryChargingEnforceLevelLocked()V

    monitor-exit p1

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_2d

    throw p0

    :cond_30
    const-string/jumbo p1, "screen_brightness_mode"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    :try_start_40
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "screen_brightness_mode"

    invoke-static {p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p2

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteScreenAutoBrightnessLocked(I)V
    :try_end_4e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_40 .. :try_end_4e} :catch_4f
    .catchall {:try_start_40 .. :try_end_4e} :catchall_55

    goto :goto_53

    :catch_4f
    move-exception p0

    :try_start_50
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :goto_53
    monitor-exit p1

    return-void

    :catchall_55
    move-exception p0

    monitor-exit p1
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_55

    throw p0

    :cond_58
    const-string/jumbo p1, "refresh_rate_mode"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_97

    const-string/jumbo p1, "refresh_rate_mode_cover"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_73

    goto :goto_97

    :cond_73
    const-string/jumbo p1, "protect_battery"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_93

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    :try_start_83
    const-string p2, "BatteryStatsImpl"

    const-string/jumbo v0, "Observer"

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateProtectBatteryModeLocked()V

    monitor-exit p1

    return-void

    :catchall_90
    move-exception p0

    monitor-exit p1
    :try_end_92
    .catchall {:try_start_83 .. :try_end_92} :catchall_90

    throw p0

    :cond_93
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateConstants()V

    return-void

    :cond_97
    :goto_97
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    :try_start_9a
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateDisplayHighRefreshRateLocked()V

    monitor-exit p1

    return-void

    :catchall_9f
    move-exception p0

    monitor-exit p1
    :try_end_a1
    .catchall {:try_start_9a .. :try_end_a1} :catchall_9f

    throw p0
.end method

.method public final updateBatteryChargedDelayMsLocked()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "battery_charging_state_update_delay"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_d

    goto :goto_19

    :cond_d
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v1, "battery_charged_delay_ms"

    const v2, 0xdbba0

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_19
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDeferSetCharging:Lcom/android/server/power/stats/BatteryStatsImpl$5;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDeferSetCharging:Lcom/android/server/power/stats/BatteryStatsImpl$5;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDeferSetCharging:Lcom/android/server/power/stats/BatteryStatsImpl$5;

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    int-to-long v2, p0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3c
    return-void
.end method

.method public final updateBatteryChargingEnforceLevelLocked()V
    .registers 5

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGING_ENFORCE_LEVEL:I

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "battery_charging_state_enforce_level"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_f

    goto :goto_1a

    :cond_f
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "battery_charging_enforce_level"

    const/16 v3, 0x5a

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_1a
    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGING_ENFORCE_LEVEL:I

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mLastChargeStepLevel:I

    if-gt v1, v2, :cond_28

    if-ge v2, v0, :cond_28

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->setChargingLocked(Z)Z

    :cond_28
    return-void
.end method

.method public final updateConstants()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "battery_stats_constants"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_11} :catch_15
    .catchall {:try_start_3 .. :try_end_11} :catchall_12

    goto :goto_1d

    :catchall_12
    move-exception p0

    goto/16 :goto_110

    :catch_15
    move-exception v1

    :try_start_16
    const-string v2, "BatteryStatsImpl"

    const-string v3, "Bad batterystats settings"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "track_cpu_active_cluster_time"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v5, "kernel_uid_readers_throttle_time"

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateKernelUidReadersThrottleTime(JJ)V

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "uid_remove_delay_ms"

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v2, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->UID_REMOVE_DELAY_MS:J

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->clearPendingRemovedUidsLocked()V

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "external_stats_collection_rate_limit_ms"

    const-wide/32 v6, 0x927c0

    invoke-virtual {v1, v2, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "battery_level_collection_delay_ms"

    invoke-virtual {v1, v2, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_LEVEL_COLLECTION_DELAY_MS:J

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "procstate_change_collection_delay_ms"

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_history_buffer_kb"

    invoke-static {}, Lcom/android/server/power/stats/BatteryStatsImpl;->access$100()Z

    move-result v4

    if-eqz v4, :cond_81

    const/16 v4, 0x40

    goto :goto_83

    :cond_81
    const/16 v4, 0x80

    :goto_83
    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_history_size"

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_a5

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v5, "max_history_files"

    invoke-virtual {v2, v5, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_a5

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    mul-int/2addr v1, v2

    :cond_a5
    if-ne v1, v4, :cond_ad

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    iget v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mMaxHistorySizeBytes:I

    :cond_ad
    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_SIZE:I

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "per_uid_modem_power_model"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_bd
    .catchall {:try_start_16 .. :try_end_bd} :catchall_12

    const/4 v2, 0x2

    const-string/jumbo v4, "modem_activity_info_rx_tx"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_eb

    const-string/jumbo v4, "mobile_radio_active_time"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ea

    :try_start_d0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unexpected per uid modem model name ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "BatteryStatsImpl"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_eb

    :cond_ea
    move v2, v3

    :cond_eb
    :goto_eb
    iput v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PER_UID_MODEM_MODEL:I

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "phone_on_external_stats_collection"

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PHONE_ON_EXTERNAL_STATS_COLLECTION:Z

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "reset_while_plugged_in_minimum_duration_hours"

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->RESET_WHILE_PLUGGED_IN_MINIMUM_DURATION_HOURS:I

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateBatteryChargedDelayMsLocked()V

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateBatteryChargingEnforceLevelLocked()V

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->onChange()V

    monitor-exit v0

    return-void

    :goto_110
    monitor-exit v0
    :try_end_111
    .catchall {:try_start_d0 .. :try_end_111} :catchall_12

    throw p0
.end method

.method public final updateDisplayHighRefreshRateLocked()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "refresh_rate_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mMainDisplayHrrBin:I

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "refresh_rate_mode_cover"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCoverDisplayHrrBin:I

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mMainDisplayHrrBin:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteMainDisplayHighRefreshRateLocked(IJ)V

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mSubScreenState:I

    iget v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCoverDisplayHrrBin:I

    if-ltz v2, :cond_46

    const/4 v3, 0x4

    if-lt v2, v3, :cond_39

    goto :goto_46

    :cond_39
    const/4 v2, 0x0

    :goto_3a
    if-ge v2, v3, :cond_53

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCoverDisplayHrrTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v2

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_46
    :goto_46
    const-string p0, "BatteryStatsImpl"

    const-string/jumbo v0, "Something was wrong while updating the cover display\'s refresh rate"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_4e} :catch_4f

    return-void

    :catch_4f
    move-exception p0

    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :cond_53
    return-void
.end method

.method public final updateKernelUidReadersThrottleTime(JJ)V
    .registers 5

    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    cmp-long p1, p1, p3

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    invoke-virtual {p1, p3, p4}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->setThrottle(J)V

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    iget-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->setThrottle(J)V

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    iget-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->setThrottle(J)V

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    iget-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->setThrottle(J)V

    :cond_28
    return-void
.end method

.method public final updateProtectBatteryModeLocked()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "protect_battery"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_34

    sget v1, Landroid/os/BatteryStats;->NUM_PROTECT_BATTERY_MODE_TYPES:I

    if-lt v0, v1, :cond_11

    goto :goto_34

    :cond_11
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mProtectBatteryMode:I

    if-eq v2, v0, :cond_33

    iput v0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mProtectBatteryMode:I

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setProtectBatteryState(I)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    :cond_33
    return-void

    :cond_34
    :goto_34
    const-string/jumbo p0, "Unknown protect battery type "

    const-string v1, " was specified."

    invoke-static {v0, p0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "BatteryStatsImpl"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
