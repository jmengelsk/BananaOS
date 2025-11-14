.class public final Lcom/android/server/wm/ActivityTaskManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$4;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const/4 v3, -0x1

    const/4 v4, 0x1

    iget v5, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->$r8$classId:I

    packed-switch v5, :pswitch_data_27c

    const-string v3, ", isPkgStopped : "

    const-string v5, "ActivityTaskManager"

    const-string v6, "Active launch : App auto run is off : "

    const-string v7, "Checking for the Active launch isDataCleared :"

    const-string v8, "Checking for the Active launch isPkgEverLaunched :"

    if-nez v0, :cond_1b

    goto/16 :goto_192

    :cond_1b
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "com.samsung.DO_ACTIVE_LAUNCH"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string/jumbo v11, "com.samsung.DO_ACTIVE_LAUNCH_FOR_KNOX_LAUNCHER"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x0

    if-nez v11, :cond_3c

    const-string/jumbo v11, "com.samsung.DO_ACTIVE_LAUNCH_FOR_KNOX"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3a

    goto :goto_3c

    :cond_3a
    move v9, v12

    goto :goto_3d

    :cond_3c
    :goto_3c
    move v9, v4

    :goto_3d
    if-nez v10, :cond_43

    if-nez v9, :cond_43

    goto/16 :goto_192

    :cond_43
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_4b

    goto/16 :goto_192

    :cond_4b
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string/jumbo v11, "package_name"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v10, :cond_5e

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    :goto_5c
    move v13, v0

    goto :goto_66

    :cond_5e
    const-string/jumbo v13, "userid"

    invoke-virtual {v0, v13, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_5c

    :goto_66
    xor-int/lit8 v14, v10, 0x1

    if-eqz v10, :cond_6d

    invoke-static {v11}, Lcom/android/server/am/Pageboost;->startActiveLaunch(Ljava/lang/String;)V

    :cond_6d
    :try_start_6d
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0
    :try_end_73
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6d .. :try_end_73} :catch_109

    if-eqz v0, :cond_b5

    :try_start_75
    invoke-virtual {v0, v13, v11}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(ILjava/lang/String;)Z

    move-result v15
    :try_end_79
    .catch Ljava/lang/IllegalArgumentException; {:try_start_75 .. :try_end_79} :catch_b1

    :try_start_79
    invoke-virtual {v0, v13, v11}, Landroid/content/pm/PackageManagerInternal;->wasPackageStopped(ILjava/lang/String;)Z

    move-result v4
    :try_end_7d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_79 .. :try_end_7d} :catch_ad

    :try_start_7d
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-virtual {v0, v12, v11}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(ILjava/lang/String;)Z

    move-result v0

    if-eqz v15, :cond_8b

    if-nez v4, :cond_8b

    if-eqz v0, :cond_b7

    :cond_8b
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

    goto/16 :goto_192

    :catch_aa
    move-exception v0

    move v12, v15

    goto :goto_10c

    :catch_ad
    move-exception v0

    move v12, v15

    :goto_af
    const/4 v4, 0x1

    goto :goto_10c

    :catch_b1
    move-exception v0

    const/4 v4, 0x1

    const/4 v12, 0x0

    goto :goto_10c

    :cond_b5
    const/4 v4, 0x1

    const/4 v15, 0x0

    :cond_b7
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, v11, v13}, Landroid/app/ActivityManagerInternal;->getIsDataClearedInAms(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_d2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_192

    :cond_d2
    if-eqz v9, :cond_d9

    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    goto :goto_da

    :cond_d9
    const/4 v0, 0x0

    :goto_da
    const/4 v7, 0x4

    if-ne v0, v7, :cond_e4

    const-string v0, "Checking for the Active launch getApplicationEnabledSetting"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_192

    :cond_e4
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v7

    if-eqz v7, :cond_126

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v11}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_126

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7d .. :try_end_107} :catch_aa

    goto/16 :goto_192

    :catch_109
    move-exception v0

    move v7, v12

    goto :goto_af

    :goto_10c
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

    :cond_126
    const-string v0, ", isDataCleared :"

    invoke-static {v8, v15, v3, v4, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5, v0, v14}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-eqz v9, :cond_192

    if-eqz v11, :cond_192

    if-eqz v15, :cond_192

    if-nez v4, :cond_192

    if-nez v14, :cond_192

    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_18c

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    if-eqz v3, :cond_192

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setActiveApplaunch(Z)V

    :try_start_149
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SYSPERF_VI_BOOST:Z

    if-eqz v4, :cond_169

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v1, :cond_169

    if-eqz v4, :cond_169

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/16 v6, 0xf

    invoke-virtual {v1, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_169

    :catch_167
    move-exception v0

    goto :goto_17f

    :cond_169
    :goto_169
    if-eqz v10, :cond_173

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_185

    :cond_173
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v13}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_17e} :catch_167

    goto :goto_185

    :goto_17f
    const-string/jumbo v1, "No activity to handle assist action."

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_185
    const-string/jumbo v0, "starting Active launch"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_192

    :cond_18c
    const-string/jumbo v0, "Received intent is null"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_192
    :goto_192
    return-void

    :pswitch_193  #0x2
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "com.samsung.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_211

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1a7

    goto :goto_211

    :cond_1a7
    const-string/jumbo v2, "check_cooldown_level"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_1b4

    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput v2, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    :cond_1b4
    const-string/jumbo v2, "batt_temp_level"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_1c1

    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput v2, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    :cond_1c1
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string/jumbo v4, "overheat_id"

    const v5, 0x1040416

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mOverheatTextId:I

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    if-ne v4, v3, :cond_1d9

    iget v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    if-eq v2, v3, :cond_1f3

    :cond_1d9
    const-string/jumbo v2, "check_cooldown_list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    if-eqz v3, :cond_1f3

    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;

    :cond_1f3
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

    :cond_211
    :goto_211
    return-void

    :pswitch_212  #0x1
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

    :pswitch_22e  #0x0
    if-eqz v0, :cond_27a

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mIdsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_235
    const-string/jumbo v4, "android.intent.extra.UID"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getIdsClearSet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_249
    .catchall {:try_start_235 .. :try_end_249} :catchall_262

    :try_start_249
    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    const-string v4, "/data/system/idsFile.txt"

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_255
    .catch Ljava/io/IOException; {:try_start_249 .. :try_end_255} :catch_26f
    .catchall {:try_start_249 .. :try_end_255} :catchall_262

    :try_start_255
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getIdsClearSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_25e
    .catchall {:try_start_255 .. :try_end_25e} :catchall_264

    :try_start_25e
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_261
    .catch Ljava/io/IOException; {:try_start_25e .. :try_end_261} :catch_26f
    .catchall {:try_start_25e .. :try_end_261} :catchall_262

    goto :goto_276

    :catchall_262
    move-exception v0

    goto :goto_278

    :catchall_264
    move-exception v0

    move-object v1, v0

    :try_start_266
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_269
    .catchall {:try_start_266 .. :try_end_269} :catchall_26a

    goto :goto_26e

    :catchall_26a
    move-exception v0

    :try_start_26b
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_26e
    throw v1
    :try_end_26f
    .catch Ljava/io/IOException; {:try_start_26b .. :try_end_26f} :catch_26f
    .catchall {:try_start_26b .. :try_end_26f} :catchall_262

    :catch_26f
    :try_start_26f
    const-string v0, "ActivityTaskManager"

    const-string v1, "Error writing IDS file during package update broadcast."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_276
    monitor-exit v2

    goto :goto_27a

    :goto_278
    monitor-exit v2
    :try_end_279
    .catchall {:try_start_26f .. :try_end_279} :catchall_262

    throw v0

    :cond_27a
    :goto_27a
    return-void

    nop

    :pswitch_data_27c
    .packed-switch 0x0
        :pswitch_22e  #00000000
        :pswitch_212  #00000001
        :pswitch_193  #00000002
    .end packed-switch
.end method
