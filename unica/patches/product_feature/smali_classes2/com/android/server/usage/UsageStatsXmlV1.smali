.class public abstract Lcom/android/server/usage/UsageStatsXmlV1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V
    .registers 5

    const-string/jumbo v0, "count"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    const-string/jumbo v0, "time"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x5

    const-string/jumbo v3, "package"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    const-string/jumbo v8, "UsageStatsXmlV1"

    iget-object v9, v1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->clear()V

    iget-object v9, v1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->clear()V

    const/4 v9, 0x0

    iput-object v9, v1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v10, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v10}, Landroid/app/usage/EventList;->clear()V

    iget-wide v10, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string/jumbo v12, "endTime"

    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v12, v10

    iput-wide v12, v1, Lcom/android/server/usage/IntervalStats;->endTime:J

    :try_start_2d
    const-string/jumbo v10, "majorVersion"

    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    iput v10, v1, Lcom/android/server/usage/IntervalStats;->majorVersion:I
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_3c

    :catch_37
    const-string v10, "Failed to parse majorVersion"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3c
    :try_start_3c
    const-string/jumbo v10, "minorVersion"

    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    iput v10, v1, Lcom/android/server/usage/IntervalStats;->minorVersion:I
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_45} :catch_46

    goto :goto_4b

    :catch_46
    const-string v10, "Failed to parse minorVersion"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    :goto_4f
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    if-eq v11, v7, :cond_2c8

    if-ne v11, v6, :cond_5d

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-le v12, v10, :cond_2c8

    :cond_5d
    if-eq v11, v5, :cond_60

    goto :goto_4f

    :cond_60
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v12, "count"

    const-string/jumbo v13, "timeActive"

    const-string/jumbo v14, "lastTimeActive"

    const-string/jumbo v15, "no package attribute present"

    const/16 v16, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_2ca

    goto :goto_d4

    :sswitch_7d
    const-string/jumbo v5, "interactive"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    goto :goto_d4

    :cond_87
    const/16 v16, 0x6

    goto :goto_d4

    :sswitch_8a
    const-string/jumbo v5, "keyguard-shown"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_94

    goto :goto_d4

    :cond_94
    move/from16 v16, v2

    goto :goto_d4

    :sswitch_97
    const-string/jumbo v5, "event"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a1

    goto :goto_d4

    :cond_a1
    const/16 v16, 0x4

    goto :goto_d4

    :sswitch_a4
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ab

    goto :goto_d4

    :cond_ab
    move/from16 v16, v6

    goto :goto_d4

    :sswitch_ae
    const-string/jumbo v5, "non-interactive"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b8

    goto :goto_d4

    :cond_b8
    const/16 v16, 0x2

    goto :goto_d4

    :sswitch_bb
    const-string/jumbo v5, "keyguard-hidden"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c5

    goto :goto_d4

    :cond_c5
    move/from16 v16, v7

    goto :goto_d4

    :sswitch_c8
    const-string/jumbo v5, "config"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d2

    goto :goto_d4

    :cond_d2
    move/from16 v16, v4

    :goto_d4
    packed-switch v16, :pswitch_data_2e8

    :goto_d7
    move/from16 v16, v10

    goto/16 :goto_2c1

    :pswitch_db  #0x6
    iget-object v5, v1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v5}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_d7

    :pswitch_e1  #0x5
    iget-object v5, v1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v5}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_d7

    :pswitch_e7  #0x4
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_182

    const-string/jumbo v11, "class"

    invoke-static {v0, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v12}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    invoke-virtual {v1, v5}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v12, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v11, :cond_107

    invoke-virtual {v1, v11}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v12, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    :cond_107
    const-string/jumbo v5, "flags"

    invoke-static {v0, v5, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v12, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    iget-wide v13, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string/jumbo v5, "time"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v15

    add-long/2addr v13, v15

    iput-wide v13, v12, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    const-string/jumbo v5, "type"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, v12, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    :try_start_125
    const-string/jumbo v5, "instanceId"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, v12, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I
    :try_end_12e
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_12e} :catch_12f

    goto :goto_134

    :catch_12f
    const-string v5, "Failed to parse mInstanceId"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_134
    iget v5, v12, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v5, v2, :cond_173

    const/16 v11, 0x8

    if-eq v5, v11, :cond_161

    const/16 v11, 0xb

    if-eq v5, v11, :cond_157

    const/16 v11, 0xc

    if-eq v5, v11, :cond_145

    goto :goto_17d

    :cond_145
    const-string/jumbo v5, "notificationChannel"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_153

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    goto :goto_154

    :cond_153
    move-object v5, v9

    :goto_154
    iput-object v5, v12, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_17d

    :cond_157
    const-string/jumbo v5, "standbyBucket"

    invoke-static {v0, v5, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v12, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    goto :goto_17d

    :cond_161
    const-string/jumbo v5, "shortcutId"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16f

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    goto :goto_170

    :cond_16f
    move-object v5, v9

    :goto_170
    iput-object v5, v12, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_17d

    :cond_173
    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    iput-object v5, v12, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v0, v5}, Landroid/content/res/Configuration;->readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V

    :goto_17d
    invoke-virtual {v1, v12}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    goto/16 :goto_d7

    :cond_182
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v15}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_188  #0x3
    invoke-interface {v0, v9, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_27b

    invoke-virtual {v1, v5}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v5

    move/from16 v16, v10

    iget-wide v9, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v0, v14}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    add-long/2addr v14, v9

    iput-wide v14, v5, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    :try_start_19d
    iget-wide v9, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string/jumbo v14, "lastTimeVisible"

    invoke-static {v0, v14}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    add-long/2addr v9, v14

    iput-wide v9, v5, Landroid/app/usage/UsageStats;->mLastTimeVisible:J
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_1a9} :catch_1aa

    goto :goto_1af

    :catch_1aa
    const-string v9, "Failed to parse mLastTimeVisible"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1af
    :try_start_1af
    iget-wide v9, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string/jumbo v14, "lastTimeServiceUsed"

    invoke-static {v0, v14}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    add-long/2addr v9, v14

    iput-wide v9, v5, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J
    :try_end_1bb
    .catch Ljava/io/IOException; {:try_start_1af .. :try_end_1bb} :catch_1bc

    goto :goto_1c1

    :catch_1bc
    const-string v9, "Failed to parse mLastTimeForegroundServiceUsed"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c1
    invoke-static {v0, v13}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v5, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    :try_start_1c7
    const-string/jumbo v9, "timeVisible"

    invoke-static {v0, v9}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v5, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J
    :try_end_1d0
    .catch Ljava/io/IOException; {:try_start_1c7 .. :try_end_1d0} :catch_1d1

    goto :goto_1d6

    :catch_1d1
    const-string v9, "Failed to parse mTotalTimeVisible"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d6
    :try_start_1d6
    const-string/jumbo v9, "timeServiceUsed"

    invoke-static {v0, v9}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v5, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J
    :try_end_1df
    .catch Ljava/io/IOException; {:try_start_1d6 .. :try_end_1df} :catch_1e0

    goto :goto_1e5

    :catch_1e0
    const-string v9, "Failed to parse mTotalTimeForegroundServiceUsed"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e5
    const-string/jumbo v9, "lastEvent"

    invoke-static {v0, v9}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    iput v9, v5, Landroid/app/usage/UsageStats;->mLastEvent:I

    const-string/jumbo v9, "appLaunchCount"

    invoke-static {v0, v9, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    iput v9, v5, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    :goto_1f7
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v7, :cond_2c1

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    if-ne v9, v6, :cond_20b

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20b

    goto/16 :goto_2c1

    :cond_20b
    const/4 v13, 0x2

    if-eq v9, v13, :cond_20f

    goto :goto_1f7

    :cond_20f
    const-string/jumbo v9, "chosen_action"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_278

    const-string/jumbo v10, "name"

    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_222

    goto :goto_278

    :cond_222
    iget-object v14, v5, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-nez v14, :cond_22d

    new-instance v14, Landroid/util/ArrayMap;

    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    iput-object v14, v5, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    :cond_22d
    iget-object v14, v5, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_23f

    new-instance v14, Landroid/util/ArrayMap;

    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    iget-object v15, v5, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v15, v13, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23f
    :goto_23f
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    if-eq v14, v7, :cond_278

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    if-ne v14, v6, :cond_252

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_252

    goto :goto_278

    :cond_252
    const/4 v2, 0x2

    if-eq v14, v2, :cond_257

    :cond_255
    :goto_255
    const/4 v2, 0x5

    goto :goto_23f

    :cond_257
    const-string/jumbo v14, "category"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_255

    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v15

    iget-object v2, v5, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_255

    :cond_278
    :goto_278
    const/4 v2, 0x5

    goto/16 :goto_1f7

    :cond_27b
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v15}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_281  #0x2
    move/from16 v16, v10

    iget-object v2, v1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v2}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_2c1

    :pswitch_289  #0x1
    move/from16 v16, v10

    iget-object v2, v1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v2}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_2c1

    :pswitch_291  #0x0
    move/from16 v16, v10

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    invoke-static {v0, v2}, Landroid/content/res/Configuration;->readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v2

    iget-wide v9, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v0, v14}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    add-long/2addr v14, v9

    iput-wide v14, v2, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    invoke-static {v0, v13}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v2, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    const-string/jumbo v5, "active"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c1

    iget-object v2, v2, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v2, v1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    :cond_2c1
    :goto_2c1
    move/from16 v10, v16

    const/4 v2, 0x5

    const/4 v5, 0x2

    const/4 v9, 0x0

    goto/16 :goto_4f

    :cond_2c8
    return-void

    nop

    :sswitch_data_2ca
    .sparse-switch
        -0x50c07cbe -> :sswitch_c8
        -0x45b2e24f -> :sswitch_bb
        -0x301c401e -> :sswitch_ae
        -0x301acbba -> :sswitch_a4
        0x5c6729a -> :sswitch_97
        0x1f63682a -> :sswitch_8a
        0x6deacee2 -> :sswitch_7d
    .end sparse-switch

    :pswitch_data_2e8
    .packed-switch 0x0
        :pswitch_291  #00000000
        :pswitch_289  #00000001
        :pswitch_281  #00000002
        :pswitch_188  #00000003
        :pswitch_e7  #00000004
        :pswitch_e1  #00000005
        :pswitch_db  #00000006
    .end packed-switch
.end method
