.class public final Lcom/android/server/smartclip/SpenGestureManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-string/jumbo v2, "online"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    return-void

    :cond_0
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "SpenGestureManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Receive broadcast : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "com.samsung.pen.INSERT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, -0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_15

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_a

    :cond_1
    const-string/jumbo v2, "penInsert"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "isBoot"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v7, "isReversed"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string/jumbo v8, "SpenGestureManagerService"

    const-string/jumbo v9, "penInsert : "

    const-string v10, ", isBoot : "

    const-string v11, ", isReversed : "

    invoke-static {v9, v2, v10, v3, v11}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->getTopMostPackage()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_2
    const-string v9, ""

    :goto_0
    if-eqz v2, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v12, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-wide v12, v12, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    sub-long/2addr v10, v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_9

    const-wide/16 v12, 0x3e8

    cmp-long v12, v10, v12

    const/high16 v13, 0x42700000    # 60.0f

    const/high16 v16, 0x3f800000    # 1.0f

    if-ltz v12, :cond_3

    long-to-float v10, v10

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    div-float/2addr v10, v13

    goto :goto_1

    :cond_3
    move/from16 v10, v16

    :goto_1
    cmpl-float v11, v10, v13

    if-lez v11, :cond_4

    const-string/jumbo v10, "MoreThan1Hour"

    goto :goto_2

    :cond_4
    const/high16 v11, 0x41f00000    # 30.0f

    cmpl-float v11, v10, v11

    if-lez v11, :cond_5

    const-string v10, "30to60Minutes"

    goto :goto_2

    :cond_5
    const/high16 v11, 0x41200000    # 10.0f

    cmpl-float v11, v10, v11

    if-lez v11, :cond_6

    const-string v10, "10to30Minutes"

    goto :goto_2

    :cond_6
    const/high16 v11, 0x40a00000    # 5.0f

    cmpl-float v11, v10, v11

    if-lez v11, :cond_7

    const-string v10, "5to10Minutes"

    goto :goto_2

    :cond_7
    cmpl-float v10, v10, v16

    if-lez v10, :cond_8

    const-string v10, "1to5Minutes"

    goto :goto_2

    :cond_8
    const-string v10, "1MinuteOrLess"

    :goto_2
    const-string/jumbo v11, "SPEN"

    invoke-static {v10, v11}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogSpenInsertInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v10, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iput-wide v14, v10, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    const-string/jumbo v10, "SPAT"

    invoke-static {v9, v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogSpenInsertInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    iget-object v10, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v10, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    const-string/jumbo v10, "SPEN"

    invoke-static {v9, v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogSpenInsertInfo(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v9, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v9, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenReversed:Ljava/lang/Boolean;

    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v7, "action"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "topComponent"

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_b
    const-string v7, ""

    :goto_4
    invoke-virtual {v2, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "batteryStatus"

    iget-object v7, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget v7, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    invoke-virtual {v2, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "coverOpened"

    iget-object v7, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-boolean v7, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    invoke-virtual {v2, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "isReversed"

    iget-object v7, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v7, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenReversed:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v2, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v7, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v8, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v8, v8, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    monitor-enter v8

    :try_start_0
    iget-boolean v9, v8, Lcom/android/server/smartclip/BleSpenManager;->mBundledRemoteSpenSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v8

    iget-object v8, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v10, v8, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    monitor-enter v10

    :try_start_1
    iget-boolean v8, v10, Lcom/android/server/smartclip/BleSpenManager;->mUnbundledRemoteSpenSupport:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v10

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    invoke-virtual {v0}, Lcom/android/server/smartclip/BleSpenManager;->isAirActionSettingEnabled()Z

    move-result v0

    sget-object v10, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_digitizer_enabled"

    invoke-static {v10, v11, v4, v5}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_5

    :cond_c
    move v4, v6

    :goto_5
    const-string v5, "InsertPenServiceHandler: isBoot="

    const-string v6, " isPenInserted= "

    const-string v10, " isBundleSupportBle= "

    invoke-static {v5, v3, v6, v7, v10}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " isUnBundleSupportBle= "

    const-string v12, " isAirActionOn= "

    invoke-static {v5, v9, v11, v8, v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " isDigitizerEnabled= "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v11, "SpenGestureManagerService"

    invoke-static {v11, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_f

    if-eqz v8, :cond_d

    goto :goto_6

    :cond_d
    const-string/jumbo v3, "startNonBleService: isDigitizerEnabled="

    invoke-static {v3, v4, v6, v9, v12}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v11, v3, v0}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-eqz v4, :cond_1e

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/server/smartclip/BleSpenManager;->startRemoteSpenService(Landroid/content/Context;)V

    :cond_e
    if-nez v9, :cond_1e

    invoke-virtual {v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandUiService(Landroid/os/Bundle;)V

    return-void

    :cond_f
    :goto_6
    const-string/jumbo v4, "startBleService: isBoot="

    invoke-static {v4, v3, v6, v7, v10}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_12

    if-eqz v7, :cond_11

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/BleSpenManager;->startRemoteSpenService(Landroid/content/Context;)V

    return-void

    :cond_10
    if-eqz v9, :cond_1e

    iget-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/BleSpenManager;->startBlindChargeService(Landroid/content/Context;)V

    return-void

    :cond_11
    invoke-virtual {v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandUiService(Landroid/os/Bundle;)V

    return-void

    :cond_12
    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/server/smartclip/BleSpenManager;->startRemoteSpenService(Landroid/content/Context;)V

    goto :goto_7

    :cond_13
    if-eqz v9, :cond_14

    iget-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/server/smartclip/BleSpenManager;->startBlindChargeService(Landroid/content/Context;)V

    :cond_14
    :goto_7
    invoke-virtual {v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandUiService(Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_15
    const-string/jumbo v3, "com.sec.android.intent.action.BLACK_MEMO"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    :try_start_4
    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_8

    :catch_0
    const/4 v1, 0x0

    :goto_8
    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-string/jumbo v2, "show"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    goto/16 :goto_a

    :cond_16
    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    invoke-virtual {v0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "state"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.service.aircommand.remotespen.action.COMMON_BROADCAST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "action"

    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "isEnabled"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.service.aircommand"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_17
    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string/jumbo v2, "SpenGestureManagerService"

    const-string/jumbo v3, "onReceive : User switched"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v2, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    invoke-virtual {v2}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v3, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Ljava/lang/Boolean;

    if-eqz v3, :cond_19

    iget-object v2, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    invoke-virtual {v2}, Lcom/android/server/smartclip/BleSpenManager;->isAirActionSettingEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v2, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/smartclip/BleSpenManager;->startRemoteSpenService(Landroid/content/Context;)V

    goto :goto_9

    :cond_18
    const-string/jumbo v2, "SpenGestureManagerService"

    const-string/jumbo v3, "onReceive : air action is disabled. startBlindChargeService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v2, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/smartclip/BleSpenManager;->startBlindChargeService(Landroid/content/Context;)V

    :goto_9
    const-string/jumbo v2, "SpenGestureManagerService"

    const-string/jumbo v3, "Start AirCommandUiService. #4"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v3, "action"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "penInsert"

    iget-object v3, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v3, v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "isBoot"

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandUiService(Landroid/os/Bundle;)V

    return-void

    :cond_19
    const-string/jumbo v0, "SpenGestureManagerService"

    const-string/jumbo v1, "onReceive : SPen insertion state is not detected yet"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iput-boolean v4, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mBootComplete:Z

    iget v1, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    if-lez v1, :cond_1d

    invoke-static {}, Lcom/android/server/smartclip/SpenGarageSpecManager;->getInstance()Lcom/android/server/smartclip/SpenGarageSpecManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/smartclip/SpenGarageSpecManager;->mIsBundledSpenSupported:Z

    if-eqz v1, :cond_1b

    const-string/jumbo v0, "SpenGestureManagerService"

    const-string/jumbo v1, "onReceive : This model is bundle pen provided model"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_digitizer_enabled"

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_a

    :cond_1c
    const-string/jumbo v1, "SpenGestureManagerService"

    const-string/jumbo v2, "onReceive : isDigitizerEnabled = false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->writeDigitizerOnOffCommand(Z)V

    return-void

    :cond_1d
    const-string/jumbo v0, "SpenGestureManagerService"

    const-string/jumbo v1, "onReceive : This model is not support S pen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :goto_a
    return-void
.end method
