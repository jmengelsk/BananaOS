.class public final Lcom/android/server/wm/ActivityTaskManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$4;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const/4 v3, -0x1

    const/4 v4, 0x1

    iget v5, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->$r8$classId:I

    packed-switch v5, :pswitch_data_0

    const-string v3, ", isPkgStopped : "

    const-string v5, "ActivityTaskManager"

    const-string v6, "Active launch : App auto run is off : "

    const-string v7, "Checking for the Active launch isDataCleared :"

    const-string v8, "Checking for the Active launch isPkgEverLaunched :"

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "com.samsung.DO_ACTIVE_LAUNCH"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string/jumbo v11, "com.samsung.DO_ACTIVE_LAUNCH_FOR_KNOX_LAUNCHER"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x0

    if-nez v11, :cond_2

    const-string/jumbo v11, "com.samsung.DO_ACTIVE_LAUNCH_FOR_KNOX"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    move v9, v12

    goto :goto_1

    :cond_2
    :goto_0
    move v9, v4

    :goto_1
    if-nez v10, :cond_3

    if-nez v9, :cond_3

    goto/16 :goto_a

    :cond_3
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_4

    goto/16 :goto_a

    :cond_4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string/jumbo v11, "package_name"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v10, :cond_5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    :goto_2
    move v13, v0

    goto :goto_3

    :cond_5
    const-string/jumbo v13, "userid"

    invoke-virtual {v0, v13, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :goto_3
    xor-int/lit8 v14, v10, 0x1

    if-eqz v10, :cond_6

    invoke-static {v11}, Lcom/android/server/am/Pageboost;->startActiveLaunch(Ljava/lang/String;)V

    :cond_6
    :try_start_0
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_8

    :try_start_1
    invoke-virtual {v0, v13, v11}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(ILjava/lang/String;)Z

    move-result v15
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v0, v13, v11}, Landroid/content/pm/PackageManagerInternal;->wasPackageStopped(ILjava/lang/String;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-virtual {v0, v12, v11}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(ILjava/lang/String;)Z

    move-result v0

    if-eqz v15, :cond_7

    if-nez v4, :cond_7

    if-eqz v0, :cond_9

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isPkgSuspended : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move v12, v15

    goto :goto_6

    :catch_1
    move-exception v0

    move v12, v15

    :goto_4
    const/4 v4, 0x1

    goto :goto_6

    :catch_2
    move-exception v0

    const/4 v4, 0x1

    const/4 v12, 0x0

    goto :goto_6

    :cond_8
    const/4 v4, 0x1

    const/4 v15, 0x0

    :cond_9
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, v11, v13}, Landroid/app/ActivityManagerInternal;->getIsDataClearedInAms(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_a
    if-eqz v9, :cond_b

    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    :goto_5
    const/4 v7, 0x4

    if-ne v0, v7, :cond_c

    const-string v0, "Checking for the Active launch getApplicationEnabledSetting"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_c
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v11}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_a

    :catch_3
    move-exception v0

    move v7, v12

    goto :goto_4

    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed active Launch package : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v15, v12

    :cond_d
    const-string v0, ", isDataCleared :"

    invoke-static {v8, v15, v3, v4, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5, v0, v14}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-eqz v9, :cond_11

    if-eqz v11, :cond_11

    if-eqz v15, :cond_11

    if-nez v4, :cond_11

    if-nez v14, :cond_11

    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    if-eqz v3, :cond_11

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setActiveApplaunch(Z)V

    :try_start_4
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SYSPERF_VI_BOOST:Z

    if-eqz v4, :cond_e

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v1, :cond_e

    if-eqz v4, :cond_e

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/16 v6, 0xf

    invoke-virtual {v1, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_8

    :cond_e
    :goto_7
    if-eqz v10, :cond_f

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_9

    :cond_f
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v13}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_9

    :goto_8
    const-string/jumbo v1, "No activity to handle assist action."

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    const-string/jumbo v0, "starting Active launch"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_10
    const-string/jumbo v0, "Received intent is null"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_a
    return-void

    :pswitch_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "com.samsung.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_b

    :cond_12
    const-string/jumbo v2, "check_cooldown_level"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_13

    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput v2, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    :cond_13
    const-string/jumbo v2, "batt_temp_level"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_14

    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput v2, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    :cond_14
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string/jumbo v4, "overheat_id"

    const v5, 0x1040416

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mOverheatTextId:I

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    if-ne v4, v3, :cond_15

    iget v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    if-eq v2, v3, :cond_16

    :cond_15
    const-string/jumbo v2, "check_cooldown_list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    if-eqz v3, :cond_16

    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "VZWLevel = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", OverheatLevel = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    const-string/jumbo v2, "checkingSIOP"

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_17
    :goto_b
    return-void

    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mAppJumpBlockReceiver get intent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppJumpBlockTool"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/core/AppJumpBlockTool;->resetAlwaysAllowList(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :pswitch_2
    if-eqz v0, :cond_18

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mIdsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    const-string/jumbo v4, "android.intent.extra.UID"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getIdsClearSet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    const-string v4, "/data/system/idsFile.txt"

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getIdsClearSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v0

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_9
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catch_5
    :try_start_b
    const-string v0, "ActivityTaskManager"

    const-string v1, "Error writing IDS file during package update broadcast."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    monitor-exit v2

    goto :goto_f

    :goto_e
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0

    :cond_18
    :goto_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
