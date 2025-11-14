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
    .locals 5

    const-string v0, "AppLaunchTimeCountStats"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "AppLaunchTime Failed to delete. "

    const-string v2, "AppLaunchTime"

    const-string/jumbo v3, "NAME=?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->dbLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mLastModifiedTime:J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v4

    goto :goto_2

    :goto_1
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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, -0x1

    :goto_2
    if-gtz p1, :cond_1

    const-string p0, "ActivityManagerPerformance"

    const-string p1, "AppLaunchTime Failed to delete AppLaunchTimeCountStats"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :goto_3
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mfetch(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

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

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
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

    :goto_0
    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLaunchTimeCountStats"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->fetchAppLaunchTimeCountStatsFromDBValue(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    const-string v2, "DayOfWeek"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDBDayOfWeek:J

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "lastModifiedTime"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mLastModifiedTime:J

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "startTimeOfGatheredData"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mStartTimeGathered:J

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "buildVersion"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mBuildVersion:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "devicePowerOnCount"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDevicePowerOnCount:J

    :cond_6
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_7
    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_8
    new-instance p0, Landroid/database/sqlite/SQLiteException;

    const-string/jumbo p1, "failed to fetch"

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static -$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "AppLaunchTimeCountStats"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "ActivityManagerPerformance"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v7, "warm"

    const-string/jumbo v8, "hot"

    const-string/jumbo v9, "cold"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    :try_start_0
    iget-object v8, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    iget-object v8, v8, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

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

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

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

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v17, 0x0

    move-object/from16 v18, v8

    move/from16 v8, v17

    move-object/from16 v17, v9

    :goto_1
    const/4 v9, 0x3

    if-ge v8, v9, :cond_2

    :try_start_1
    new-instance v9, Lorg/json/JSONArray;

    move/from16 v19, v8

    aget-object v8, v15, v19

    invoke-direct {v9, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    aget-object v8, v16, v19

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v8, v19, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v14, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    :try_start_2
    sget-boolean v5, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_3

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
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_2
    move-object/from16 v7, v16

    move-object/from16 v9, v17

    move-object/from16 v8, v18

    goto :goto_0

    :catch_1
    const-string/jumbo v5, "failed to getJsonFromAppLaunchTimeCountStats"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    const-string v0, ""

    goto :goto_3

    :cond_6
    const-string v0, "DayOfWeek"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide v5, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDBDayOfWeek:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    const-string/jumbo v0, "lastModifiedTime"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-wide v5, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mLastModifiedTime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    const-string/jumbo v0, "startTimeOfGatheredData"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide v5, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mStartTimeGathered:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    const-string/jumbo v0, "buildVersion"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mBuildVersion:Ljava/lang/String;

    goto :goto_3

    :cond_a
    const-string/jumbo v0, "devicePowerOnCount"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide v5, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDevicePowerOnCount:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_c

    goto/16 :goto_b

    :cond_c
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

    :try_start_3
    invoke-virtual {v2, v5, v4, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_d

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mLastModifiedTime:J
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_d
    :goto_4
    :try_start_4
    monitor-exit v9

    goto :goto_6

    :goto_5
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
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, -0x1

    :goto_6
    if-gtz v0, :cond_f

    const-string v5, "AppLaunchTime"

    const-string v6, "Failed to insert. "

    const-string v7, "ActivityManagerPerformance:"

    sget-object v8, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->dbLock:Ljava/lang/Object;

    monitor-enter v8

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    :try_start_5
    invoke-virtual {v2, v5, v11, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    cmp-long v0, v11, v9

    if-eqz v0, :cond_e

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mLastModifiedTime:J
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_8

    :cond_e
    :goto_7
    :try_start_6
    monitor-exit v8

    move-wide v9, v11

    goto :goto_9

    :goto_8
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
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_9
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-gez v0, :cond_f

    const-string v0, "ActivityManagerPerformance"

    const-string v1, "AppLaunchTime Failed to insert "

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :goto_a
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :cond_f
    :goto_b
    return-void

    :goto_c
    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->dbLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityManagerPerformance;Landroid/content/Context;)V
    .locals 6

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
    .locals 27

    move-object/from16 v0, p0

    const-string/jumbo v1, "json parsing error "

    const-string v2, " "

    const-string v3, "ActivityManagerPerformance"

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v5, p1

    :try_start_1
    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object/from16 v5, p1

    :catch_1
    const-string/jumbo v4, "failed fetch pec from json"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_b

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_e

    :cond_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :try_start_2
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_b

    const-string v10, ""

    :cond_2
    :goto_2
    :try_start_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_b

    :try_start_4
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_9

    if-eqz v15, :cond_2

    :try_start_5
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_8

    :try_start_6
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_7

    move-object/from16 v16, v4

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->values()[Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    move-result-object v4

    array-length v4, v4
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    const/16 v17, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object/from16 p1, v5

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;->values()[Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;

    move-result-object v5

    array-length v5, v5
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_5

    add-int/lit8 v18, v5, 0x4

    move-object/from16 v19, v7

    const/4 v7, 0x2

    :try_start_9
    new-array v7, v7, [I

    aput v18, v7, v17

    const/16 v17, 0x0

    aput v4, v7, v17
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4

    move-object/from16 v18, v9

    :try_start_a
    const-class v9, Ljava/lang/Long;

    invoke-static {v9, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/lang/Long;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_3

    move/from16 v9, v17

    move/from16 v20, v9

    :goto_4
    if-ge v9, v4, :cond_5

    :try_start_b
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

    :goto_5
    if-ge v10, v5, :cond_3

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

    goto :goto_5

    :cond_3
    move/from16 v24, v5

    move/from16 v10, v17

    :goto_6
    const/4 v5, 0x4

    if-ge v10, v5, :cond_4

    aget-object v5, v7, v21

    move-object/from16 v20, v5

    add-int v5, v24, v10

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v20, v5
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_4
    add-int/lit8 v4, v21, 0x1

    move/from16 v20, v9

    move-object/from16 v10, v23

    move/from16 v5, v24

    move v9, v4

    move/from16 v4, v22

    goto :goto_4

    :catch_2
    :try_start_c
    sget-boolean v4, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_6

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

    goto :goto_8

    :catch_3
    :goto_7
    move-object v10, v15

    goto :goto_d

    :cond_5
    if-lez v20, :cond_6

    invoke-virtual {v13, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    iget-object v4, v4, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_3

    :cond_6
    :goto_8
    move-object/from16 v5, p1

    move-object v10, v15

    :goto_9
    move-object/from16 v4, v16

    move-object/from16 v9, v18

    move-object/from16 v7, v19

    goto/16 :goto_3

    :catch_4
    :goto_a
    move-object/from16 v18, v9

    goto :goto_7

    :catch_5
    :goto_b
    move-object/from16 v19, v7

    goto :goto_a

    :catch_6
    :goto_c
    move-object/from16 p1, v5

    goto :goto_b

    :catch_7
    move-object/from16 v16, v4

    goto :goto_c

    :catch_8
    move-object/from16 v16, v4

    move-object/from16 p1, v5

    move-object/from16 v19, v7

    move-object/from16 v18, v9

    :goto_d
    :try_start_d
    sget-boolean v4, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_7

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
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_a

    :cond_7
    move-object/from16 v5, p1

    goto :goto_9

    :catch_9
    move-object/from16 v16, v4

    move-object/from16 p1, v5

    move-object/from16 v19, v7

    move-object/from16 v18, v9

    :catch_a
    :try_start_e
    sget-boolean v4, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_c

    :cond_8
    move-object/from16 v5, p1

    move-object/from16 v4, v16

    move-object/from16 v9, v18

    move-object/from16 v7, v19

    goto/16 :goto_2

    :catch_b
    move-object/from16 v16, v4

    move-object/from16 p1, v5

    :catch_c
    sget-boolean v4, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_9

    invoke-static {v1, v6, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object/from16 v5, p1

    move-object/from16 v4, v16

    goto/16 :goto_1

    :cond_a
    return-void

    :cond_b
    :goto_e
    iget-object v0, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    iget-object v0, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string p0, "ActivityManagerPerformance"

    const-string v0, "CREATE TABLE IF NOT EXISTS AppLaunchTime (NAME TEXT unique, VALUE TEXT);"

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "AppLaunchTime table creation done"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string/jumbo v0, "failed to create AppLaunchTime table"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
