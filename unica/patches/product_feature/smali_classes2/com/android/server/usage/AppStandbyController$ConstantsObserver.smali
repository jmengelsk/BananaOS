.class public final Lcom/android/server/usage/AppStandbyController$ConstantsObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final KEYS_ELAPSED_TIME_THRESHOLDS:[Ljava/lang/String;

.field public final KEYS_SCREEN_TIME_THRESHOLDS:[Ljava/lang/String;

.field public final mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field public final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Handler;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "screen_threshold_working_set"

    const-string/jumbo p2, "screen_threshold_frequent"

    const-string/jumbo v0, "screen_threshold_active"

    const-string/jumbo v1, "screen_threshold_rare"

    const-string/jumbo v2, "screen_threshold_restricted"

    filled-new-array {v0, p1, p2, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_SCREEN_TIME_THRESHOLDS:[Ljava/lang/String;

    const-string/jumbo p1, "elapsed_threshold_working_set"

    const-string/jumbo p2, "elapsed_threshold_frequent"

    const-string/jumbo v0, "elapsed_threshold_active"

    const-string/jumbo v1, "elapsed_threshold_rare"

    const-string/jumbo v2, "elapsed_threshold_restricted"

    filled-new-array {v0, p1, p2, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_ELAPSED_TIME_THRESHOLDS:[Ljava/lang/String;

    new-instance p1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 p2, 0x7c

    invoke-direct {p1, p2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public static generateThresholdArray(Landroid/provider/DeviceConfig$Properties;[Ljava/lang/String;[J[J)[J
    .registers 12

    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p2

    :cond_b
    array-length v0, p1

    const-string v1, ") != # buckets (5)"

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4c

    array-length v0, p2

    if-ne v0, v2, :cond_3a

    array-length v0, p3

    if-eq v0, v2, :cond_21

    const-string p3, "AppStandbyController"

    const-string/jumbo v0, "minValues array is the wrong size"

    invoke-static {p3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-array p3, v2, [J

    :cond_21
    new-array v0, v2, [J

    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_39

    aget-wide v3, p3, v1

    aget-object v5, p1, v1

    aget-wide v6, p2, v1

    invoke-virtual {p0, v5, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    aput-wide v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_39
    return-object v0

    :cond_3a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "# defaults ("

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p2

    invoke-static {p2, p1, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4c
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "# keys ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-static {p1, p2, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->updateSettings()V

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    return-void
.end method

.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->processProperties(Landroid/provider/DeviceConfig$Properties;)V

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    return-void
.end method

.method public final processProperties(Landroid/provider/DeviceConfig$Properties;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, v2, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v2

    :try_start_9
    invoke-virtual {v1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_331

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_21

    goto :goto_12

    :cond_21
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x14

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v7, :sswitch_data_336

    goto/16 :goto_156

    :sswitch_2e
    const-string/jumbo v7, "initial_foreground_service_start_duration"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    move v7, v9

    goto/16 :goto_157

    :catchall_3a
    move-exception v0

    goto/16 :goto_333

    :sswitch_3d
    const-string/jumbo v7, "strong_usage_duration"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    const/16 v7, 0x8

    goto/16 :goto_157

    :sswitch_4a
    const-string/jumbo v7, "prediction_timeout"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    const/16 v7, 0x9

    goto/16 :goto_157

    :sswitch_57
    const-string/jumbo v7, "cross_profile_apps_share_standby_buckets"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    move v7, v10

    goto/16 :goto_157

    :sswitch_63
    const-string/jumbo v7, "exempted_sync_start_duration"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    const/16 v7, 0xf

    goto/16 :goto_157

    :sswitch_70
    const-string/jumbo v7, "broadcast_sessions_duration_ms"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    const/16 v7, 0x13

    goto/16 :goto_157

    :sswitch_7d
    const-string/jumbo v7, "notification_seen_promoted_bucket"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    const/4 v7, 0x4

    goto/16 :goto_157

    :sswitch_89
    const-string/jumbo v7, "broadcast_response_fg_threshold_state"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    const/16 v7, 0x12

    goto/16 :goto_157

    :sswitch_96
    const-string/jumbo v7, "exempted_sync_scheduled_nd_duration"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    const/16 v7, 0xe

    goto/16 :goto_157

    :sswitch_a3
    const-string/jumbo v7, "retain_notification_seen_impact_for_pre_t_apps"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    const/4 v7, 0x5

    goto/16 :goto_157

    :sswitch_af
    const-string/jumbo v7, "exempted_sync_scheduled_d_duration"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    const/16 v7, 0xd

    goto/16 :goto_157

    :sswitch_bc
    const-string/jumbo v7, "broadcast_response_window_timeout_ms"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    const/16 v7, 0x11

    goto/16 :goto_157

    :sswitch_c9
    const-string/jumbo v7, "brodacast_response_exempted_roles"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    const/16 v7, 0x16

    goto/16 :goto_157

    :sswitch_d6
    const-string/jumbo v7, "system_update_usage_duration"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    const/16 v7, 0xb

    goto/16 :goto_157

    :sswitch_e3
    const-string/jumbo v7, "note_response_event_for_all_broadcast_sessions"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    const/16 v7, 0x15

    goto :goto_157

    :sswitch_ef
    const-string/jumbo v7, "system_interaction_duration"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    const/16 v7, 0xa

    goto :goto_157

    :sswitch_fb
    const-string/jumbo v7, "notification_seen_duration"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    const/4 v7, 0x3

    goto :goto_157

    :sswitch_106
    const-string/jumbo v7, "auto_restricted_bucket_delay_ms"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    const/4 v7, 0x0

    goto :goto_157

    :sswitch_111
    const-string/jumbo v7, "slice_pinned_duration"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    const/4 v7, 0x7

    goto :goto_157

    :sswitch_11c
    const-string/jumbo v7, "broadcast_sessions_with_response_duration_ms"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    move v7, v8

    goto :goto_157

    :sswitch_127
    const-string/jumbo v7, "unexempted_sync_scheduled_duration"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    const/16 v7, 0x10

    goto :goto_157

    :sswitch_133
    const-string/jumbo v7, "trigger_quota_bump_on_notification_seen"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    const/4 v7, 0x6

    goto :goto_157

    :sswitch_13e
    const-string/jumbo v7, "brodacast_response_exempted_permissions"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    const/16 v7, 0x17

    goto :goto_157

    :sswitch_14a
    const-string/jumbo v7, "sync_adapter_duration"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    const/16 v7, 0xc

    goto :goto_157

    :cond_156
    :goto_156
    const/4 v7, -0x1

    :goto_157
    const-wide/32 v13, 0xdbba00

    move/from16 v16, v5

    const-wide/32 v11, 0x1d4c0

    const-wide/32 v4, 0x927c0

    packed-switch v7, :pswitch_data_398

    if-nez v16, :cond_17a

    const-string/jumbo v4, "screen_threshold_"

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17d

    const-string/jumbo v4, "elapsed_threshold_"

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17a

    goto :goto_17d

    :cond_17a
    :goto_17a
    const/4 v15, 0x0

    goto/16 :goto_31f

    :cond_17d
    :goto_17d
    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->updateTimeThresholds()V

    move v5, v10

    const/4 v15, 0x0

    goto/16 :goto_321

    :pswitch_184  #0x17
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "brodacast_response_exempted_permissions"

    const-string v7, ""

    invoke-virtual {v1, v5, v7}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissions:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v5, v4, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissions:Ljava/lang/String;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v8, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :goto_19f
    iget-object v5, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b1

    iget-object v5, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19f

    :cond_1b1
    iput-object v7, v4, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissionsList:Ljava/util/List;

    goto :goto_17a

    :pswitch_1b4  #0x16
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "brodacast_response_exempted_roles"

    const-string v7, ""

    invoke-virtual {v1, v5, v7}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRoles:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v5, v4, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRoles:Ljava/lang/String;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v8, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :goto_1cf
    iget-object v5, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e1

    iget-object v5, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1cf

    :cond_1e1
    iput-object v7, v4, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRolesList:Ljava/util/List;

    goto :goto_17a

    :pswitch_1e4  #0x15
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "note_response_event_for_all_broadcast_sessions"

    invoke-virtual {v1, v5, v10}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/server/usage/AppStandbyController;->mNoteResponseEventForAllBroadcastSessions:Z

    goto :goto_17a

    :pswitch_1f0  #0x14
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "broadcast_sessions_with_response_duration_ms"

    invoke-virtual {v1, v5, v11, v12}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsWithResponseDurationMs:J

    goto/16 :goto_17a

    :pswitch_1fd  #0x13
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "broadcast_sessions_duration_ms"

    invoke-virtual {v1, v5, v11, v12}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsDurationMs:J

    goto/16 :goto_17a

    :pswitch_20a  #0x12
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "broadcast_response_fg_threshold_state"

    invoke-virtual {v1, v5, v9}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseFgThresholdState:I

    goto/16 :goto_17a

    :pswitch_217  #0x11
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "broadcast_response_window_timeout_ms"

    invoke-virtual {v1, v5, v11, v12}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseWindowDurationMillis:J

    goto/16 :goto_17a

    :pswitch_224  #0x10
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v8, "unexempted_sync_scheduled_duration"

    invoke-virtual {v1, v8, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v7, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    goto/16 :goto_17a

    :pswitch_231  #0xf
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v8, "exempted_sync_start_duration"

    invoke-virtual {v1, v8, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v7, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    goto/16 :goto_17a

    :pswitch_23e  #0xe
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v8, "exempted_sync_scheduled_nd_duration"

    invoke-virtual {v1, v8, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v7, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    goto/16 :goto_17a

    :pswitch_24b  #0xd
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "exempted_sync_scheduled_d_duration"

    invoke-virtual {v1, v5, v13, v14}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    goto/16 :goto_17a

    :pswitch_258  #0xc
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "sync_adapter_duration"

    const-wide/32 v7, 0x6ddd00

    invoke-virtual {v1, v5, v7, v8}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    goto/16 :goto_17a

    :pswitch_268  #0xb
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "system_update_usage_duration"

    const-wide/32 v7, 0x6ddd00

    invoke-virtual {v1, v5, v7, v8}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    goto/16 :goto_17a

    :pswitch_278  #0xa
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v8, "system_interaction_duration"

    invoke-virtual {v1, v8, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v7, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    goto/16 :goto_17a

    :pswitch_285  #0x9
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "prediction_timeout"

    const-wide/32 v7, 0x2932e00

    invoke-virtual {v1, v5, v7, v8}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    goto/16 :goto_17a

    :pswitch_295  #0x8
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "strong_usage_duration"

    const-wide/32 v7, 0x493e0

    invoke-virtual {v1, v5, v7, v8}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    goto/16 :goto_17a

    :pswitch_2a5  #0x7
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "slice_pinned_duration"

    const-wide/32 v7, 0x6ddd00

    invoke-virtual {v1, v5, v7, v8}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    goto/16 :goto_17a

    :pswitch_2b5  #0x6
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "trigger_quota_bump_on_notification_seen"

    const/4 v15, 0x0

    invoke-virtual {v1, v5, v15}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    goto/16 :goto_17a

    :pswitch_2c3  #0x5
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "retain_notification_seen_impact_for_pre_t_apps"

    const/4 v15, 0x0

    invoke-virtual {v1, v5, v15}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/server/usage/AppStandbyController;->mRetainNotificationSeenImpactForPreTApps:Z

    goto :goto_31f

    :pswitch_2d0  #0x4
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "notification_seen_promoted_bucket"

    invoke-virtual {v1, v5, v8}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenPromotedBucket:I

    goto :goto_31f

    :pswitch_2dd  #0x3
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "notification_seen_duration"

    const-wide/32 v7, 0x2932e00

    invoke-virtual {v1, v5, v7, v8}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    goto :goto_31f

    :pswitch_2ed  #0x2
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "initial_foreground_service_start_duration"

    const-wide/32 v7, 0x1b7740

    invoke-virtual {v1, v5, v7, v8}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    goto :goto_31f

    :pswitch_2fd  #0x1
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "cross_profile_apps_share_standby_buckets"

    invoke-virtual {v1, v5, v10}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/server/usage/AppStandbyController;->mLinkCrossProfileApps:Z

    goto :goto_31f

    :pswitch_30a  #0x0
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, v4, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const-string/jumbo v5, "auto_restricted_bucket_delay_ms"

    const-wide/32 v7, 0x36ee80

    invoke-virtual {v1, v5, v7, v8}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/server/usage/AppStandbyController$Injector;->mAutoRestrictedBucketDelayMs:J

    :goto_31f
    move/from16 v5, v16

    :goto_321
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, v4, Lcom/android/server/usage/AppStandbyController;->mAppStandbyProperties:Ljava/util/Map;

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12

    :cond_331
    monitor-exit v2

    return-void

    :goto_333
    monitor-exit v2
    :try_end_334
    .catchall {:try_start_9 .. :try_end_334} :catchall_3a

    throw v0

    nop

    :sswitch_data_336
    .sparse-switch
        -0x76b36a58 -> :sswitch_14a
        -0x75045963 -> :sswitch_13e
        -0x6afce736 -> :sswitch_133
        -0x6000e4de -> :sswitch_127
        -0x5ae629d8 -> :sswitch_11c
        -0x3f649292 -> :sswitch_111
        -0x3a025ebd -> :sswitch_106
        -0x2976517c -> :sswitch_fb
        -0x27006ecf -> :sswitch_ef
        -0x2640551b -> :sswitch_e3
        -0x213d7968 -> :sswitch_d6
        -0x118af86a -> :sswitch_c9
        -0x7b1914d -> :sswitch_bc
        -0x36fd73c -> :sswitch_af
        0x107a759e -> :sswitch_a3
        0x1b373ae8 -> :sswitch_96
        0x2c3f9a7f -> :sswitch_89
        0x37ee8ef5 -> :sswitch_7d
        0x3b245c4d -> :sswitch_70
        0x41e851f4 -> :sswitch_63
        0x4ccb367f -> :sswitch_57
        0x5227fdb1 -> :sswitch_4a
        0x5375dd1a -> :sswitch_3d
        0x722857dc -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_398
    .packed-switch 0x0
        :pswitch_30a  #00000000
        :pswitch_2fd  #00000001
        :pswitch_2ed  #00000002
        :pswitch_2dd  #00000003
        :pswitch_2d0  #00000004
        :pswitch_2c3  #00000005
        :pswitch_2b5  #00000006
        :pswitch_2a5  #00000007
        :pswitch_295  #00000008
        :pswitch_285  #00000009
        :pswitch_278  #0000000a
        :pswitch_268  #0000000b
        :pswitch_258  #0000000c
        :pswitch_24b  #0000000d
        :pswitch_23e  #0000000e
        :pswitch_231  #0000000f
        :pswitch_224  #00000010
        :pswitch_217  #00000011
        :pswitch_20a  #00000012
        :pswitch_1fd  #00000013
        :pswitch_1f0  #00000014
        :pswitch_1e4  #00000015
        :pswitch_1b4  #00000016
        :pswitch_184  #00000017
    .end packed-switch
.end method

.method public final updateSettings()V
    .registers 6

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110170

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "app_standby_enabled"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v4, :cond_33

    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "adaptive_battery_management_enabled"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_33

    move v0, v4

    goto :goto_34

    :cond_33
    move v0, v3

    :goto_34
    if-eqz v1, :cond_39

    if-eqz v0, :cond_39

    goto :goto_3a

    :cond_39
    move v4, v3

    :goto_3a
    invoke-virtual {p0, v4}, Lcom/android/server/usage/AppStandbyController;->setAppIdleEnabled(Z)V

    return-void
.end method

.method public final updateTimeThresholds()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_SCREEN_TIME_THRESHOLDS:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "app_standby"

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, v2, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_ELAPSED_TIME_THRESHOLDS:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v3}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_SCREEN_TIME_THRESHOLDS:[Ljava/lang/String;

    sget-object v4, Lcom/android/server/usage/AppStandbyController;->DEFAULT_SCREEN_TIME_THRESHOLDS:[J

    sget-object v5, Lcom/android/server/usage/AppStandbyController;->MINIMUM_SCREEN_TIME_THRESHOLDS:[J

    invoke-static {v1, v3, v4, v5}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->generateThresholdArray(Landroid/provider/DeviceConfig$Properties;[Ljava/lang/String;[J[J)[J

    move-result-object v1

    iput-object v1, v2, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_ELAPSED_TIME_THRESHOLDS:[Ljava/lang/String;

    sget-object v3, Lcom/android/server/usage/AppStandbyController;->DEFAULT_ELAPSED_TIME_THRESHOLDS:[J

    sget-object v4, Lcom/android/server/usage/AppStandbyController;->MINIMUM_ELAPSED_TIME_THRESHOLDS:[J

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->generateThresholdArray(Landroid/provider/DeviceConfig$Properties;[Ljava/lang/String;[J[J)[J

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    const-wide/32 v2, 0xdbba00

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    return-void
.end method
