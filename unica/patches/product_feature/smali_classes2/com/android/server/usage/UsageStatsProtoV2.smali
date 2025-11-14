.class public abstract Lcom/android/server/usage/UsageStatsProtoV2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final ONE_HOUR_MS:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/usage/UsageStatsProtoV2;->ONE_HOUR_MS:J

    return-void
.end method

.method public static loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V
    .locals 12

    const-wide v0, 0x10500000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v3

    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    if-nez v4, :cond_1

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iget-object v5, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_8

    if-eq v2, v3, :cond_7

    const/4 v6, 0x2

    if-eq v2, v6, :cond_2

    goto :goto_0

    :cond_2
    const-wide v7, 0x20b00000002L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v7

    const/4 v2, 0x0

    move v9, v5

    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v10

    if-eq v10, v5, :cond_5

    if-eq v10, v3, :cond_4

    if-eq v10, v6, :cond_3

    goto :goto_1

    :cond_3
    const-wide v10, 0x10500000002L

    invoke-virtual {p0, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v9

    sub-int/2addr v9, v3

    goto :goto_1

    :cond_5
    if-eq v9, v5, :cond_6

    invoke-virtual {v4, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_6
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v3

    iget-object v5, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_8
    return-void
.end method

.method public static loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 10

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    new-instance v1, Landroid/app/usage/ConfigurationStats;

    invoke-direct {v1}, Landroid/app/usage/ConfigurationStats;-><init>()V

    const-wide v2, 0x10b00000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v0, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_6

    const/4 v6, 0x1

    if-eq v4, v6, :cond_5

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_3

    const/4 v6, 0x4

    if-eq v4, v6, :cond_2

    const/4 v6, 0x5

    if-eq v4, v6, :cond_1

    goto :goto_0

    :cond_1
    const-wide v4, 0x10800000005L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v4

    move v5, v4

    goto :goto_0

    :cond_2
    const-wide v6, 0x10500000004L

    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    iput v4, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    goto :goto_0

    :cond_3
    const-wide v6, 0x10300000003L

    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, v1, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    goto :goto_0

    :cond_4
    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v8, 0x10300000002L

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v8

    add-long/2addr v8, v6

    iput-wide v8, v1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    goto :goto_0

    :cond_5
    invoke-virtual {v0, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v4

    iget-wide v6, v1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iput-wide v6, v4, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iget-wide v6, v1, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iput-wide v6, v4, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iget v1, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    iput v1, v4, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    move-object v1, v4

    goto :goto_0

    :cond_6
    if-eqz v5, :cond_7

    iget-object p0, v1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object p0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    :cond_7
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

    const-string/jumbo p2, "UsageStatsProtoV2"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static parseEvent(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageEvents$Event;
    .locals 12

    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const-wide v2, 0x10500000001L

    const-wide v4, 0x10500000002L

    const/4 v6, -0x1

    const/4 v7, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-wide v8, 0x10b0000000eL

    :try_start_0
    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v8

    new-instance v1, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    invoke-direct {v1}, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;-><init>()V

    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v10

    if-eq v10, v6, :cond_2

    if-eq v10, v7, :cond_1

    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v10

    sub-int/2addr v10, v7

    iput v10, v1, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mActionToken:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v10

    sub-int/2addr v10, v7

    iput v10, v1, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mCategoryToken:I

    goto :goto_1

    :cond_2
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mUserInteractionExtrasToken:Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "UsageStatsProtoV2"

    const-string/jumbo v3, "Unable to read some user interaction extras from proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_2
    const-wide v1, 0x1050000000dL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v7

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    goto :goto_0

    :pswitch_3
    const-wide v1, 0x1050000000cL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v7

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    goto :goto_0

    :pswitch_4
    const-wide v1, 0x1050000000bL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v7

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    goto :goto_0

    :pswitch_5
    const-wide v1, 0x1050000000aL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    goto/16 :goto_0

    :pswitch_6
    const-wide v1, 0x10500000009L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v7

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    goto/16 :goto_0

    :pswitch_7
    const-wide v1, 0x10500000008L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    goto/16 :goto_0

    :pswitch_8
    const-wide v1, 0x10500000007L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v7

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    goto/16 :goto_0

    :pswitch_9
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto/16 :goto_0

    :pswitch_a
    const-wide v1, 0x10500000005L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    goto/16 :goto_0

    :pswitch_b
    const-wide v1, 0x10500000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    goto/16 :goto_0

    :pswitch_c
    const-wide v1, 0x10300000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v7

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v7

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    goto/16 :goto_0

    :pswitch_f
    iget p0, v0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    if-ne p0, v6, :cond_3

    const/4 v0, 0x0

    :cond_3
    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
    .end packed-switch
.end method

.method public static parsePendingEvent(Landroid/util/proto/ProtoInputStream;)Landroid/app/usage/UsageEvents$Event;
    .locals 4

    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-wide v2, 0x10c0000000eL

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    goto :goto_0

    :pswitch_2
    const-wide v1, 0x1090000000cL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-wide v1, 0x1090000000bL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const-wide v1, 0x1050000000aL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    goto :goto_0

    :pswitch_5
    const-wide v1, 0x10900000009L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    const-wide v1, 0x10500000008L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    goto :goto_0

    :pswitch_7
    const-wide v1, 0x10900000007L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto :goto_0

    :pswitch_9
    const-wide v1, 0x10500000005L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    goto/16 :goto_0

    :pswitch_a
    const-wide v1, 0x10500000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    goto/16 :goto_0

    :pswitch_b
    const-wide v1, 0x10300000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    goto/16 :goto_0

    :pswitch_c
    const-wide v1, 0x10900000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_d
    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_e
    iget p0, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x5

    if-eq p0, v1, :cond_2

    const/16 v1, 0x8

    const-string v2, ""

    if-eq p0, v1, :cond_1

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-nez p0, :cond_3

    iput-object v2, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-nez p0, :cond_3

    iput-object v2, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-nez p0, :cond_3

    new-instance p0, Landroid/content/res/Configuration;

    invoke-direct {p0}, Landroid/content/res/Configuration;-><init>()V

    iput-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    :cond_3
    :goto_1
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseUsageStats(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageStats;
    .locals 5

    new-instance v0, Landroid/app/usage/UsageStats;

    invoke-direct {v0}, Landroid/app/usage/UsageStats;-><init>()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide v1, 0x1030000000cL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    goto :goto_0

    :pswitch_1
    const-wide v1, 0x1030000000bL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    goto :goto_0

    :pswitch_2
    const-wide v1, 0x1030000000aL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    goto :goto_0

    :pswitch_3
    const-wide v1, 0x10300000009L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    goto :goto_0

    :pswitch_4
    const-wide v1, 0x10300000008L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    goto :goto_0

    :pswitch_5
    const-wide v1, 0x20b00000007L

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    invoke-static {p0, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to read chooser counts for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/app/usage/UsageStats;->mPackageToken:I

    const-string/jumbo v3, "UsageStatsProtoV2"

    invoke-static {v1, v2, v3}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-wide v1, 0x10500000006L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    goto :goto_0

    :cond_0
    const-wide v1, 0x10300000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    goto/16 :goto_0

    :cond_1
    const-wide v1, 0x10300000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    goto/16 :goto_0

    :cond_2
    const-wide v3, 0x10500000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/app/usage/UsageStats;->mPackageToken:I

    goto/16 :goto_0

    :cond_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;Z)V
    .locals 7

    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_5

    const/4 v2, 0x1

    if-eq p0, v2, :cond_4

    const/4 v2, 0x2

    if-eq p0, v2, :cond_3

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v2, "UsageStatsProtoV2"

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-wide v3, 0x20b00000016L

    :try_start_0
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v0, v5, v6}, Lcom/android/server/usage/UsageStatsProtoV2;->parseEvent(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageEvents$Event;

    move-result-object p0

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    if-eqz p0, :cond_0

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1, p0}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo v1, "Unable to read some events from proto."

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    const-wide v3, 0x20b00000015L

    :try_start_1
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsProtoV2;->loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string/jumbo v1, "Unable to read some configuration stats from proto."

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_2
    const-wide v3, 0x20b00000014L

    :try_start_2
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v0, v5, v6}, Lcom/android/server/usage/UsageStatsProtoV2;->parseUsageStats(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageStats;

    move-result-object p0

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    iget v3, p0, Landroid/app/usage/UsageStats;->mPackageToken:I

    if-eq v3, v1, :cond_0

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p0

    const-string/jumbo v1, "Unable to read some usage stats from proto."

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_3
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-wide v1, 0x10b0000000dL

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-wide v1, 0x10b0000000cL

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-wide v1, 0x10b0000000bL

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-wide v1, 0x10b0000000aL

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto/16 :goto_0

    :cond_2
    const-wide v1, 0x10500000003L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    goto/16 :goto_0

    :cond_3
    const-wide v1, 0x10500000002L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    goto/16 :goto_0

    :cond_4
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v3, 0x10300000001L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    goto/16 :goto_0

    :cond_5
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p0, :cond_6

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    return-void

    nop

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

.method public static readGlobalComponentUsage(Ljava/io/InputStream;Ljava/util/Map;)V
    .locals 10

    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_5

    const/16 v2, 0x18

    if-eq p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const-wide v2, 0x20b00000018L

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    const-string p0, ""

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_1
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v8

    if-eq v8, v1, :cond_4

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    goto :goto_1

    :cond_2
    const-wide v6, 0x10300000002L

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    goto :goto_1

    :cond_3
    const-wide v8, 0x10900000001L

    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    new-instance v1, Landroid/util/Pair;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v1, p0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    iget-object p0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    iget-object p0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    move-object v2, p1

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo v1, "UsageStatsProtoV2"

    const-string/jumbo v2, "Unable to parse some package usage from proto."

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static readObfuscatedData(Ljava/io/InputStream;Lcom/android/server/usage/PackagesTokenData;)V
    .locals 12

    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_6

    const-wide v2, 0x10500000001L

    const/4 v4, 0x1

    if-eq p0, v4, :cond_5

    const/4 v5, 0x2

    if-eq p0, v5, :cond_0

    goto :goto_0

    :cond_0
    const-wide v6, 0x20b00000002L

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    iget-object p0, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v9, v1

    :goto_1
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v10

    if-eq v10, v1, :cond_3

    if-eq v10, v4, :cond_2

    if-eq v10, v5, :cond_1

    goto :goto_1

    :cond_1
    const-wide v10, 0x20900000002L

    invoke-virtual {v0, v10, v11}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v9

    sub-int/2addr v9, v4

    goto :goto_1

    :cond_3
    if-eq v9, v1, :cond_4

    invoke-virtual {p0, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p1, Lcom/android/server/usage/PackagesTokenData;->counter:I

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 14

    const-string/jumbo v1, "UsageStatsProtoV2"

    new-instance v7, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v7, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    :cond_0
    const-wide v4, 0x10300000001L

    invoke-virtual {v7, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10500000002L

    iget p0, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    invoke-virtual {v7, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000003L

    iget p0, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    invoke-virtual {v7, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :try_start_0
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v2, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v5, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v3, 0x10b0000000aL

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(IJJLandroid/util/proto/ProtoOutputStream;)V

    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v2, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v5, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v3, 0x10b0000000bL

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(IJJLandroid/util/proto/ProtoOutputStream;)V

    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v2, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v5, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v3, 0x10b0000000cL

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(IJJLandroid/util/proto/ProtoOutputStream;)V

    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v2, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v5, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v3, 0x10b0000000dL

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(IJJLandroid/util/proto/ProtoOutputStream;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo v0, "Unable to write some interval stats trackers to proto."

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v9, 0x0

    move v2, v9

    :goto_1
    if-ge v2, p0, :cond_1

    const-wide v3, 0x20b00000014L

    :try_start_1
    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    invoke-static {v7, v5, v6, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageStats;)V

    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v3, "Unable to write some usage stats to proto."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    move v10, v9

    :goto_3
    if-ge v10, p0, :cond_2

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    const-wide v2, 0x20b00000015L

    :try_start_2
    invoke-virtual {v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v7

    :try_start_3
    iget-wide v7, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/app/usage/ConfigurationStats;

    iget-object v3, v13, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v4, 0x10b00000001L

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-wide v5, v13, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    const-wide v3, 0x10300000002L

    invoke-static/range {v2 .. v8}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v7, v2

    :try_start_4
    iget-wide v2, v13, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    const-wide v4, 0x10300000003L

    invoke-virtual {v7, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget v2, v13, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    const-wide v3, 0x10500000004L

    invoke-virtual {v7, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10800000005L

    invoke-virtual {v7, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v7, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v7, v2

    :goto_4
    const-string/jumbo v2, "Unable to write some configuration stats to proto."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_2
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p0}, Landroid/app/usage/EventList;->size()I

    move-result p0

    :goto_6
    if-ge v9, p0, :cond_3

    const-wide v2, 0x20b00000016L

    :try_start_5
    invoke-virtual {v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0, v9}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v0

    invoke-static {v7, v4, v5, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->writeEvent(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageEvents$Event;)V

    invoke-virtual {v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    const-string/jumbo v2, "Unable to write some events to proto."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_3
    invoke-virtual {v7}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public static writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_5

    iget-object v2, v1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, v1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    iget-object v5, v1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v6, v1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseIntArray;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    move/from16 v16, v4

    goto :goto_3

    :cond_2
    const-wide v7, 0x20b00000007L

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    add-int/lit8 v5, v5, 0x1

    const-wide v9, 0x10500000001L

    invoke-virtual {v0, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v5, :cond_4

    invoke-virtual {v6, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v6, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    if-gtz v13, :cond_3

    move/from16 v16, v4

    goto :goto_2

    :cond_3
    const-wide v14, 0x20b00000002L

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v0, v9, v10, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move/from16 v16, v4

    const-wide v3, 0x10500000002L

    invoke-virtual {v0, v3, v4, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

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

.method public static writeEvent(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageEvents$Event;)V
    .locals 13

    move-object/from16 v7, p3

    iget v1, v7, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    add-int/lit8 v1, v1, 0x1

    const-wide v8, 0x10500000001L

    invoke-virtual {p0, v8, v9, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v1, v7, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    const-wide v10, 0x10500000002L

    const/4 v12, -0x1

    if-eq v1, v12, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v10, v11, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_0
    const-wide v1, 0x10300000003L

    iget-wide v3, v7, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    move-object v0, p0

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v1, 0x10500000004L

    iget v3, v7, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000005L

    iget v3, v7, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x1050000000aL

    iget v3, v7, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v1, v7, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    if-eq v1, v12, :cond_1

    const-wide v2, 0x1050000000bL

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_1
    iget v1, v7, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    if-eq v1, v12, :cond_2

    const-wide v2, 0x1050000000cL

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_2
    iget v1, v7, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_8

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_7

    const/4 v2, 0x7

    if-eq v1, v2, :cond_6

    const/16 v2, 0x8

    if-eq v1, v2, :cond_5

    const/16 v2, 0xb

    if-eq v1, v2, :cond_4

    const/16 v2, 0xc

    if-eq v1, v2, :cond_3

    goto :goto_0

    :cond_3
    iget v1, v7, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    if-eq v1, v12, :cond_9

    const-wide v2, 0x10500000009L

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void

    :cond_4
    iget v1, v7, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz v1, :cond_9

    const-wide v2, 0x10500000008L

    invoke-virtual {p0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void

    :cond_5
    iget v1, v7, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    if-eq v1, v12, :cond_9

    const-wide v2, 0x10500000007L

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void

    :cond_6
    iget-object v1, v7, Landroid/app/usage/UsageEvents$Event;->mUserInteractionExtrasToken:Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    if-eqz v1, :cond_9

    const-wide v2, 0x10b0000000eL

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget v4, v1, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mCategoryToken:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v1, v1, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mActionToken:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v10, v11, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :cond_7
    iget v1, v7, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    if-eq v1, v12, :cond_9

    const-wide v2, 0x1050000000dL

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void

    :cond_8
    iget-object v1, v7, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_9

    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_9
    :goto_0
    return-void
.end method

.method public static writeGlobalComponentUsage(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 8

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Map$Entry;

    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p0, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    const-wide v2, 0x20b00000018L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    aget-object v4, p0, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-wide v5, 0x10900000001L

    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    aget-object v4, p0, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide v6, 0x10300000002L

    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static writeObfuscatedData(Ljava/io/OutputStream;Lcom/android/server/usage/PackagesTokenData;)V
    .locals 13

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget p0, p1, Lcom/android/server/usage/PackagesTokenData;->counter:I

    const-wide v1, 0x10500000001L

    invoke-virtual {v0, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object p0, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p0, :cond_1

    const-wide v5, 0x20b00000002L

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    iget-object v7, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v1, v2, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v7, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-wide v11, 0x20900000002L

    invoke-virtual {v0, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public static writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .locals 2

    sget-wide v0, Lcom/android/server/usage/UsageStatsProtoV2;->ONE_HOUR_MS:J

    sub-long v0, p5, v0

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    sub-long/2addr p3, p5

    const-wide/16 p5, 0x0

    cmp-long p5, p3, p5

    if-nez p5, :cond_0

    const-wide/16 p5, 0x1

    add-long/2addr p3, p5

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_1
    return-void
.end method

.method public static writePendingEvent(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageEvents$Event;)V
    .locals 4

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-wide v1, 0x10900000002L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_0
    const-wide v0, 0x10300000003L

    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10500000004L

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000005L

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x1050000000aL

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-wide v1, 0x1090000000bL

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_1
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-wide v1, 0x1090000000cL

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_2
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz p1, :cond_8

    const-wide v0, 0x10900000009L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void

    :cond_4
    iget p1, p1, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz p1, :cond_8

    const-wide v0, 0x10500000008L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void

    :cond_5
    iget-object p1, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz p1, :cond_8

    const-wide v0, 0x10900000007L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void

    :cond_6
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->size()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p1, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-wide v0, 0x10c0000000eL

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    return-void

    :cond_7
    iget-object p1, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p1, :cond_8

    const-wide v0, 0x10b00000006L

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_8
    :goto_0
    return-void
.end method

.method public static writePendingEvents(Ljava/io/OutputStream;Ljava/util/LinkedList;)V
    .locals 5

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    const-wide v2, 0x20b00000017L

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageEvents$Event;

    invoke-static {v0, v4}, Lcom/android/server/usage/UsageStatsProtoV2;->writePendingEvent(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageEvents$Event;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v3, "UsageStatsProtoV2"

    const-string/jumbo v4, "Unable to write some pending events to proto."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public static writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageStats;)V
    .locals 7

    iget v1, p3, Landroid/app/usage/UsageStats;->mPackageToken:I

    add-int/lit8 v1, v1, 0x1

    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10300000003L

    iget-wide v3, p3, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    move-object v0, p0

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v1, 0x10300000004L

    iget-wide v3, p3, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000008L

    iget-wide v3, p3, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    invoke-static/range {v0 .. v6}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v1, 0x10300000009L

    iget-wide v3, p3, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x1030000000aL

    iget-wide v3, p3, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    invoke-static/range {v0 .. v6}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v1, 0x1030000000bL

    iget-wide v3, p3, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x1030000000cL

    iget-wide v3, p3, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    invoke-static/range {v0 .. v6}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v1, 0x10500000006L

    iget v3, p3, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :try_start_0
    invoke-static {p0, p3}, Lcom/android/server/usage/UsageStatsProtoV2;->writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to write chooser counts for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p3, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UsageStatsProtoV2"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
