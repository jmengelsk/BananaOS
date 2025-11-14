.class public final Lcom/android/server/storage/DiskStatsFileLogger;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mDownloadsSize:J

.field public mPackageStats:Ljava/util/List;

.field public mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

.field public mSystemSize:J


# virtual methods
.method public final addAppsToJson(Lorg/json/JSONObject;)V
    .registers 25

    move-object/from16 v0, p1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v7, p0

    iget-object v7, v7, Lcom/android/server/storage/DiskStatsFileLogger;->mPackageStats:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_27
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_78

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageStats;

    iget v9, v8, Landroid/content/pm/PackageStats;->userHandle:I

    if-eqz v9, :cond_38

    goto :goto_27

    :cond_38
    iget-object v9, v8, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageStats;

    if-eqz v9, :cond_6d

    iget-wide v10, v9, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v12, v8, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v10, v12

    iput-wide v10, v9, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v10, v9, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v12, v8, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v10, v12

    iput-wide v10, v9, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v10, v9, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v12, v8, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v10, v12

    iput-wide v10, v9, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v10, v9, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-wide v12, v8, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v10, v12

    iput-wide v10, v9, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-wide v10, v9, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v12, v8, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v10, v12

    iput-wide v10, v9, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v10, v9, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v12, v8, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v10, v12

    iput-wide v10, v9, Landroid/content/pm/PackageStats;->externalDataSize:J

    goto :goto_27

    :cond_6d
    iget-object v9, v8, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    new-instance v10, Landroid/content/pm/PackageStats;

    invoke-direct {v10, v8}, Landroid/content/pm/PackageStats;-><init>(Landroid/content/pm/PackageStats;)V

    invoke-virtual {v6, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :cond_78
    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-wide/16 v7, 0x0

    move-wide v9, v7

    move-wide v11, v9

    :goto_84
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_dd

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageStats;

    iget-wide v14, v13, Landroid/content/pm/PackageStats;->codeSize:J

    move/from16 v16, v5

    move-object/from16 p0, v6

    iget-wide v5, v13, Landroid/content/pm/PackageStats;->dataSize:J

    move-wide/from16 v17, v5

    iget-wide v5, v13, Landroid/content/pm/PackageStats;->cacheSize:J

    move-wide/from16 v19, v5

    if-eqz v16, :cond_bd

    iget-wide v5, v13, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v14, v5

    iget-wide v5, v13, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long v5, v17, v5

    move-wide/from16 v17, v5

    iget-wide v5, v13, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long v5, v19, v5

    move-wide/from16 v21, v14

    move-wide v14, v5

    move-wide/from16 v5, v17

    move-wide/from16 v17, v11

    move-wide/from16 v11, v21

    goto :goto_c4

    :cond_bd
    move-wide/from16 v5, v17

    move-wide/from16 v17, v11

    move-wide v11, v14

    move-wide/from16 v14, v19

    :goto_c4
    add-long/2addr v7, v11

    add-long v17, v17, v5

    add-long/2addr v9, v14

    iget-object v13, v13, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    invoke-virtual {v4, v14, v15}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    move-object/from16 v6, p0

    move/from16 v5, v16

    move-wide/from16 v11, v17

    goto :goto_84

    :cond_dd
    move-wide/from16 v17, v11

    const-string/jumbo v5, "packageNames"

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "appSizes"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "cacheSizes"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "appDataSizes"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "appSize"

    invoke-virtual {v0, v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "cacheSize"

    invoke-virtual {v0, v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "appDataSize"

    move-wide/from16 v7, v17

    invoke-virtual {v0, v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-void
.end method

.method public final dumpToFile(Ljava/io/File;)V
    .registers 7

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    iget-object p1, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_c
    const-string/jumbo v2, "queryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "photosSize"

    iget-wide v3, p1, Lcom/android/server/storage/FileCollector$MeasurementResult;->imagesSize:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "videosSize"

    iget-wide v3, p1, Lcom/android/server/storage/FileCollector$MeasurementResult;->videosSize:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "audioSize"

    iget-wide v3, p1, Lcom/android/server/storage/FileCollector$MeasurementResult;->audioSize:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "downloadsSize"

    iget-wide v3, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mDownloadsSize:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "systemSize"

    iget-wide v3, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mSystemSize:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "otherSize"

    iget-wide v3, p1, Lcom/android/server/storage/FileCollector$MeasurementResult;->miscSize:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0, v1}, Lcom/android/server/storage/DiskStatsFileLogger;->addAppsToJson(Lorg/json/JSONObject;)V
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_49} :catch_4a

    goto :goto_55

    :catch_4a
    move-exception p0

    const-string p1, "DiskStatsLogger"

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_55
    if-eqz v1, :cond_5a

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5a
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return-void
.end method
