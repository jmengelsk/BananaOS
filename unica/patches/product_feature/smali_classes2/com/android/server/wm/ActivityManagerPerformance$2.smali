.class public final Lcom/android/server/wm/ActivityManagerPerformance$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityManagerPerformance;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityManagerPerformance;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance$2;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 30

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "ActivityManagerPerformance"

    if-eqz v2, :cond_1

    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Screen state changed. mIsScreenOn: false"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/ActivityManagerPerformance$2;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    iput-boolean v3, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    return-void

    :cond_1
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "Screen state changed. mIsScreenOn: true"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, v0, Lcom/android/server/wm/ActivityManagerPerformance$2;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    iput-boolean v5, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    iput-boolean v5, v0, Lcom/android/server/wm/ActivityManagerPerformance;->needSkipResume:Z

    return-void

    :cond_3
    const-string/jumbo v2, "com.sec.android.sdhms.action.INIT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "SDHMS INIT_COMPLETED"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, v0, Lcom/android/server/wm/ActivityManagerPerformance$2;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    iput-boolean v5, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsSdhmsInitCompleted:Z

    return-void

    :cond_5
    const-string/jumbo v2, "com.sec.android.intent.action.BIGDATA_EVERY_DAY_UPDATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "receive ACTION_UPDATE_EVERY_DAY_ALARM, updating db"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, v0, Lcom/android/server/wm/ActivityManagerPerformance$2;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-static {v0}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$mwriteAppLaunchTimeCountStatsToDB(Lcom/android/server/wm/ActivityManagerPerformance;)V

    return-void

    :cond_7
    const-string/jumbo v2, "com.sec.android.intent.action.BIGDATA_EVERY_WEEK_CLEANUP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string/jumbo v2, "receive ACTION_CLEANUP_EVERY_WEEK_ALARM, sending bigdata to HQM"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v2, v0, Lcom/android/server/wm/ActivityManagerPerformance$2;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/util/HashMap;

    iget-object v0, v2, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sget-object v7, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    iget-wide v7, v7, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDBDayOfWeek:J

    long-to-int v7, v7

    const/4 v8, 0x7

    invoke-virtual {v0, v8, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xb

    invoke-virtual {v0, v7, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v9, 0xc

    invoke-virtual {v0, v9, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xd

    invoke-virtual {v0, v10, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v11, 0xe

    invoke-virtual {v0, v11, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    sget-object v14, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    iget-wide v14, v14, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mStartTimeGathered:J

    sub-long/2addr v12, v14

    invoke-virtual {v0, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v12, 0x6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v12, v0

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    iget-wide v14, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDevicePowerOnCount:J

    iget-wide v9, v2, Lcom/android/server/wm/ActivityManagerPerformance;->mDramSize:J

    const-string/jumbo v0, "W"

    const-string v3, "H"

    const-string v7, "C"

    filled-new-array {v7, v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const-string v26, "CNT"

    const-string/jumbo v27, "MIN"

    const-string v16, "005"

    const-string v17, "010"

    const-string v18, "015"

    const-string v19, "020"

    const-string v20, "025"

    const-string v21, "030"

    const-string v22, "040"

    const-string v23, "050"

    const-string v24, "100"

    const-string/jumbo v25, "OVT"

    const-string/jumbo v28, "MAX"

    const-string/jumbo v29, "SUM"

    filled-new-array/range {v16 .. v29}, [Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_a

    :cond_9
    const/4 v8, 0x7

    goto :goto_0

    :cond_a
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v5

    move-object/from16 v5, v19

    check-cast v5, Ljava/lang/String;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v11, v21

    check-cast v11, Ljava/lang/String;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [[Ljava/lang/Long;

    move-object/from16 v21, v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move/from16 v23, v1

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v24, v3

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string/jumbo v11, "PACK"

    invoke-virtual {v0, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v11, "PVER"

    invoke-virtual {v1, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    :goto_3
    const/4 v11, 0x3

    if-ge v1, v11, :cond_c

    const/4 v3, 0x0

    :goto_4
    const/16 v11, 0xe

    if-ge v3, v11, :cond_b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v1

    aget-object v1, v21, v26

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v24, v3

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v11, v19, v26

    aget-object v11, v11, v3

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v26

    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_b
    move/from16 v26, v1

    add-int/lit8 v1, v26, 0x1

    goto :goto_3

    :cond_c
    const-string/jumbo v1, "PERD"

    invoke-virtual {v0, v1, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "DONC"

    invoke-virtual {v0, v1, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "DRAM"

    invoke-virtual {v0, v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move/from16 v3, v20

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v0

    goto :goto_5

    :catch_1
    :try_start_3
    const-string/jumbo v0, "TTLS Bigdata key & data mismatch"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_2
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "TTLS"

    const-string v1, "1"

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/wm/ActivityManagerPerformance;->sendHqmBigData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v23, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_d
    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v3, v24

    const/16 v11, 0xe

    const/16 v20, 0x1

    goto/16 :goto_2

    :catch_3
    move-exception v0

    move/from16 v23, v1

    goto :goto_6

    :cond_e
    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_f
    move/from16 v23, v1

    goto :goto_7

    :goto_6
    const-string/jumbo v1, "failed to send TTLS Bigdata"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->deleteDBTableAndClear()V

    const-string/jumbo v1, "failed resetStartTimeAndDevicePowerOnCount, "

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    iget-wide v2, v2, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDBDayOfWeek:J

    long-to-int v2, v2

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x0

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v11, 0xe

    invoke-virtual {v0, v11, v2}, Ljava/util/Calendar;->set(II)V

    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_11

    :try_start_4
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    iput-wide v7, v2, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mStartTimeGathered:J

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "startTimeOfGatheredData"

    invoke-static {v0, v2, v3}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    const-wide/16 v2, 0x1

    iput-wide v2, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDevicePowerOnCount:J

    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "devicePowerOnCount"

    invoke-static {v0, v2, v3}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    if-eqz v23, :cond_10

    const-string/jumbo v0, "resetStartTimeAndDevicePowerOnCount"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_9

    :cond_10
    :goto_8
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_a

    :goto_9
    if-eqz v23, :cond_10

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0

    :cond_11
    const-string/jumbo v0, "failed DB writable open to resetStartTimeAndDevicePowerOnCount."

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    goto :goto_b

    :cond_12
    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_13

    const-string/jumbo v1, "receive Shutdown, updating db"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v0, v0, Lcom/android/server/wm/ActivityManagerPerformance$2;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-static {v0}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$mwriteAppLaunchTimeCountStatsToDB(Lcom/android/server/wm/ActivityManagerPerformance;)V

    :cond_14
    :goto_b
    return-void
.end method
