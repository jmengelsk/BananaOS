.class public abstract Lcom/android/server/usage/UsageStatsProto;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V
    .registers 16

    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    :cond_b
    const-wide v0, 0x10900000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_30

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    if-nez v4, :cond_36

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iget-object v5, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    :cond_30
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v3

    :cond_36
    :goto_36
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v5

    const-string v6, ""

    const/4 v7, -0x1

    if-eq v5, v7, :cond_89

    const/4 v8, 0x1

    if-eq v5, v8, :cond_7f

    const/4 v9, 0x3

    if-eq v5, v9, :cond_46

    goto :goto_36

    :cond_46
    const-wide v10, 0x20b00000003L

    invoke-virtual {p0, v10, v11}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v10

    const/4 v5, 0x0

    :goto_50
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v12

    if-eq v12, v7, :cond_6a

    if-eq v12, v8, :cond_65

    if-eq v12, v9, :cond_5b

    goto :goto_50

    :cond_5b
    const-wide v12, 0x10500000003L

    invoke-virtual {p0, v12, v13}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    goto :goto_50

    :cond_65
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_50

    :cond_6a
    if-nez v3, :cond_74

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    :cond_74
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7b
    invoke-virtual {p0, v10, v11}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_89

    :cond_7f
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    :cond_89
    :goto_89
    if-nez v2, :cond_90

    iget-object p0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {p0, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_90
    return-void
.end method

.method public static loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 13

    const-wide v0, 0x20b00000015L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    const-wide v3, 0x10b00000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_22

    invoke-virtual {v2, p0, v3, v4}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    invoke-virtual {p1, v2}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v5

    goto :goto_27

    :cond_22
    new-instance v5, Landroid/app/usage/ConfigurationStats;

    invoke-direct {v5}, Landroid/app/usage/ConfigurationStats;-><init>()V

    :goto_27
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_84

    const/4 v8, 0x1

    if-eq v7, v8, :cond_6f

    const/4 v8, 0x2

    if-eq v7, v8, :cond_60

    const/4 v8, 0x3

    if-eq v7, v8, :cond_54

    const/4 v8, 0x4

    if-eq v7, v8, :cond_48

    const/4 v8, 0x5

    if-eq v7, v8, :cond_3e

    goto :goto_27

    :cond_3e
    const-wide v6, 0x10800000005L

    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v6

    goto :goto_27

    :cond_48
    const-wide v7, 0x10500000004L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    iput v7, v5, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    goto :goto_27

    :cond_54
    const-wide v7, 0x10300000003L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    iput-wide v7, v5, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    goto :goto_27

    :cond_60
    iget-wide v7, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v9, 0x10300000002L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v9

    add-long/2addr v9, v7

    iput-wide v9, v5, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    goto :goto_27

    :cond_6f
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

    goto :goto_27

    :cond_84
    if-eqz v6, :cond_8a

    iget-object v2, v5, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v2, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    :cond_8a
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    return-void
.end method

.method public static loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V
    .registers 8

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    :goto_4
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2c

    const/4 v3, 0x1

    if-eq v2, v3, :cond_20

    const/4 v3, 0x2

    if-eq v2, v3, :cond_12

    goto :goto_4

    :cond_12
    const-wide v2, 0x10300000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    goto :goto_4

    :catch_1e
    move-exception p0

    goto :goto_30

    :cond_20
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    goto :goto_4

    :cond_2c
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2f} :catch_1e

    return-void

    :goto_30
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
    .registers 10

    const-wide v0, 0x20b00000016L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    new-instance v2, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v2}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    :goto_e
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    packed-switch v3, :pswitch_data_186

    :pswitch_15  #0x0, 0xa
    goto :goto_e

    :pswitch_16  #0x11
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

    goto :goto_e

    :pswitch_2e  #0x10
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

    goto :goto_e

    :pswitch_46  #0xf
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

    goto :goto_e

    :pswitch_5e  #0xe
    const-wide v3, 0x1050000000eL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    iput v3, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    goto :goto_e

    :pswitch_6a  #0xd
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

    goto :goto_e

    :pswitch_82  #0xc
    const-wide v3, 0x1090000000cL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_e

    :pswitch_8e  #0xb
    const-wide v3, 0x1050000000bL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    iput v3, v2, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    goto/16 :goto_e

    :pswitch_9b  #0x9
    const-wide v3, 0x10900000009L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto/16 :goto_e

    :pswitch_ac  #0x8
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v4, 0x10b00000008L

    invoke-virtual {v3, p0, v4, v5}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto/16 :goto_e

    :pswitch_bd  #0x7
    const-wide v3, 0x10500000007L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    iput v3, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    goto/16 :goto_e

    :pswitch_ca  #0x6
    const-wide v3, 0x10500000006L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    iput v3, v2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    goto/16 :goto_e

    :pswitch_d7  #0x5
    iget-wide v3, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v5, 0x10300000005L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    add-long/2addr v5, v3

    iput-wide v5, v2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    goto/16 :goto_e

    :pswitch_e7  #0x4
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

    goto/16 :goto_e

    :pswitch_100  #0x3
    const-wide v3, 0x10900000003L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    goto/16 :goto_e

    :pswitch_111  #0x2
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

    goto/16 :goto_e

    :pswitch_12a  #0x1
    const-wide v3, 0x10900000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    goto/16 :goto_e

    :pswitch_13b  #0xffffffff
    iget p2, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v3, 0x5

    if-eq p2, v3, :cond_164

    const/16 v3, 0x8

    const-string v4, ""

    if-eq p2, v3, :cond_15d

    const/16 v3, 0xc

    if-eq p2, v3, :cond_156

    const/16 v3, 0x1e

    if-eq p2, v3, :cond_14f

    goto :goto_16f

    :cond_14f
    iget-object p2, v2, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    if-nez p2, :cond_16f

    iput-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    goto :goto_16f

    :cond_156
    iget-object p2, v2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-nez p2, :cond_16f

    iput-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_16f

    :cond_15d
    iget-object p2, v2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-nez p2, :cond_16f

    iput-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_16f

    :cond_164
    iget-object p2, v2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-nez p2, :cond_16f

    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    iput-object p2, v2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    :cond_16f
    :goto_16f
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    iget-object p0, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz p0, :cond_17c

    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p0, v2}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V

    return-void

    :cond_17c
    new-instance p0, Ljava/net/ProtocolException;

    const-string/jumbo p1, "no package field present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_186
    .packed-switch -0x1
        :pswitch_13b  #ffffffff
        :pswitch_15  #00000000
        :pswitch_12a  #00000001
        :pswitch_111  #00000002
        :pswitch_100  #00000003
        :pswitch_e7  #00000004
        :pswitch_d7  #00000005
        :pswitch_ca  #00000006
        :pswitch_bd  #00000007
        :pswitch_ac  #00000008
        :pswitch_9b  #00000009
        :pswitch_15  #0000000a
        :pswitch_8e  #0000000b
        :pswitch_82  #0000000c
        :pswitch_6a  #0000000d
        :pswitch_5e  #0000000e
        :pswitch_46  #0000000f
        :pswitch_2e  #00000010
        :pswitch_16  #00000011
    .end packed-switch
.end method

.method public static loadUsageStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    .registers 14

    const-wide v0, 0x20b00000014L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v4

    const-wide v5, 0x10900000001L

    if-eqz v4, :cond_2a

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v4

    goto :goto_3e

    :cond_2a
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v4

    goto :goto_3e

    :cond_39
    new-instance v4, Landroid/app/usage/UsageStats;

    invoke-direct {v4}, Landroid/app/usage/UsageStats;-><init>()V

    :goto_3e
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_12e

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v7

    packed-switch v7, :pswitch_data_132

    goto :goto_3e

    :pswitch_4d  #0xc
    iget-wide v7, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v9, 0x1030000000cL

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v9

    add-long/2addr v9, v7

    iput-wide v9, v4, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    goto :goto_3e

    :pswitch_5c  #0xb
    const-wide v7, 0x1030000000bL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    iput-wide v7, v4, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    goto :goto_3e

    :pswitch_68  #0xa
    iget-wide v7, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v9, 0x1030000000aL

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v9

    add-long/2addr v9, v7

    iput-wide v9, v4, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    goto :goto_3e

    :pswitch_77  #0x9
    const-wide v7, 0x10300000009L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    iput-wide v7, v4, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    goto :goto_3e

    :pswitch_83  #0x8
    iget-wide v7, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v9, 0x10300000008L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v9

    add-long/2addr v9, v7

    iput-wide v9, v4, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    goto :goto_3e

    :pswitch_92  #0x7
    const-wide v7, 0x20b00000007L

    :try_start_97
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Lcom/android/server/usage/UsageStatsProto;->loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_a1} :catch_a2

    goto :goto_3e

    :catch_a2
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

    goto :goto_3e

    :pswitch_bb  #0x6
    const-wide v7, 0x10500000006L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    iput v7, v4, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    goto/16 :goto_3e

    :pswitch_c8  #0x5
    const-wide v7, 0x10500000005L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    iput v7, v4, Landroid/app/usage/UsageStats;->mLastEvent:I

    goto/16 :goto_3e

    :pswitch_d5  #0x4
    const-wide v7, 0x10300000004L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    iput-wide v7, v4, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    goto/16 :goto_3e

    :pswitch_e2  #0x3
    iget-wide v7, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v9, 0x10300000003L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v9

    add-long/2addr v9, v7

    iput-wide v9, v4, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    goto/16 :goto_3e

    :pswitch_f2  #0x2
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

    :goto_112
    move-object v4, v7

    goto/16 :goto_3e

    :pswitch_115  #0x1
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

    goto :goto_112

    :cond_12e
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    return-void

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_115  #00000001
        :pswitch_f2  #00000002
        :pswitch_e2  #00000003
        :pswitch_d5  #00000004
        :pswitch_c8  #00000005
        :pswitch_bb  #00000006
        :pswitch_92  #00000007
        :pswitch_83  #00000008
        :pswitch_77  #00000009
        :pswitch_68  #0000000a
        :pswitch_5c  #0000000b
        :pswitch_4d  #0000000c
    .end packed-switch
.end method

.method public static read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 12

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

    :goto_17
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_102

    if-eq v1, v2, :cond_f2

    const/4 v2, 0x2

    const-string/jumbo v4, "UsageStatsProto"

    if-eq v1, v2, :cond_9d

    const/4 v2, 0x3

    if-eq v1, v2, :cond_90

    const/4 v2, 0x4

    if-eq v1, v2, :cond_84

    packed-switch v1, :pswitch_data_10a

    packed-switch v1, :pswitch_data_116

    goto :goto_17

    :pswitch_34  #0x16
    :try_start_34
    invoke-static {v0, p1, p0}, Lcom/android/server/usage/UsageStatsProto;->loadEvent(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_17

    :catch_38
    move-exception v1

    const-string/jumbo v2, "Unable to read some events from proto."

    invoke-static {v4, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :pswitch_40  #0x15
    :try_start_40
    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsProto;->loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_17

    :catch_44
    move-exception v1

    const-string/jumbo v2, "Unable to read some configuration stats from proto."

    invoke-static {v4, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :pswitch_4c  #0x14
    :try_start_4c
    invoke-static {v0, p1, p0}, Lcom/android/server/usage/UsageStatsProto;->loadUsageStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_17

    :catch_50
    move-exception v1

    const-string/jumbo v2, "Unable to read some usage stats from proto."

    invoke-static {v4, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :pswitch_58  #0xd
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-wide v2, 0x10b0000000dL

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_17

    :pswitch_63  #0xc
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-wide v2, 0x10b0000000cL

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_17

    :pswitch_6e  #0xb
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-wide v2, 0x10b0000000bL

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_17

    :pswitch_79  #0xa
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-wide v2, 0x10b0000000aL

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_17

    :cond_84
    const-wide v1, 0x10500000004L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    goto :goto_17

    :cond_90
    const-wide v1, 0x10500000003L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    goto/16 :goto_17

    :cond_9d
    const-wide v5, 0x10b00000002L

    :try_start_a2
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v5

    const-wide v7, 0x10500000001L

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v1

    if-eqz v1, :cond_bb

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_c0

    :cond_bb
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_c0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v7

    if-eq v7, v3, :cond_da

    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v7

    if-eq v7, v2, :cond_cd

    goto :goto_c0

    :cond_cd
    const-wide v7, 0x20900000002L

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c0

    :cond_da
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_dd} :catch_e7

    :try_start_dd
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e2} :catch_e5

    :goto_e2
    move-object p0, v1

    goto/16 :goto_17

    :catch_e5
    move-exception p0

    goto :goto_eb

    :catch_e7
    move-exception v1

    move-object v9, v1

    move-object v1, p0

    move-object p0, v9

    :goto_eb
    const-string/jumbo v2, "Unable to read string pool from proto."

    invoke-static {v4, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e2

    :cond_f2
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v3, 0x10300000001L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    goto/16 :goto_17

    :cond_102
    iget p0, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    if-lt p0, v2, :cond_107

    goto :goto_109

    :cond_107
    iput v2, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    :goto_109
    return-void

    :pswitch_data_10a
    .packed-switch 0xa
        :pswitch_79  #0000000a
        :pswitch_6e  #0000000b
        :pswitch_63  #0000000c
        :pswitch_58  #0000000d
    .end packed-switch

    :pswitch_data_116
    .packed-switch 0x14
        :pswitch_4c  #00000014
        :pswitch_40  #00000015
        :pswitch_34  #00000016
    .end packed-switch
.end method

.method public static write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 21

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

    if-nez v0, :cond_1c

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    :cond_1c
    const-wide v5, 0x10300000001L

    invoke-virtual {v8, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10500000003L

    iget v0, v1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    invoke-virtual {v8, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v0, v1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    const-wide v10, 0x10500000004L

    invoke-virtual {v8, v10, v11, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10b00000002L

    :try_start_3d
    invoke-virtual {v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const-wide v5, 0x10500000001L

    invoke-virtual {v8, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v5, 0x0

    :goto_50
    if-ge v5, v0, :cond_65

    iget-object v6, v1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-wide v13, 0x20900000002L

    invoke-virtual {v8, v13, v14, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    :cond_65
    invoke-virtual {v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_68
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3d .. :try_end_68} :catch_69

    goto :goto_70

    :catch_69
    move-exception v0

    const-string/jumbo v3, "Unable to write string pool to proto."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_70
    :try_start_70
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
    :try_end_a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_70 .. :try_end_a8} :catch_a9

    goto :goto_b0

    :catch_a9
    move-exception v0

    const-string/jumbo v3, "Unable to write some interval stats trackers to proto."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b0
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_b7
    if-ge v4, v3, :cond_cf

    :try_start_b9
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    invoke-static {v8, v1, v0}, Lcom/android/server/usage/UsageStatsProto;->writeUsageStats(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V
    :try_end_c4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b9 .. :try_end_c4} :catch_c5

    goto :goto_cc

    :catch_c5
    move-exception v0

    const-string/jumbo v5, "Unable to write some usage stats to proto."

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_cc
    add-int/lit8 v4, v4, 0x1

    goto :goto_b7

    :cond_cf
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_d6
    if-ge v14, v13, :cond_148

    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Configuration;

    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    :try_start_e6
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
    :try_end_104
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e6 .. :try_end_104} :catch_13a

    move-wide v4, v3

    move-object v3, v8

    :try_start_106
    iget-wide v8, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J
    :try_end_108
    .catch Ljava/lang/IllegalArgumentException; {:try_start_106 .. :try_end_108} :catch_137

    move-wide/from16 v16, v4

    const-wide v4, 0x10300000002L

    move/from16 v18, v13

    move-wide/from16 v12, v16

    :try_start_113
    invoke-static/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V
    :try_end_116
    .catch Ljava/lang/IllegalArgumentException; {:try_start_113 .. :try_end_116} :catch_134

    move-object v8, v3

    :try_start_117
    iget-wide v3, v15, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    const-wide v5, 0x10300000003L

    invoke-virtual {v8, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget v3, v15, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    invoke-virtual {v8, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10800000005L

    invoke-virtual {v8, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v8, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_131
    .catch Ljava/lang/IllegalArgumentException; {:try_start_117 .. :try_end_131} :catch_132

    goto :goto_143

    :catch_132
    move-exception v0

    goto :goto_13d

    :catch_134
    move-exception v0

    move-object v8, v3

    goto :goto_13d

    :catch_137
    move-exception v0

    move-object v8, v3

    goto :goto_13b

    :catch_13a
    move-exception v0

    :goto_13b
    move/from16 v18, v13

    :goto_13d
    const-string/jumbo v3, "Unable to write some configuration stats to proto."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_143
    add-int/lit8 v14, v14, 0x1

    move/from16 v13, v18

    goto :goto_d6

    :cond_148
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0}, Landroid/app/usage/EventList;->size()I

    move-result v3

    const/4 v12, 0x0

    :goto_14f
    if-ge v12, v3, :cond_165

    :try_start_151
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0, v12}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v0

    invoke-static {v8, v1, v0}, Lcom/android/server/usage/UsageStatsProto;->writeEvent(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V
    :try_end_15a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_151 .. :try_end_15a} :catch_15b

    goto :goto_162

    :catch_15b
    move-exception v0

    const-string/jumbo v4, "Unable to write some events to proto."

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_162
    add-int/lit8 v12, v12, 0x1

    goto :goto_14f

    :cond_165
    invoke-virtual {v8}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public static writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_8f

    iget-object v2, v1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v2, :cond_8f

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    goto/16 :goto_8f

    :cond_16
    iget-object v2, v1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v2, :cond_8f

    iget-object v5, v1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    if-eqz v5, :cond_39

    if-eqz v6, :cond_39

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3c

    :cond_39
    move/from16 v16, v4

    goto :goto_8c

    :cond_3c
    const-wide v7, 0x20b00000007L

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v9, 0x10900000001L

    invoke-virtual {v0, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v11, 0x0

    :goto_52
    if-ge v11, v5, :cond_87

    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lez v13, :cond_80

    const-wide v14, 0x20b00000003L

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    invoke-virtual {v0, v9, v10, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move/from16 v16, v4

    const-wide v3, 0x10500000003L

    invoke-virtual {v0, v3, v4, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_82

    :cond_80
    move/from16 v16, v4

    :goto_82
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v16

    goto :goto_52

    :cond_87
    move/from16 v16, v4

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_8c
    add-int/lit8 v4, v16, 0x1

    goto :goto_1d

    :cond_8f
    :goto_8f
    return-void
.end method

.method public static writeCountAndTime(IJJLandroid/util/proto/ProtoOutputStream;)V
    .registers 8

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
    .registers 15

    const-wide v0, 0x20b00000016L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v3, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1e

    const-wide v3, 0x10500000002L

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_28

    :cond_1e
    const-wide v2, 0x10900000001L

    iget-object v4, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :goto_28
    iget-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v2, :cond_49

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_3f

    const-wide v3, 0x10500000004L

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_49

    :cond_3f
    const-wide v2, 0x10900000003L

    iget-object v4, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_49
    :goto_49
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

    if-eqz p0, :cond_8a

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_8a

    const-wide v2, 0x1050000000fL

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v5, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_8a
    iget-object p0, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz p0, :cond_a0

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_a0

    const-wide v2, 0x10500000010L

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v5, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_a0
    iget p0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v2, 0x5

    if-eq p0, v2, :cond_109

    const/16 v2, 0x8

    if-eq p0, v2, :cond_fc

    const/16 v2, 0x1e

    if-eq p0, v2, :cond_e5

    const/16 v2, 0xb

    if-eq p0, v2, :cond_d8

    const/16 v2, 0xc

    if-eq p0, v2, :cond_b6

    goto :goto_115

    :cond_b6
    iget-object p0, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz p0, :cond_115

    iget-object p1, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_cd

    const-wide p1, 0x1050000000dL

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v5, p1, p2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_115

    :cond_cd
    const-wide p0, 0x1090000000cL

    iget-object p2, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {v5, p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_115

    :cond_d8
    iget p0, p2, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz p0, :cond_115

    const-wide p1, 0x1050000000bL

    invoke-virtual {v5, p1, p2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_115

    :cond_e5
    iget-object p0, p2, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    if-eqz p0, :cond_115

    iget-object p1, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_115

    const-wide p1, 0x10500000011L

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v5, p1, p2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_115

    :cond_fc
    iget-object p0, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz p0, :cond_115

    const-wide p1, 0x10900000009L

    invoke-virtual {v5, p1, p2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_115

    :cond_109
    iget-object p0, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p0, :cond_115

    const-wide p1, 0x10b00000008L

    invoke-virtual {p0, v5, p1, p2}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_115
    :goto_115
    invoke-virtual {v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static writeUsageStats(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V
    .registers 13

    const-wide v2, 0x20b00000014L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v3, p2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1e

    add-int/lit8 v2, v2, 0x1

    const-wide v3, 0x10500000002L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_28

    :cond_1e
    const-wide v2, 0x10900000001L

    iget-object v4, p2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :goto_28
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

    :try_start_8b
    invoke-static {p0, p2}, Lcom/android/server/usage/UsageStatsProto;->writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    :try_end_8e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_a7

    :catch_8f
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

    :goto_a7
    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
