.class public final synthetic Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerConstants;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerConstants;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowManagerConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 9

    iget v0, p0, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowManagerConstants;

    packed-switch v0, :pswitch_data_116

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_d
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2a

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_88

    :catchall_28
    move-exception p0

    goto :goto_89

    :cond_2a
    :try_start_2a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    sparse-switch v2, :sswitch_data_11c

    goto :goto_61

    :sswitch_35
    const-string/jumbo v2, "opt_out_ignore_activity_orientation_request_list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    move v1, v5

    goto :goto_62

    :sswitch_40
    const-string/jumbo v2, "system_gesture_exclusion_log_debounce_millis"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    const/4 v1, 0x0

    goto :goto_62

    :sswitch_4b
    const-string/jumbo v2, "ignore_activity_orientation_request"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    move v1, v4

    goto :goto_62

    :sswitch_56
    const-string/jumbo v2, "ignore_activity_orientation_request_screens"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    move v1, v3

    goto :goto_62

    :cond_61
    :goto_61
    const/4 v1, -0x1

    :goto_62
    if-eqz v1, :cond_73

    if-eq v1, v4, :cond_6f

    if-eq v1, v3, :cond_6f

    if-eq v1, v5, :cond_6b

    goto :goto_15

    :cond_6b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateOptOutIgnoreActivityOrientationRequestList()V

    goto :goto_15

    :cond_6f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateIgnoreActivityOrientationRequest()V

    goto :goto_15

    :cond_73
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v2, "system_gesture_exclusion_log_debounce_millis"

    const-string/jumbo v3, "window_manager"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v2, v4, v5}, Landroid/provider/DeviceConfigInterface;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    goto :goto_15

    :cond_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_2a .. :try_end_85} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_88
    return-void

    :goto_89
    :try_start_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :pswitch_8e  #0x0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_94
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_9e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_104

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_b3

    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_94 .. :try_end_ad} :catchall_b1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_10f

    :catchall_b1
    move-exception p0

    goto :goto_110

    :cond_b3
    :try_start_b3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x4bcc3a39

    const/4 v6, 0x1

    if-eq v4, v5, :cond_ce

    const v5, 0x12e32da7

    if-eq v4, v5, :cond_c3

    goto :goto_d9

    :cond_c3
    const-string/jumbo v4, "system_gesture_exclusion_limit_dp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d9

    move v3, v1

    goto :goto_da

    :cond_ce
    const-string/jumbo v4, "system_gestures_excluded_by_pre_q_sticky_immersive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d9

    move v3, v6

    goto :goto_da

    :cond_d9
    :goto_d9
    const/4 v3, -0x1

    :goto_da
    if-eqz v3, :cond_ef

    if-eq v3, v6, :cond_df

    goto :goto_9e

    :cond_df
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v3, "system_gestures_excluded_by_pre_q_sticky_immersive"

    const-string/jumbo v4, "android"

    invoke-interface {v2, v4, v3, v1}, Landroid/provider/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExcludedByPreQStickyImmersive:Z

    :goto_ed
    move v2, v6

    goto :goto_9e

    :cond_ef
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v3, "system_gesture_exclusion_limit_dp"

    const-string/jumbo v4, "android"

    invoke-interface {v2, v4, v3, v1}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xc8

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    goto :goto_ed

    :cond_104
    if-eqz v2, :cond_10b

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerConstants;->mUpdateSystemGestureExclusionCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_10b
    monitor-exit v0
    :try_end_10c
    .catchall {:try_start_b3 .. :try_end_10c} :catchall_b1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_10f
    return-void

    :goto_110
    :try_start_110
    monitor-exit v0
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_b1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    nop

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_8e  #00000000
    .end packed-switch

    :sswitch_data_11c
    .sparse-switch
        -0x7dbcbf7b -> :sswitch_56
        -0x288426c3 -> :sswitch_4b
        -0x7801476 -> :sswitch_40
        0xb5f6a3d -> :sswitch_35
    .end sparse-switch
.end method
