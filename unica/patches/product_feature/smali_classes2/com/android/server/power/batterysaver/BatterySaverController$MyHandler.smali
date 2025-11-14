.class public final Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverController;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .registers 21

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    goto/16 :goto_17f

    :cond_9
    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    if-ne v3, v2, :cond_14

    move v3, v2

    goto :goto_15

    :cond_14
    move v3, v4

    :goto_15
    iget v0, v0, Landroid/os/Message;->arg2:I

    iget-object v5, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    if-nez v5, :cond_2a

    iget-object v5, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/PowerManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v5, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    :cond_2a
    iget-object v5, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    iget-object v6, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_33
    iget-boolean v7, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    if-nez v7, :cond_3e

    iget-boolean v8, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    if-eqz v8, :cond_3c

    goto :goto_3e

    :cond_3c
    move v8, v4

    goto :goto_3f

    :cond_3e
    :goto_3e
    move v8, v2

    :goto_3f
    iget-boolean v9, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullPreviouslyEnabled:Z

    iget-boolean v10, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptivePreviouslyEnabled:Z

    iget-boolean v11, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    if-eqz v8, :cond_58

    iget-object v8, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    iget-object v12, v8, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_4c
    .catchall {:try_start_33 .. :try_end_4c} :catchall_55

    :try_start_4c
    iget-object v8, v8, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEventLogKeys:Ljava/lang/String;

    monitor-exit v12

    :goto_4f
    move-object/from16 v17, v8

    goto :goto_5b

    :catchall_52
    move-exception v0

    monitor-exit v12
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_52

    :try_start_54
    throw v0

    :catchall_55
    move-exception v0

    goto/16 :goto_180

    :cond_58
    const-string v8, ""

    goto :goto_4f

    :goto_5b
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
    :try_end_8f
    .catchall {:try_start_54 .. :try_end_8f} :catchall_55

    const-class v5, Landroid/os/PowerManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManagerInternal;

    if-eqz v5, :cond_a0

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v2, v6}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    :cond_a0
    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->updateBatterySavingStats()V

    if-eqz v3, :cond_17f

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x40000000  # 2.0f

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

    if-eqz v2, :cond_ec

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

    :cond_ec
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

    :goto_108
    if-ge v4, v2, :cond_17f

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

    packed-switch v8, :pswitch_data_182

    const-string/jumbo v8, "UNKNOWN"

    goto :goto_165

    :pswitch_12b  #0x10
    const-string/jumbo v8, "NIGHT_MODE"

    goto :goto_165

    :pswitch_12f  #0xf
    const-string/jumbo v8, "QUICK_DOZE"

    goto :goto_165

    :pswitch_133  #0xe
    const-string v8, "AOD"

    goto :goto_165

    :pswitch_136  #0xd
    const-string/jumbo v8, "OPTIONAL_SENSORS"

    goto :goto_165

    :pswitch_13a  #0xc
    const-string v8, "FORCE_BACKGROUND_CHECK"

    goto :goto_165

    :pswitch_13d  #0xb
    const-string v8, "FORCE_ALL_APPS_STANDBY"

    goto :goto_165

    :pswitch_140  #0xa
    const-string v8, "DATA_SAVER"

    goto :goto_165

    :pswitch_143  #0x9
    const-string v8, "BATTERY_STATS"

    goto :goto_165

    :pswitch_146  #0x8
    const-string/jumbo v8, "SOUND"

    goto :goto_165

    :pswitch_14a  #0x7
    const-string/jumbo v8, "SCREEN_BRIGHTNESS"

    goto :goto_165

    :pswitch_14e  #0x6
    const-string/jumbo v8, "NETWORK_FIREWALL"

    goto :goto_165

    :pswitch_152  #0x5
    const-string v8, "KEYVALUE_BACKUP"

    goto :goto_165

    :pswitch_155  #0x4
    const-string v8, "FULL_BACKUP"

    goto :goto_165

    :pswitch_158  #0x3
    const-string v8, "ANIMATION"

    goto :goto_165

    :pswitch_15b  #0x2
    const-string/jumbo v8, "VIBRATION"

    goto :goto_165

    :pswitch_15f  #0x1
    const-string v8, "LOCATION"

    goto :goto_165

    :pswitch_162  #0x0
    const-string/jumbo v8, "NULL"

    :goto_165
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

    goto :goto_108

    :cond_17f
    :goto_17f
    return-void

    :goto_180
    :try_start_180
    monitor-exit v6
    :try_end_181
    .catchall {:try_start_180 .. :try_end_181} :catchall_55

    throw v0

    :pswitch_data_182
    .packed-switch 0x0
        :pswitch_162  #00000000
        :pswitch_15f  #00000001
        :pswitch_15b  #00000002
        :pswitch_158  #00000003
        :pswitch_155  #00000004
        :pswitch_152  #00000005
        :pswitch_14e  #00000006
        :pswitch_14a  #00000007
        :pswitch_146  #00000008
        :pswitch_143  #00000009
        :pswitch_140  #0000000a
        :pswitch_13d  #0000000b
        :pswitch_13a  #0000000c
        :pswitch_136  #0000000d
        :pswitch_133  #0000000e
        :pswitch_12f  #0000000f
        :pswitch_12b  #00000010
    .end packed-switch
.end method

.method public final postStateChanged(IZ)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
