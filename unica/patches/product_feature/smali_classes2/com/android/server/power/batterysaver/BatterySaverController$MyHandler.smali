.class public final Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 19

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto/16 :goto_7

    :cond_0
    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iget v0, v0, Landroid/os/Message;->arg2:I

    iget-object v5, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/PowerManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v5, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    :cond_2
    iget-object v5, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    iget-object v6, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-boolean v7, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    if-nez v7, :cond_4

    iget-boolean v8, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    move v8, v4

    goto :goto_2

    :cond_4
    :goto_1
    move v8, v2

    :goto_2
    iget-boolean v9, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullPreviouslyEnabled:Z

    iget-boolean v10, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptivePreviouslyEnabled:Z

    iget-boolean v11, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    if-eqz v8, :cond_5

    iget-object v8, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    iget-object v12, v8, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v8, v8, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEventLogKeys:Ljava/lang/String;

    monitor-exit v12

    :goto_3
    move-object/from16 v17, v8

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :cond_5
    const-string v8, ""

    goto :goto_3

    :goto_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    filled-new-array/range {v12 .. v18}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0xab3

    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-boolean v0, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    iput-boolean v0, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullPreviouslyEnabled:Z

    iget-boolean v0, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    iput-boolean v0, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptivePreviouslyEnabled:Z

    iget-object v0, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    new-array v5, v4, [Landroid/os/PowerManagerInternal$LowPowerModeListener;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/PowerManagerInternal$LowPowerModeListener;

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-class v5, Landroid/os/PowerManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManagerInternal;

    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v2, v6}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    :cond_6
    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->updateBatterySavingStats()V

    if-eqz v3, :cond_8

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v5, "BatterySaverController"

    const-string/jumbo v6, "send ACTION_POWER_SAVE_MODE_CHANGED"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPowerSaveModeChangedListenerPackage()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPowerSaveModeChangedListenerPackage()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v5, 0x11000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    iget-object v5, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_7
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "BatterySaverController"

    const-string/jumbo v5, "send ACTION_POWER_SAVE_MODE_CHANGED_INTERNAL"

    invoke-static {v3, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v2, v6, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    array-length v2, v0

    :goto_5
    if-ge v4, v2, :cond_8

    aget-object v3, v0, v4

    iget-object v5, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-interface {v3}, Landroid/os/PowerManagerInternal$LowPowerModeListener;->getServiceType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    move-result-object v5

    const-string v6, "BatterySaverController"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onLowPowerModeChanged: ServiceType: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/os/PowerManagerInternal$LowPowerModeListener;->getServiceType()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    const-string/jumbo v8, "UNKNOWN"

    goto :goto_6

    :pswitch_0
    const-string/jumbo v8, "NIGHT_MODE"

    goto :goto_6

    :pswitch_1
    const-string/jumbo v8, "QUICK_DOZE"

    goto :goto_6

    :pswitch_2
    const-string v8, "AOD"

    goto :goto_6

    :pswitch_3
    const-string/jumbo v8, "OPTIONAL_SENSORS"

    goto :goto_6

    :pswitch_4
    const-string v8, "FORCE_BACKGROUND_CHECK"

    goto :goto_6

    :pswitch_5
    const-string v8, "FORCE_ALL_APPS_STANDBY"

    goto :goto_6

    :pswitch_6
    const-string v8, "DATA_SAVER"

    goto :goto_6

    :pswitch_7
    const-string v8, "BATTERY_STATS"

    goto :goto_6

    :pswitch_8
    const-string/jumbo v8, "SOUND"

    goto :goto_6

    :pswitch_9
    const-string/jumbo v8, "SCREEN_BRIGHTNESS"

    goto :goto_6

    :pswitch_a
    const-string/jumbo v8, "NETWORK_FIREWALL"

    goto :goto_6

    :pswitch_b
    const-string v8, "KEYVALUE_BACKUP"

    goto :goto_6

    :pswitch_c
    const-string v8, "FULL_BACKUP"

    goto :goto_6

    :pswitch_d
    const-string v8, "ANIMATION"

    goto :goto_6

    :pswitch_e
    const-string/jumbo v8, "VIBRATION"

    goto :goto_6

    :pswitch_f
    const-string v8, "LOCATION"

    goto :goto_6

    :pswitch_10
    const-string/jumbo v8, "NULL"

    :goto_6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v5, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, v5}, Landroid/os/PowerManagerInternal$LowPowerModeListener;->onLowPowerModeChanged(Landroid/os/PowerSaveState;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    :goto_7
    return-void

    :goto_8
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final postStateChanged(IZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
