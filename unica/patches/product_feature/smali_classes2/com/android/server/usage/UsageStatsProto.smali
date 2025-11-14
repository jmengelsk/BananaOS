.class public abstract Lcom/android/server/usage/UsageStatsProto;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V
    .locals 14

    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    :cond_0
    const-wide v0, 0x10900000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    if-nez v4, :cond_2

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iget-object v5, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v3

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v5

    const-string v6, ""

    const/4 v7, -0x1

    if-eq v5, v7, :cond_9

    const/4 v8, 0x1

    if-eq v5, v8, :cond_8

    const/4 v9, 0x3

    if-eq v5, v9, :cond_3

    goto :goto_0

    :cond_3
    const-wide v10, 0x20b00000003L

    invoke-virtual {p0, v10, v11}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v10

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v12

    if-eq v12, v7, :cond_6

    if-eq v12, v8, :cond_5

    if-eq v12, v9, :cond_4

    goto :goto_1

    :cond_4
    const-wide v12, 0x10500000003L

    invoke-virtual {p0, v12, v13}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_6
    if-nez v3, :cond_7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-virtual {p0, v10, v11}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_9
    :goto_3
    if-nez v2, :cond_a

    iget-object p0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {p0, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void
.end method

.method public static loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 11

    const-wide v0, 0x20b00000015L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    const-wide v3, 0x10b00000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v2, p0, v3, v4}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    invoke-virtual {p1, v2}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v5

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/app/usage/ConfigurationStats;

    invoke-direct {v5}, Landroid/app/usage/ConfigurationStats;-><init>()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    const/4 v8, 0x4

    if-eq v7, v8, :cond_2

    const/4 v8, 0x5

    if-eq v7, v8, :cond_1

    goto :goto_0

    :cond_1
    const-wide v6, 0x10800000005L

    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v6

    goto :goto_0

    :cond_2
    const-wide v7, 0x10500000004L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    iput v7, v5, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    goto :goto_0

    :cond_3
    const-wide v7, 0x10300000003L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    iput-wide v7, v5, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    goto :goto_0

    :cond_4
    iget-wide v7, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v9, 0x10300000002L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v9

    add-long/2addr v9, v7

    iput-wide v9, v5, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    goto :goto_0

    :cond_5
    invoke-virtual {v2, p0, v3, v4}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    invoke-virtual {p1, v2}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v7

    iget-wide v8, v5, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iput-wide v8, v7, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iget-wide v8, v5, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iput-wide v8, v7, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iget v5, v5, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    iput v5, v7, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    move-object v5, v7

    goto :goto_0

    :cond_6
    if-eqz v6, :cond_7

    iget-object v2, v5, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v2, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    :cond_7
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    return-void
.end method

.method public static loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide v2, 0x10300000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Unable to read event tracker "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "UsageStatsProto"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static loadEvent(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    .locals 7

    const-wide v0, 0x20b00000016L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    new-instance v2, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v2}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-wide v3, 0x10500000011L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-wide v3, 0x10500000010L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-wide v3, 0x1050000000fL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const-wide v3, 0x1050000000eL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    iput v3, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    goto :goto_0

    :pswitch_5
    const-wide v3, 0x1050000000dL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    const-wide v3, 0x1090000000cL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    const-wide v3, 0x1050000000bL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    iput v3, v2, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    goto/16 :goto_0

    :pswitch_8
    const-wide v3, 0x10900000009L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_9
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v4, 0x10b00000008L

    invoke-virtual {v3, p0, v4, v5}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto/16 :goto_0

    :pswitch_a
    const-wide v3, 0x10500000007L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    iput v3, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    goto/16 :goto_0

    :pswitch_b
    const-wide v3, 0x10500000006L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    iput v3, v2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    goto/16 :goto_0

    :pswitch_c
    iget-wide v3, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v5, 0x10300000005L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    add-long/2addr v5, v3

    iput-wide v5, v2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    goto/16 :goto_0

    :pswitch_d
    const-wide v3, 0x10500000004L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_e
    const-wide v3, 0x10900000003L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_f
    const-wide v3, 0x10500000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_10
    const-wide v3, 0x10900000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_11
    iget p2, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v3, 0x5

    if-eq p2, v3, :cond_3

    const/16 v3, 0x8

    const-string v4, ""

    if-eq p2, v3, :cond_2

    const/16 v3, 0xc

    if-eq p2, v3, :cond_1

    const/16 v3, 0x1e

    if-eq p2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, v2, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    if-nez p2, :cond_4

    iput-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object p2, v2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-nez p2, :cond_4

    iput-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p2, v2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-nez p2, :cond_4

    iput-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object p2, v2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-nez p2, :cond_4

    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    iput-object p2, v2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    :cond_4
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    iget-object p0, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz p0, :cond_5

    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p0, v2}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V

    return-void

    :cond_5
    new-instance p0, Ljava/net/ProtocolException;

    const-string/jumbo p1, "no package field present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static loadUsageStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    .locals 11

    const-wide v0, 0x20b00000014L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v4

    const-wide v5, 0x10900000001L

    if-eqz v4, :cond_0

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v4

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/app/usage/UsageStats;

    invoke-direct {v4}, Landroid/app/usage/UsageStats;-><init>()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-wide v7, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v9, 0x1030000000cL

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v9

    add-long/2addr v9, v7

    iput-wide v9, v4, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    goto :goto_0

    :pswitch_1
    const-wide v7, 0x1030000000bL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    iput-wide v7, v4, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    goto :goto_0

    :pswitch_2
    iget-wide v7, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v9, 0x1030000000aL

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v9

    add-long/2addr v9, v7

    iput-wide v9, v4, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    goto :goto_0

    :pswitch_3
    const-wide v7, 0x10300000009L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    iput-wide v7, v4, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    goto :goto_0

    :pswitch_4
    iget-wide v7, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v9, 0x10300000008L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v9

    add-long/2addr v9, v7

    iput-wide v9, v4, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    goto :goto_0

    :pswitch_5
    const-wide v7, 0x20b00000007L

    :try_start_0
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Lcom/android/server/usage/UsageStatsProto;->loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Unable to read chooser counts for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v4, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "UsageStatsProto"

    invoke-static {v9, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_6
    const-wide v7, 0x10500000006L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    iput v7, v4, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    goto/16 :goto_0

    :pswitch_7
    const-wide v7, 0x10500000005L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    iput v7, v4, Landroid/app/usage/UsageStats;->mLastEvent:I

    goto/16 :goto_0

    :pswitch_8
    const-wide v7, 0x10300000004L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    iput-wide v7, v4, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    goto/16 :goto_0

    :pswitch_9
    iget-wide v7, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v9, 0x10300000003L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v9

    add-long/2addr v9, v7

    iput-wide v9, v4, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v7

    iget-wide v8, v4, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iput-wide v8, v7, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iget-wide v8, v4, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iput-wide v8, v7, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iget v8, v4, Landroid/app/usage/UsageStats;->mLastEvent:I

    iput v8, v7, Landroid/app/usage/UsageStats;->mLastEvent:I

    iget v4, v4, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    iput v4, v7, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    :goto_1
    move-object v4, v7

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v7

    iget-wide v8, v4, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iput-wide v8, v7, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iget-wide v8, v4, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iput-wide v8, v7, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iget v8, v4, Landroid/app/usage/UsageStats;->mLastEvent:I

    iput v8, v7, Landroid/app/usage/UsageStats;->mLastEvent:I

    iget v4, v4, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    iput v4, v7, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 10

    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->clear()V

    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    const-string/jumbo v4, "UsageStatsProto"

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-static {v0, p1, p0}, Lcom/android/server/usage/UsageStatsProto;->loadEvent(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Unable to read some events from proto."

    invoke-static {v4, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    :try_start_1
    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsProto;->loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "Unable to read some configuration stats from proto."

    invoke-static {v4, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_2
    :try_start_2
    invoke-static {v0, p1, p0}, Lcom/android/server/usage/UsageStatsProto;->loadUsageStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    const-string/jumbo v2, "Unable to read some usage stats from proto."

    invoke-static {v4, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_3
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-wide v2, 0x10b0000000dL

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-wide v2, 0x10b0000000cL

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-wide v2, 0x10b0000000bL

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-wide v2, 0x10b0000000aL

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_0

    :cond_0
    const-wide v1, 0x10500000004L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    goto :goto_0

    :cond_1
    const-wide v1, 0x10500000003L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    goto/16 :goto_0

    :cond_2
    const-wide v5, 0x10b00000002L

    :try_start_3
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v5

    const-wide v7, 0x10500000001L

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v7

    if-eq v7, v3, :cond_5

    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v7

    if-eq v7, v2, :cond_4

    goto :goto_1

    :cond_4
    const-wide v7, 0x20900000002L

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    move-object p0, v1

    goto/16 :goto_0

    :catch_3
    move-exception p0

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v9, v1

    move-object v1, p0

    move-object p0, v9

    :goto_3
    const-string/jumbo v2, "Unable to read string pool from proto."

    invoke-static {v4, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_6
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v3, 0x10300000001L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    goto/16 :goto_0

    :cond_7
    iget p0, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    if-lt p0, v2, :cond_8

    goto :goto_4

    :cond_8
    iput v2, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 19

    move-object/from16 v1, p1

    const-string/jumbo v2, "UsageStatsProto"

    new-instance v8, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-wide v3, v1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iget-wide v5, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sget v0, Lcom/android/server/usage/UsageStatsProtoV2;->$r8$clinit:I

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    :cond_0
    const-wide v5, 0x10300000001L

    invoke-virtual {v8, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10500000003L

    iget v0, v1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    invoke-virtual {v8, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v0, v1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    const-wide v10, 0x10500000004L

    invoke-virtual {v8, v10, v11, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10b00000002L

    :try_start_0
    invoke-virtual {v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const-wide v5, 0x10500000001L

    invoke-virtual {v8, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    iget-object v6, v1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-wide v13, 0x20900000002L

    invoke-virtual {v8, v13, v14, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "Unable to write string pool to proto."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    :try_start_1
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v3, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v6, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v4, 0x10b0000000aL

    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(IJJLandroid/util/proto/ProtoOutputStream;)V

    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v3, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v6, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v4, 0x10b0000000bL

    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(IJJLandroid/util/proto/ProtoOutputStream;)V

    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v3, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v6, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v4, 0x10b0000000cL

    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(IJJLandroid/util/proto/ProtoOutputStream;)V

    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v3, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v6, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v4, 0x10b0000000dL

    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(IJJLandroid/util/proto/ProtoOutputStream;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v3, "Unable to write some interval stats trackers to proto."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_2

    :try_start_2
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    invoke-static {v8, v1, v0}, Lcom/android/server/usage/UsageStatsProto;->writeUsageStats(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    const-string/jumbo v5, "Unable to write some usage stats to proto."

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v13, :cond_3

    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Configuration;

    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    :try_start_3
    iget-object v3, v1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/app/usage/ConfigurationStats;

    const-wide v3, 0x20b00000015L

    invoke-virtual {v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    iget-object v5, v15, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v6, 0x10b00000001L

    invoke-virtual {v5, v8, v6, v7}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-wide v6, v15, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6

    move-wide v4, v3

    move-object v3, v8

    :try_start_4
    iget-wide v8, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5

    move-wide/from16 v16, v4

    const-wide v4, 0x10300000002L

    move/from16 v18, v13

    move-wide/from16 v12, v16

    :try_start_5
    invoke-static/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v8, v3

    :try_start_6
    iget-wide v3, v15, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    const-wide v5, 0x10300000003L

    invoke-virtual {v8, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget v3, v15, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    invoke-virtual {v8, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10800000005L

    invoke-virtual {v8, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v8, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v8, v3

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v8, v3

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    move/from16 v18, v13

    :goto_7
    const-string/jumbo v3, "Unable to write some configuration stats to proto."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    add-int/lit8 v14, v14, 0x1

    move/from16 v13, v18

    goto :goto_5

    :cond_3
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0}, Landroid/app/usage/EventList;->size()I

    move-result v3

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v3, :cond_4

    :try_start_7
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0, v12}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v0

    invoke-static {v8, v1, v0}, Lcom/android/server/usage/UsageStatsProto;->writeEvent(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_a

    :catch_7
    move-exception v0

    const-string/jumbo v4, "Unable to write some events to proto."

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_4
    invoke-virtual {v8}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public static writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_5

    iget-object v2, v1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, v1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    iget-object v5, v1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    move/from16 v16, v4

    goto :goto_3

    :cond_2
    const-wide v7, 0x20b00000007L

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v9, 0x10900000001L

    invoke-virtual {v0, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v5, :cond_4

    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lez v13, :cond_3

    const-wide v14, 0x20b00000003L

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    invoke-virtual {v0, v9, v10, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move/from16 v16, v4

    const-wide v3, 0x10500000003L

    invoke-virtual {v0, v3, v4, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_2

    :cond_3
    move/from16 v16, v4

    :goto_2
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v16

    goto :goto_1

    :cond_4
    move/from16 v16, v4

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_3
    add-int/lit8 v4, v16, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    return-void
.end method

.method public static writeCountAndTime(IJJLandroid/util/proto/ProtoOutputStream;)V
    .locals 2

    invoke-virtual {p5, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    const-wide v0, 0x10500000001L

    invoke-virtual {p5, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10300000002L

    invoke-virtual {p5, v0, v1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p5, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static writeEvent(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V
    .locals 12

    const-wide v0, 0x20b00000016L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v3, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const-wide v3, 0x10500000002L

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    :cond_0
    const-wide v2, 0x10900000001L

    iget-object v4, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :goto_0
    iget-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    const-wide v3, 0x10500000004L

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_1

    :cond_1
    const-wide v2, 0x10900000003L

    iget-object v4, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_2
    :goto_1
    iget-wide v8, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v10, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v6, 0x10300000005L

    move-object v5, p0

    invoke-static/range {v5 .. v11}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10500000006L

    iget p0, p2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {v5, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000007L

    iget p0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v5, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x1050000000eL

    iget p0, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v5, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object p0, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz p0, :cond_3

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_3

    const-wide v2, 0x1050000000fL

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v5, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_3
    iget-object p0, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz p0, :cond_4

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_4

    const-wide v2, 0x10500000010L

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v5, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_4
    iget p0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v2, 0x5

    if-eq p0, v2, :cond_a

    const/16 v2, 0x8

    if-eq p0, v2, :cond_9

    const/16 v2, 0x1e

    if-eq p0, v2, :cond_8

    const/16 v2, 0xb

    if-eq p0, v2, :cond_7

    const/16 v2, 0xc

    if-eq p0, v2, :cond_5

    goto :goto_2

    :cond_5
    iget-object p0, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz p0, :cond_b

    iget-object p1, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_6

    const-wide p1, 0x1050000000dL

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v5, p1, p2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_2

    :cond_6
    const-wide p0, 0x1090000000cL

    iget-object p2, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {v5, p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_2

    :cond_7
    iget p0, p2, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz p0, :cond_b

    const-wide p1, 0x1050000000bL

    invoke-virtual {v5, p1, p2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_2

    :cond_8
    iget-object p0, p2, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    if-eqz p0, :cond_b

    iget-object p1, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_b

    const-wide p1, 0x10500000011L

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v5, p1, p2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_2

    :cond_9
    iget-object p0, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz p0, :cond_b

    const-wide p1, 0x10900000009L

    invoke-virtual {v5, p1, p2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_2

    :cond_a
    iget-object p0, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p0, :cond_b

    const-wide p1, 0x10b00000008L

    invoke-virtual {p0, v5, p1, p2}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_b
    :goto_2
    invoke-virtual {v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static writeUsageStats(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V
    .locals 10

    const-wide v2, 0x20b00000014L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v3, p2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/lit8 v2, v2, 0x1

    const-wide v3, 0x10500000002L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    :cond_0
    const-wide v2, 0x10900000001L

    iget-object v4, p2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :goto_0
    iget-wide v4, p2, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v2, 0x10300000003L

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10300000004L

    iget-wide v4, p2, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10500000005L

    iget v4, p2, Landroid/app/usage/UsageStats;->mLastEvent:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v4, p2, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v2, 0x10300000008L

    invoke-static/range {v1 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10300000009L

    iget-wide v4, p2, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v4, p2, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v2, 0x1030000000aL

    invoke-static/range {v1 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x1030000000bL

    iget-wide v4, p2, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v4, p2, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v2, 0x1030000000cL

    invoke-static/range {v1 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10500000006L

    iget v0, p2, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :try_start_0
    invoke-static {p0, p2}, Lcom/android/server/usage/UsageStatsProto;->writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to write chooser counts for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UsageStatsProto"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
