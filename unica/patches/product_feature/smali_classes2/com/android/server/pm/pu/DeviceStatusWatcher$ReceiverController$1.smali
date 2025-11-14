.class public final Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;->this$1:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 28

    move-object/from16 v1, p0

    iget v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "PU_StatusWatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Received "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;->this$1:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    iget-object v2, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    monitor-enter v2

    :try_start_0
    iput-boolean v3, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mScreenOff:Z

    invoke-virtual {v2}, Lcom/android/server/pm/pu/DeviceStatusWatcher;->isDexoptingAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    iget-object v0, v0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mTrigger:Lcom/android/server/pm/pu/DexoptTrigger;

    invoke-virtual {v0}, Lcom/android/server/pm/pu/DexoptTrigger;->resumeOptimizing()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    goto/16 :goto_7

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;->this$1:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    iget-object v0, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    invoke-virtual {v0}, Lcom/android/server/pm/pu/DeviceStatusWatcher;->onUserActivityLocked()V

    goto/16 :goto_7

    :cond_2
    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;->this$1:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    iget-object v0, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    invoke-virtual {v0}, Lcom/android/server/pm/pu/DeviceStatusWatcher;->onUserActivityLocked()V

    goto/16 :goto_7

    :cond_3
    const-string/jumbo v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;->this$1:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    iget-object v2, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "PU_StatusWatcher"

    const-string/jumbo v0, "thermalservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalService:Landroid/os/IThermalService;

    :try_start_2
    invoke-interface {v0}, Landroid/os/IThermalService;->getCurrentThermalStatus()I

    move-result v0

    iput v0, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalStatus:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v5, "Failed to get thermal status"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v3, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalStatus:I

    :goto_2
    iget v0, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalStatus:I

    iput v0, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mInitialThermalStatus:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Initial thermal status "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mInitialThermalStatus:I

    invoke-static {v0, v3, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :try_start_3
    iget-object v0, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalService:Landroid/os/IThermalService;

    iget-object v2, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalListener:Lcom/android/server/pm/pu/DeviceStatusWatcher$1;

    invoke-interface {v0, v2}, Landroid/os/IThermalService;->registerThermalStatusListener(Landroid/os/IThermalStatusListener;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string/jumbo v2, "Thermal registration failed"

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    iget-object v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;->this$1:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    iget-object v0, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    iget-object v0, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStartTimeMs:J

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/pm/pu/ProfileUtilizationService$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/server/pm/pu/ProfileUtilizationService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/pu/ProfileUtilizationService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    iget-object v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;->this$1:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    iget-object v0, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getLaunchObserverRegistry()Lcom/android/server/wm/LaunchObserverRegistryImpl;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mAppLaunchObserver:Lcom/android/server/pm/pu/DeviceStatusWatcher$4;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->registerLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    goto :goto_7

    :cond_4
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;->this$1:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    iget-object v1, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/pm/pu/BatteryInfo;

    move-object/from16 v2, p2

    invoke-direct {v0, v2}, Lcom/android/server/pm/pu/BatteryInfo;-><init>(Landroid/content/Intent;)V

    iget-boolean v2, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mWasPlugged:Z

    if-nez v2, :cond_6

    iget v2, v0, Lcom/android/server/pm/pu/BatteryInfo;->plugged:I

    if-lt v2, v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    iput-boolean v3, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mWasPlugged:Z

    :cond_6
    iget-boolean v2, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mWasLowBattery:Z

    if-nez v2, :cond_7

    iget-boolean v2, v0, Lcom/android/server/pm/pu/BatteryInfo;->batteryLow:Z

    iput-boolean v2, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mWasLowBattery:Z

    :cond_7
    iget-object v2, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mLastEnergyNwh:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v3, v0, Lcom/android/server/pm/pu/BatteryInfo;->energy:J

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-boolean v2, v0, Lcom/android/server/pm/pu/BatteryInfo;->batteryLow:Z

    iget-boolean v3, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mBatteryLow:Z

    if-ne v2, v3, :cond_8

    goto :goto_7

    :cond_8
    monitor-enter v1

    :try_start_4
    iget-boolean v0, v0, Lcom/android/server/pm/pu/BatteryInfo;->batteryLow:Z

    iput-boolean v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mBatteryLow:Z

    invoke-virtual {v1}, Lcom/android/server/pm/pu/DeviceStatusWatcher;->isDexoptingAllowed()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    iget-object v0, v0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mTrigger:Lcom/android/server/pm/pu/DexoptTrigger;

    invoke-virtual {v0}, Lcom/android/server/pm/pu/DexoptTrigger;->resumeOptimizing()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_9
    :goto_5
    monitor-exit v1

    goto :goto_7

    :goto_6
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_a
    :goto_7
    return-void

    :pswitch_0
    move-object/from16 v2, p2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;->this$1:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    iget-object v0, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "persist.pm.mock-upgrade"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-boolean v0, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mIsUpdateReady:Z

    if-nez v0, :cond_b

    if-eqz v2, :cond_26

    :cond_b
    iget-object v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;->this$1:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    iget-object v0, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    iget-object v0, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/server/pm/pu/HotAppGenerator;

    iget-object v1, v0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v1}, Lcom/android/server/pm/pu/HotAppGenerator;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    iget-object v1, v4, Lcom/android/server/pm/pu/HotAppGenerator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    iget-object v2, v4, Lcom/android/server/pm/pu/HotAppGenerator;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v2}, Landroid/app/usage/UsageStatsManager;->getAppStandbyBuckets()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    if-eqz v5, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v14, 0xa

    if-eq v10, v14, :cond_e

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v14, 0x5

    if-eq v10, v14, :cond_e

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v10, 0x14

    if-eq v6, v10, :cond_e

    goto :goto_8

    :cond_e
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.MAIN"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, v4, Lcom/android/server/pm/pu/HotAppGenerator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v6, v3, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Landroid/os/Environment;->getDataRefProfilesDePackageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v6, v10, v12

    if-lez v6, :cond_c

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-wide v5, Lcom/android/server/pm/pu/HotAppGenerator;->MONTH_INTERVAL:J

    sub-long v5, v7, v5

    new-instance v10, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;

    const/4 v14, 0x0

    invoke-direct {v10, v1, v2, v14}, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/pu/HotAppGenerator;->queryAndParseUsageStats(JJLjava/util/Set;Ljava/util/function/BiConsumer;)V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    sget-wide v5, Lcom/android/server/pm/pu/HotAppGenerator;->WEEK_INTERVAL:J

    sub-long v5, v7, v5

    sget-wide v7, Lcom/android/server/pm/pu/HotAppGenerator;->DAY_INTERVAL:J

    add-long/2addr v7, v5

    new-instance v10, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;

    const/4 v11, 0x1

    invoke-direct {v10, v14, v15, v11}, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/pu/HotAppGenerator;->queryAndParseUsageStats(JJLjava/util/Set;Ljava/util/function/BiConsumer;)V

    sget-wide v7, Lcom/android/server/pm/pu/HotAppGenerator;->HOUR_INTERVAL:J

    add-long/2addr v7, v5

    iget-object v10, v4, Lcom/android/server/pm/pu/HotAppGenerator;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    const-string/jumbo v11, "No usage stats manager initialized"

    move-wide/from16 p1, v12

    const-string/jumbo v12, "PU_Generator"

    if-nez v10, :cond_10

    invoke-static {v12, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_9

    :cond_10
    invoke-virtual {v10, v5, v6, v7, v8}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    move-result-object v5

    :goto_9
    const/4 v6, 0x1

    if-nez v5, :cond_11

    sget-object v5, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    move-object/from16 v21, v5

    goto :goto_b

    :cond_11
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move v8, v3

    :cond_12
    :goto_a
    invoke-virtual {v5}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v10

    if-eqz v10, :cond_13

    new-instance v10, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v10}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    invoke-virtual {v5, v10}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    invoke-virtual {v10}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v13

    if-ne v13, v6, :cond_12

    invoke-virtual {v10}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_13
    move-object/from16 v21, v7

    :goto_b
    iget-object v5, v4, Lcom/android/server/pm/pu/HotAppGenerator;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "activity"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    if-nez v5, :cond_14

    const-string/jumbo v5, "No activity manager found"

    invoke-static {v12, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    move-object v13, v4

    goto :goto_e

    :cond_14
    const v7, 0x7fffffff

    invoke-virtual {v5, v7, v6}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v5

    new-instance v7, Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    move-object v13, v4

    int-to-double v3, v8

    const-wide/high16 v16, 0x3fe8000000000000L    # 0.75

    div-double v3, v3, v16

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-direct {v7, v3}, Ljava/util/HashMap;-><init>(I)V

    const/4 v3, 0x0

    :goto_c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_18

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    :cond_15
    const/4 v4, 0x0

    :goto_d
    if-eqz v4, :cond_16

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    :cond_16
    const-string/jumbo v4, "null"

    invoke-static {v3, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_17
    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_18
    move-object v5, v7

    :goto_e
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v22

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v23

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v24

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v25

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v26

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->size()I

    move-result v27

    filled-new-array/range {v22 .. v27}, [I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object v3

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/util/OptionalInt;->orElse(I)I

    move-result v3

    add-int/lit8 v16, v3, 0x1

    invoke-interface {v9}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    move-object/from16 v19, v14

    new-instance v14, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda2;

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v20, v15

    move-object v15, v5

    invoke-direct/range {v14 .. v21}, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v3, v14}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pu/App;

    add-int/lit8 v5, v3, 0x1

    iput v3, v4, Lcom/android/server/pm/pu/App;->mResultingPos:I

    move v3, v5

    goto :goto_f

    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Total generated apps: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/server/pm/pu/HotAppGenerator;->WEEK_INTERVAL:J

    sub-long v4, v2, v4

    iget-object v7, v13, Lcom/android/server/pm/pu/HotAppGenerator;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    if-nez v7, :cond_1a

    invoke-static {v12, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto :goto_10

    :cond_1a
    invoke-virtual {v7, v4, v5, v2, v3}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    move-result-object v11

    :goto_10
    const/16 v2, 0xb

    if-nez v11, :cond_1b

    const-string/jumbo v3, "No usage events found"

    invoke-static {v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    :cond_1b
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :goto_11
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v7

    if-eqz v7, :cond_1e

    new-instance v7, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v7}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    invoke-virtual {v11, v7}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    iget v8, v7, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v8, v6, :cond_1c

    goto :goto_11

    :cond_1c
    iget-wide v8, v7, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    sub-long/2addr v8, v4

    sget-wide v13, Lcom/android/server/pm/pu/HotAppGenerator;->DAY_INTERVAL:J

    div-long/2addr v8, v13

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_1d

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-virtual {v7}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1e
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    sget-boolean v7, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v7, :cond_1f

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "In day: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, p1

    if-nez v7, :cond_20

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    :cond_20
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_12

    :cond_21
    div-int/lit8 v4, v4, 0x7

    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_22

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Same day: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Daily mean: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    filled-new-array {v4, v5}, [I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object v3

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/util/OptionalInt;->orElse(I)I

    move-result v3

    const/16 v4, 0x17

    if-le v3, v4, :cond_23

    move v3, v4

    :cond_23
    if-ge v3, v2, :cond_24

    goto :goto_13

    :cond_24
    move v2, v3

    :goto_13
    const-string v3, "Generator\'s apps limit: "

    invoke-static {v2, v3, v12}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Lcom/android/server/pm/pu/ProfileUtilizationService;->mRandom:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%08X"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "PU_Storage"

    const-string/jumbo v5, "Store apps limit "

    const-string/jumbo v6, "Store sessionId "

    iget-object v0, v0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStorage:Lcom/android/server/pm/pu/ProfileUtilizationStorage;

    iget-object v0, v0, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    :try_start_5
    const-string/jumbo v0, "pu_version"

    const-string v8, "2.1.1"

    invoke-interface {v7, v0, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "session_id"

    invoke-interface {v7, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "apps_limit_id"

    invoke-interface {v7, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pu/App;

    iget-object v3, v2, Lcom/android/server/pm/pu/App;->packageName:Ljava/lang/String;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    iget v6, v2, Lcom/android/server/pm/pu/App;->mInRecentsPos:I

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v5

    iget v6, v2, Lcom/android/server/pm/pu/App;->mInTotalTimeListPos:I

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v5

    iget v6, v2, Lcom/android/server/pm/pu/App;->mInTotalLaunchListPos:I

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v5

    iget v6, v2, Lcom/android/server/pm/pu/App;->mInSameDayTimeListPos:I

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v5

    iget v6, v2, Lcom/android/server/pm/pu/App;->mInSameDayLaunchListPos:I

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v5

    iget v6, v2, Lcom/android/server/pm/pu/App;->mInSameTimeLaunchListPos:I

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v5

    iget v2, v2, Lcom/android/server/pm/pu/App;->mResultingPos:I

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_15

    :catch_2
    move-exception v0

    goto :goto_16

    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Store "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "json_apps_weights"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_17

    :goto_16
    const-string v1, "Failed to store apps"

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_26
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
