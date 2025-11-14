.class public final Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final dbLock:Ljava/lang/Object;


# instance fields
.field public mBuildVersion:Ljava/lang/String;

.field public mDBDayOfWeek:J

.field public mDevicePowerOnCount:J

.field public mLastModifiedTime:J

.field public mStartTimeGathered:J

.field public final synthetic this$0:Lcom/android/server/wm/ActivityManagerPerformance;


# direct methods
.method public static -$$Nest$mdeleteDBData(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7

    const-string v0, "AppLaunchTimeCountStats"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "AppLaunchTime Failed to delete. "

    const-string v2, "AppLaunchTime"

    const-string/jumbo v3, "NAME=?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->dbLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_13
    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_28

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mLastModifiedTime:J
    :try_end_23
    .catch Landroid/database/SQLException; {:try_start_13 .. :try_end_23} :catch_26
    .catchall {:try_start_13 .. :try_end_23} :catchall_24

    goto :goto_28

    :catchall_24
    move-exception p0

    goto :goto_4b

    :catch_26
    move-exception p0

    goto :goto_2a

    :cond_28
    :goto_28
    :try_start_28
    monitor-exit v4

    goto :goto_41

    :goto_2a
    const-string p1, "ActivityManagerPerformance"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4
    :try_end_40
    .catchall {:try_start_28 .. :try_end_40} :catchall_24

    const/4 p1, -0x1

    :goto_41
    if-gtz p1, :cond_4a

    const-string p0, "ActivityManagerPerformance"

    const-string p1, "AppLaunchTime Failed to delete AppLaunchTimeCountStats"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    return-void

    :goto_4b
    :try_start_4b
    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_24

    throw p0
.end method

.method public static -$$Nest$mfetch(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "AppLaunchTime"

    const-string/jumbo v0, "NAME"

    const-string/jumbo v2, "VALUE"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    :try_start_15
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_19} :catch_1a

    goto :goto_34

    :catch_1a
    move-exception v0

    move-object p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to query. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityManagerPerformance:AppLaunchTime"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_34
    if-eqz p1, :cond_b3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_b3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b3

    :cond_42
    const/4 v0, 0x0

    :try_start_43
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLaunchTimeCountStats"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->fetchAppLaunchTimeCountStatsFromDBValue(Ljava/lang/String;)V

    goto :goto_a5

    :catchall_58
    move-exception v0

    move-object p0, v0

    goto :goto_af

    :cond_5b
    const-string v2, "DayOfWeek"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDBDayOfWeek:J

    goto :goto_a5

    :cond_6a
    const-string/jumbo v2, "lastModifiedTime"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mLastModifiedTime:J

    goto :goto_a5

    :cond_7a
    const-string/jumbo v2, "startTimeOfGatheredData"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mStartTimeGathered:J

    goto :goto_a5

    :cond_8a
    const-string/jumbo v2, "buildVersion"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mBuildVersion:Ljava/lang/String;

    goto :goto_a5

    :cond_96
    const-string/jumbo v2, "devicePowerOnCount"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDevicePowerOnCount:J

    :cond_a5
    :goto_a5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_a9
    .catchall {:try_start_43 .. :try_end_a9} :catchall_58

    if-nez v0, :cond_42

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    :goto_af
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_b3
    if-eqz p1, :cond_b8

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_b8
    new-instance p0, Landroid/database/sqlite/SQLiteException;

    const-string/jumbo p1, "failed to fetch"

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static -$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "AppLaunchTimeCountStats"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    const-string v0, "ActivityManagerPerformance"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v7, "warm"

    const-string/jumbo v8, "hot"

    const-string/jumbo v9, "cold"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    :try_start_2a
    iget-object v8, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    iget-object v8, v8, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_38
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_38

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_82
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Ljava/lang/String;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[Ljava/lang/Long;

    move-object/from16 v16, v7

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_a3} :catch_ee

    const/16 v17, 0x0

    move-object/from16 v18, v8

    move/from16 v8, v17

    move-object/from16 v17, v9

    :goto_ab
    const/4 v9, 0x3

    if-ge v8, v9, :cond_bf

    :try_start_ae
    new-instance v9, Lorg/json/JSONArray;

    move/from16 v19, v8

    aget-object v8, v15, v19

    invoke-direct {v9, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    aget-object v8, v16, v19

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v8, v19, 0x1

    goto :goto_ab

    :cond_bf
    invoke-virtual {v14, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c8
    .catch Lorg/json/JSONException; {:try_start_ae .. :try_end_c8} :catch_c9
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_c8} :catch_ee

    goto :goto_e7

    :catch_c9
    :try_start_c9
    sget-boolean v5, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_e7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "the pec stats in \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' is not normal"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_e7} :catch_ee

    :cond_e7
    :goto_e7
    move-object/from16 v7, v16

    move-object/from16 v9, v17

    move-object/from16 v8, v18

    goto :goto_82

    :catch_ee
    const-string/jumbo v5, "failed to getJsonFromAppLaunchTimeCountStats"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f4
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_ff

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14e

    :cond_ff
    const-string v0, ""

    goto :goto_14e

    :cond_102
    const-string v0, "DayOfWeek"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_111

    iget-wide v5, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDBDayOfWeek:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_14e

    :cond_111
    const-string/jumbo v0, "lastModifiedTime"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_121

    iget-wide v5, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mLastModifiedTime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_14e

    :cond_121
    const-string/jumbo v0, "startTimeOfGatheredData"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    iget-wide v5, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mStartTimeGathered:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_14e

    :cond_131
    const-string/jumbo v0, "buildVersion"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13d

    iget-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mBuildVersion:Ljava/lang/String;

    goto :goto_14e

    :cond_13d
    const-string/jumbo v0, "devicePowerOnCount"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    iget-wide v5, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDevicePowerOnCount:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_14e

    :cond_14d
    const/4 v0, 0x0

    :goto_14e
    if-nez v0, :cond_152

    goto/16 :goto_203

    :cond_152
    const-string/jumbo v5, "NAME"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "VALUE"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "AppLaunchTime"

    const-string/jumbo v0, "NAME=?"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Failed to update. "

    const-string v8, "ActivityManagerPerformance:"

    sget-object v9, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->dbLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_16e
    invoke-virtual {v2, v5, v4, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_184

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mLastModifiedTime:J
    :try_end_17e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16e .. :try_end_17e} :catch_182
    .catchall {:try_start_16e .. :try_end_17e} :catchall_17f

    goto :goto_184

    :catchall_17f
    move-exception v0

    goto/16 :goto_204

    :catch_182
    move-exception v0

    goto :goto_186

    :cond_184
    :goto_184
    :try_start_184
    monitor-exit v9

    goto :goto_1a7

    :goto_186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9
    :try_end_1a6
    .catchall {:try_start_184 .. :try_end_1a6} :catchall_17f

    const/4 v0, -0x1

    :goto_1a7
    if-gtz v0, :cond_203

    const-string v5, "AppLaunchTime"

    const-string v6, "Failed to insert. "

    const-string v7, "ActivityManagerPerformance:"

    sget-object v8, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->dbLock:Ljava/lang/Object;

    monitor-enter v8

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    :try_start_1b5
    invoke-virtual {v2, v5, v11, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    cmp-long v0, v11, v9

    if-eqz v0, :cond_1cc

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mLastModifiedTime:J
    :try_end_1c7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b5 .. :try_end_1c7} :catch_1ca
    .catchall {:try_start_1b5 .. :try_end_1c7} :catchall_1c8

    goto :goto_1cc

    :catchall_1c8
    move-exception v0

    goto :goto_201

    :catch_1ca
    move-exception v0

    goto :goto_1cf

    :cond_1cc
    :goto_1cc
    :try_start_1cc
    monitor-exit v8

    move-wide v9, v11

    goto :goto_1ef

    :goto_1cf
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8
    :try_end_1ef
    .catchall {:try_start_1cc .. :try_end_1ef} :catchall_1c8

    :goto_1ef
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-gez v0, :cond_203

    const-string v0, "ActivityManagerPerformance"

    const-string v1, "AppLaunchTime Failed to insert "

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_203

    :goto_201
    :try_start_201
    monitor-exit v8
    :try_end_202
    .catchall {:try_start_201 .. :try_end_202} :catchall_1c8

    throw v0

    :cond_203
    :goto_203
    return-void

    :goto_204
    :try_start_204
    monitor-exit v9
    :try_end_205
    .catchall {:try_start_204 .. :try_end_205} :catchall_17f

    throw v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->dbLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityManagerPerformance;Landroid/content/Context;)V
    .registers 9

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    new-instance v5, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper$AppLaunchTimeDBErrorHandler;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const-string v2, "/data/misc/AppLaunchTime/app_launch_time.db"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    const-wide/16 p0, -0x1

    iput-wide p0, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDBDayOfWeek:J

    iput-wide p0, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mLastModifiedTime:J

    iput-wide p0, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mStartTimeGathered:J

    iput-wide p0, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDevicePowerOnCount:J

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mBuildVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final fetchAppLaunchTimeCountStatsFromDBValue(Ljava/lang/String;)V
    .registers 29

    move-object/from16 v0, p0

    const-string/jumbo v1, "json parsing error "

    const-string v2, " "

    const-string v3, "ActivityManagerPerformance"

    :try_start_9
    new-instance v4, Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_b} :catch_11

    move-object/from16 v5, p1

    :try_start_d
    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_10} :catch_13

    goto :goto_1a

    :catch_11
    move-object/from16 v5, p1

    :catch_13
    const-string/jumbo v4, "failed fetch pec from json"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_1a
    if-eqz v4, :cond_1b3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_24

    goto/16 :goto_1b3

    :cond_24
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :cond_28
    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :try_start_34
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_41} :catch_1a1

    const-string v10, ""

    :cond_43
    :goto_43
    :try_start_43
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_28

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_4f} :catch_1a1

    :try_start_4f
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    :goto_5c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_4f .. :try_end_60} :catch_173

    if-eqz v15, :cond_43

    :try_start_62
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_62 .. :try_end_68} :catch_146

    :try_start_68
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_68 .. :try_end_6c} :catch_143

    move-object/from16 v16, v4

    :try_start_6e
    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->values()[Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    move-result-object v4

    array-length v4, v4
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_73} :catch_140

    const/16 v17, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object/from16 p1, v5

    :try_start_79
    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;->values()[Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;

    move-result-object v5

    array-length v5, v5
    :try_end_7e
    .catch Lorg/json/JSONException; {:try_start_79 .. :try_end_7e} :catch_13d

    add-int/lit8 v18, v5, 0x4

    move-object/from16 v19, v7

    const/4 v7, 0x2

    :try_start_83
    new-array v7, v7, [I

    aput v18, v7, v17

    const/16 v17, 0x0

    aput v4, v7, v17
    :try_end_8b
    .catch Lorg/json/JSONException; {:try_start_83 .. :try_end_8b} :catch_13a

    move-object/from16 v18, v9

    :try_start_8d
    const-class v9, Ljava/lang/Long;

    invoke-static {v9, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/lang/Long;
    :try_end_95
    .catch Lorg/json/JSONException; {:try_start_8d .. :try_end_95} :catch_11e

    move/from16 v9, v17

    move/from16 v20, v9

    :goto_99
    if-ge v9, v4, :cond_120

    :try_start_9b
    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->values()[Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    move-result-object v21

    aget-object v21, v21, v9

    move/from16 v22, v4

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move/from16 v21, v9

    move-object/from16 v23, v10

    move/from16 v10, v17

    move/from16 v9, v20

    :goto_b3
    if-ge v10, v5, :cond_d2

    aget-object v20, v7, v21

    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v20, v10

    move/from16 v20, v10

    int-to-long v9, v9

    aget-object v24, v7, v21

    aget-object v24, v24, v20

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    add-long v9, v9, v24

    long-to-int v9, v9

    add-int/lit8 v10, v20, 0x1

    goto :goto_b3

    :cond_d2
    move/from16 v24, v5

    move/from16 v10, v17

    :goto_d6
    const/4 v5, 0x4

    if-ge v10, v5, :cond_ec

    aget-object v5, v7, v21

    move-object/from16 v20, v5

    add-int v5, v24, v10

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v20, v5
    :try_end_e9
    .catch Lorg/json/JSONException; {:try_start_9b .. :try_end_e9} :catch_f8

    add-int/lit8 v10, v10, 0x1

    goto :goto_d6

    :cond_ec
    add-int/lit8 v4, v21, 0x1

    move/from16 v20, v9

    move-object/from16 v10, v23

    move/from16 v5, v24

    move v9, v4

    move/from16 v4, v22

    goto :goto_99

    :catch_f8
    :try_start_f8
    sget-boolean v4, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_12f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "json parsing error stats "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12f

    :catch_11e
    :goto_11e
    move-object v10, v15

    goto :goto_14e

    :cond_120
    if-lez v20, :cond_12f

    invoke-virtual {v13, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    iget-object v4, v4, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12f
    .catch Lorg/json/JSONException; {:try_start_f8 .. :try_end_12f} :catch_11e

    :cond_12f
    :goto_12f
    move-object/from16 v5, p1

    move-object v10, v15

    :goto_132
    move-object/from16 v4, v16

    move-object/from16 v9, v18

    move-object/from16 v7, v19

    goto/16 :goto_5c

    :catch_13a
    :goto_13a
    move-object/from16 v18, v9

    goto :goto_11e

    :catch_13d
    :goto_13d
    move-object/from16 v19, v7

    goto :goto_13a

    :catch_140
    :goto_140
    move-object/from16 p1, v5

    goto :goto_13d

    :catch_143
    move-object/from16 v16, v4

    goto :goto_140

    :catch_146
    move-object/from16 v16, v4

    move-object/from16 p1, v5

    move-object/from16 v19, v7

    move-object/from16 v18, v9

    :goto_14e
    :try_start_14e
    sget-boolean v4, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_170

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_170
    .catch Lorg/json/JSONException; {:try_start_14e .. :try_end_170} :catch_17b

    :cond_170
    move-object/from16 v5, p1

    goto :goto_132

    :catch_173
    move-object/from16 v16, v4

    move-object/from16 p1, v5

    move-object/from16 v19, v7

    move-object/from16 v18, v9

    :catch_17b
    :try_start_17b
    sget-boolean v4, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_197

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_197
    .catch Lorg/json/JSONException; {:try_start_17b .. :try_end_197} :catch_1a5

    :cond_197
    move-object/from16 v5, p1

    move-object/from16 v4, v16

    move-object/from16 v9, v18

    move-object/from16 v7, v19

    goto/16 :goto_43

    :catch_1a1
    move-object/from16 v16, v4

    move-object/from16 p1, v5

    :catch_1a5
    sget-boolean v4, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_1ac

    invoke-static {v1, v6, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ac
    move-object/from16 v5, p1

    move-object/from16 v4, v16

    goto/16 :goto_28

    :cond_1b2
    return-void

    :cond_1b3
    :goto_1b3
    iget-object v0, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    iget-object v0, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string p0, "ActivityManagerPerformance"

    const-string v0, "CREATE TABLE IF NOT EXISTS AppLaunchTime (NAME TEXT unique, VALUE TEXT);"

    :try_start_4
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "AppLaunchTime table creation done"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    const-string/jumbo v0, "failed to create AppLaunchTime table"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method
