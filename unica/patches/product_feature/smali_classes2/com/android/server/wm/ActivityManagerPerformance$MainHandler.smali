.class public final Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityManagerPerformance;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityManagerPerformance;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 22

    move-object/from16 v0, p1

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_8

    goto/16 :goto_47e

    :cond_8
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_2d

    instance-of v6, v3, Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_16

    move-object v6, v3

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    goto :goto_17

    :cond_16
    move-object v6, v4

    :goto_17
    instance-of v7, v3, Ljava/lang/String;

    if-eqz v7, :cond_1f

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    goto :goto_20

    :cond_1f
    move-object v7, v4

    :goto_20
    instance-of v8, v3, Ljava/lang/Boolean;

    if-eqz v8, :cond_2b

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_30

    :cond_2b
    :goto_2b
    move v3, v5

    goto :goto_30

    :cond_2d
    move-object v6, v4

    move-object v7, v6

    goto :goto_2b

    :goto_30
    iget v8, v0, Landroid/os/Message;->what:I

    move-object/from16 v9, p0

    iget-object v9, v9, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    const-string v10, "ActivityManagerPerformance"

    if-eq v8, v2, :cond_4d6

    const/4 v11, 0x2

    if-eq v8, v11, :cond_4bb

    if-eq v8, v1, :cond_4a0

    const/4 v12, 0x4

    if-eq v8, v12, :cond_485

    const/16 v13, 0x14

    const-string v14, ""

    if-eq v8, v13, :cond_47f

    const/16 v13, 0x15

    move v15, v12

    const-wide/16 v11, 0x1

    if-eq v8, v13, :cond_46d

    const/16 v13, 0x32

    const-wide/16 v16, 0x0

    if-eq v8, v13, :cond_33a

    const v13, 0x402610

    packed-switch v8, :pswitch_data_4f2

    goto/16 :goto_47e

    :pswitch_5d  #0xf
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_6f

    const-string/jumbo v1, "Received MSG_ANIMATION_BOOSTER  timeout: "

    invoke-static {v0, v1, v10}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6f
    const-string v1, "ANIMATION_BOOST"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_79  #0xe
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_83

    const-string/jumbo v0, "Received MSG_DHA_BOOSTER_ON"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-nez v0, :cond_8d

    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    :cond_8d
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->LMKD_REENTRY_MODE_ENABLE:Z

    if-eqz v3, :cond_142

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sget-wide v10, Lcom/android/server/am/DynamicHiddenApp;->lastTime:J

    sub-long v10, v8, v10

    const-wide/32 v12, 0x1d4c0

    cmp-long v3, v10, v12

    const-string v6, "DynamicHiddenApp_BGSlotManager"

    iget-object v10, v0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    if-gez v3, :cond_117

    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->reentryMap:Ljava/util/HashMap;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b2

    goto :goto_be

    :cond_b2
    sget v11, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    add-int/2addr v11, v2

    sput v11, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_be
    iget-boolean v3, v0, Lcom/android/server/am/DynamicHiddenApp;->isReentryMode:Z

    if-nez v3, :cond_126

    sget v3, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    const/16 v11, 0xf

    if-lt v3, v11, :cond_126

    sget v3, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/16 v11, 0x68

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {v3, v4}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v3, v3, v18

    const-wide/16 v14, 0xfa

    cmp-long v11, v3, v14

    const-string v14, "ActivityManager"

    if-lez v11, :cond_fa

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "SLOW setLmkdReentryMode: "

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fa
    iget v3, v10, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v10, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    invoke-virtual {v10}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    const-string/jumbo v3, "ReentryModeBGSlot Set"

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/am/DynamicHiddenApp;->lastStartTime:J

    iput-boolean v2, v0, Lcom/android/server/am/DynamicHiddenApp;->isReentryMode:Z

    const-string v3, "Enable ReentryMode"

    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_126

    :cond_117
    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->reentryMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    sput v5, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    iput-boolean v5, v0, Lcom/android/server/am/DynamicHiddenApp;->isReentryMode:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/am/DynamicHiddenApp;->lastTime:J

    :cond_126
    :goto_126
    sget-wide v3, Lcom/android/server/am/DynamicHiddenApp;->lastStartTime:J

    cmp-long v11, v3, v16

    if-eqz v11, :cond_142

    sub-long/2addr v8, v3

    cmp-long v3, v8, v12

    if-ltz v3, :cond_142

    iget v3, v10, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    and-int/lit8 v3, v3, -0x9

    iput v3, v10, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    invoke-virtual {v10}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    const-string/jumbo v3, "ReentryModeBGSlot Recovered"

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-wide v16, Lcom/android/server/am/DynamicHiddenApp;->lastStartTime:J

    :cond_142
    iget-object v9, v0, Lcom/android/server/am/DynamicHiddenApp;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->APP_EFK_DECREASE_BOOST_ENABLE:Z

    if-nez v0, :cond_14d

    goto/16 :goto_47e

    :cond_14d
    :goto_14d
    sget-object v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->DECEFK_EXCEPT_PROC_ARRAY:[Ljava/lang/String;

    array-length v3, v0

    if-ge v5, v3, :cond_15e

    aget-object v0, v0, v5

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15c

    goto/16 :goto_47e

    :cond_15c
    add-int/2addr v5, v2

    goto :goto_14d

    :cond_15e
    iget v0, v9, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    iget v3, v9, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFKTime:I

    iget v4, v9, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFK:I

    const/16 v5, 0xa

    if-le v0, v5, :cond_199

    iget-boolean v6, v9, Lcom/android/server/bgslotmanager/CustomEFKManager;->isBlockDecEFK:Z

    if-nez v6, :cond_47e

    iput-boolean v2, v9, Lcom/android/server/bgslotmanager/CustomEFKManager;->isStillDecEFK:Z

    div-int/lit8 v1, v0, 0x3

    if-ge v1, v5, :cond_173

    move v1, v5

    :cond_173
    if-le v0, v5, :cond_18d

    const-string/jumbo v0, "sys.sysctl.watermark_scale_factor"

    if-lez v4, :cond_184

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18d

    :cond_184
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18d
    :goto_18d
    new-instance v8, Lcom/android/server/bgslotmanager/CustomEFKManager$1;

    int-to-long v10, v3

    const/4 v14, 0x1

    move-wide v12, v10

    invoke-direct/range {v8 .. v14}, Lcom/android/server/bgslotmanager/CustomEFKManager$1;-><init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJI)V

    invoke-virtual {v8}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void

    :cond_199
    iget v0, v9, Lcom/android/server/bgslotmanager/CustomEFKManager;->origin_EFK:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1b7

    const-string/jumbo v2, "sys.sysctl.extra_free_kbytes"

    if-lez v4, :cond_1ad

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b7

    :cond_1ad
    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b7
    :goto_1b7
    new-instance v8, Lcom/android/server/bgslotmanager/CustomEFKManager$1;

    int-to-long v10, v3

    const/4 v14, 0x2

    move-wide v12, v10

    invoke-direct/range {v8 .. v14}, Lcom/android/server/bgslotmanager/CustomEFKManager$1;-><init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJI)V

    invoke-virtual {v8}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void

    :pswitch_1c3  #0xd
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_1cd

    const-string/jumbo v0, "Received MSG_PERF_TASK_BOOST_END"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1cd
    iget-object v0, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_47e

    iget-boolean v1, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mIsTaskBoostExist:Z

    if-eqz v1, :cond_47e

    const-string v1, "0"

    invoke-virtual {v0, v13, v1}, Lcom/samsung/android/os/SemDvfsManager;->sysfsWrite(ILjava/lang/String;)V

    return-void

    :pswitch_1db  #0xc
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_1ed

    const-string/jumbo v1, "Received MSG_PERF_TASK_BOOST  pid: "

    invoke-static {v0, v1, v10}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1ed
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSPERF_QC_TASK_BOOST_ENABLE:Z

    if-eqz v1, :cond_204

    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    const/high16 v2, 0x40c80000  # 6.25f

    filled-new-array {v2, v0}, [I

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-virtual {v1, v3, v2}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    :cond_204
    iget-object v1, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_47e

    iget-boolean v1, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mIsTaskBoostExist:Z

    if-eqz v1, :cond_47e

    iget-object v1, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "taskBoostAcq pid : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v12, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v3, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v3, v13, v0}, Lcom/samsung/android/os/SemDvfsManager;->sysfsWrite(ILjava/lang/String;)V

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :pswitch_23b  #0xb
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_245

    const-string/jumbo v0, "Received MSG_PERF_RESERVE_ON_OFF  value: "

    invoke-static {v0, v7, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_245
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->isPerfReserveSupport:Z

    if-eqz v0, :cond_47e

    const-string/jumbo v1, "e = "

    new-instance v0, Ljava/io/File;

    const-string v2, "/proc/perf_reserve"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2da

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_2da

    if-nez v7, :cond_266

    goto/16 :goto_2da

    :cond_266
    :try_start_266
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_26b
    .catch Ljava/io/IOException; {:try_start_266 .. :try_end_26b} :catch_29d
    .catchall {:try_start_266 .. :try_end_26b} :catchall_29a

    :try_start_26b
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_278
    .catch Ljava/io/IOException; {:try_start_26b .. :try_end_278} :catch_297
    .catchall {:try_start_26b .. :try_end_278} :catchall_293

    :try_start_278
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_27b
    .catch Ljava/io/IOException; {:try_start_278 .. :try_end_27b} :catch_27d

    goto/16 :goto_47e

    :catch_27d
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_283
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_47e

    :catchall_293
    move-exception v0

    move-object v2, v0

    move-object v4, v3

    goto :goto_2bf

    :catch_297
    move-exception v0

    move-object v4, v3

    goto :goto_29e

    :catchall_29a
    move-exception v0

    move-object v2, v0

    goto :goto_2bf

    :catch_29d
    move-exception v0

    :goto_29e
    :try_start_29e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b1
    .catchall {:try_start_29e .. :try_end_2b1} :catchall_29a

    if-eqz v4, :cond_47e

    :try_start_2b3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b6
    .catch Ljava/io/IOException; {:try_start_2b3 .. :try_end_2b6} :catch_2b8

    goto/16 :goto_47e

    :catch_2b8
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_283

    :goto_2bf
    if-eqz v4, :cond_2d9

    :try_start_2c1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2c4
    .catch Ljava/io/IOException; {:try_start_2c1 .. :try_end_2c4} :catch_2c5

    goto :goto_2d9

    :catch_2c5
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d9
    :goto_2d9
    throw v2

    :cond_2da
    :goto_2da
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "writeSysfs:: path() : /proc/perf_reserve exist() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " canWrite() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_47e

    :pswitch_2fe  #0xa
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_308

    const-string/jumbo v0, "Received MSG_OLAF_FREEZE_CLEAR"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_308
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroid/os/Process;->doSomethingOlaf(Z)V

    return-void

    :pswitch_30f  #0x9
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_319

    const-string/jumbo v0, "Received MSG_OLAF_FREEZE_ON_OFF  value: "

    invoke-static {v0, v10, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_319
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroid/os/Process;->doSomethingOlaf(Z)V

    return-void

    :pswitch_320  #0x8
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_336

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Received MSG_ENABLE_APP_SWITCH, r: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_336
    invoke-virtual {v9, v6, v2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterAppSwitch(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void

    :cond_33a
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;

    if-eqz v1, :cond_343

    check-cast v0, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;

    goto :goto_344

    :cond_343
    move-object v0, v4

    :goto_344
    if-eqz v0, :cond_47e

    iget-object v1, v0, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;->activityName:Ljava/lang/String;

    iget-wide v6, v0, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;->launchTime:J

    iget-object v3, v0, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_469

    iget-object v8, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mBigdataSlugSkipPackage:Ljava/util/Set;

    check-cast v8, Ljava/util/HashSet;

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35a

    goto/16 :goto_47e

    :cond_35a
    sget-object v8, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "power"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    invoke-virtual {v8}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v8

    if-nez v8, :cond_36d

    goto/16 :goto_47e

    :cond_36d
    sget-object v8, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "keyguard"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/KeyguardManager;

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_380

    goto/16 :goto_47e

    :cond_380
    const/4 v8, 0x7

    iget v0, v0, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;->launchType:I

    if-ne v0, v8, :cond_387

    move v0, v2

    goto :goto_388

    :cond_387
    move v0, v5

    :goto_388
    sget-object v8, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    sget-boolean v11, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v8, :cond_398

    :try_start_392
    invoke-virtual {v8, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v14, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_398
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_392 .. :try_end_398} :catch_39a

    :cond_398
    :goto_398
    const/4 v8, 0x2

    goto :goto_3a6

    :catch_39a
    if-eqz v11, :cond_398

    const-string v8, " is not found in pm"

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_398

    :goto_3a6
    new-array v12, v8, [J

    aput-wide v16, v12, v5

    aput-wide v16, v12, v2

    sget-object v8, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "window"

    invoke-virtual {v8, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    if-eqz v8, :cond_3e0

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    invoke-static {v13}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v13

    if-eqz v13, :cond_3e0

    :try_start_3c8
    invoke-interface {v13, v5, v8}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    iget v13, v8, Landroid/graphics/Point;->x:I

    move/from16 v16, v5

    int-to-long v4, v13

    aput-wide v4, v12, v16

    iget v4, v8, Landroid/graphics/Point;->y:I

    int-to-long v4, v4

    aput-wide v4, v12, v2
    :try_end_3d7
    .catch Landroid/os/RemoteException; {:try_start_3c8 .. :try_end_3d7} :catch_3d8

    goto :goto_3e0

    :catch_3d8
    if-eqz v11, :cond_3e0

    const-string/jumbo v4, "display size not obtained"

    invoke-static {v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e0
    :goto_3e0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_3e5
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    const-string/jumbo v8, "V"

    const/4 v12, 0x2

    invoke-virtual {v4, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v8, "FROM"

    const/16 v12, 0x7539

    invoke-virtual {v4, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v8, "PACK"

    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "LAUN"

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "UPTM"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v6, 0x3e8

    div-long/2addr v3, v6

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "RESL"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4
    :try_end_43e
    .catch Lorg/json/JSONException; {:try_start_3e5 .. :try_end_43e} :catch_43f

    goto :goto_440

    :catch_43f
    const/4 v4, 0x0

    :goto_440
    if-eqz v4, :cond_47e

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47e

    const-string/jumbo v0, "SLUG"

    const-string v1, "3"

    invoke-virtual {v9, v0, v1, v4}, Lcom/android/server/wm/ActivityManagerPerformance;->sendHqmBigData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_47e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SLUG, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47e

    :cond_469
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_47e

    :cond_46d
    move v0, v5

    iput-boolean v0, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mIsRunningAmsAppLaunch:Z

    iput-object v14, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mRunningAmsAppLaunchPackageName:Ljava/lang/String;

    iget-object v0, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_47e

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    const-string v0, "AMS_APP_LAUNCH release"

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    :cond_47e
    :goto_47e
    return-void

    :cond_47f
    move v0, v5

    iput-boolean v0, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mIsRunningAmsAppLaunch:Z

    iput-object v14, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mRunningAmsAppLaunchPackageName:Ljava/lang/String;

    return-void

    :cond_485
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_49b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Received MSG_ENABLE_ACT_RESUME_TAIL r: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49b
    const/4 v0, 0x0

    invoke-virtual {v9, v6, v0}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterTail(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void

    :cond_4a0
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_4b6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Received MSG_DISABLE_ACT_RESUME, r: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b6
    const/4 v0, 0x0

    invoke-virtual {v9, v6, v0}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void

    :cond_4bb
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_4d1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Received MSG_DISABLE_ACT_START, r: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d1
    const/4 v0, 0x0

    invoke-virtual {v9, v6, v0}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void

    :cond_4d6
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_4ec

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Received MSG_DISABLE_APP_SWITCH, r: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4ec
    const/4 v0, 0x0

    invoke-virtual {v9, v6, v0}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterAppSwitch(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void

    nop

    :pswitch_data_4f2
    .packed-switch 0x8
        :pswitch_320  #00000008
        :pswitch_30f  #00000009
        :pswitch_2fe  #0000000a
        :pswitch_23b  #0000000b
        :pswitch_1db  #0000000c
        :pswitch_1c3  #0000000d
        :pswitch_79  #0000000e
        :pswitch_5d  #0000000f
    .end packed-switch
.end method
