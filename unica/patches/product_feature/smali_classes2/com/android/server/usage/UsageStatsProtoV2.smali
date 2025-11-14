.class public abstract Lcom/android/server/usage/UsageStatsProtoV2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final ONE_HOUR_MS:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/usage/UsageStatsProtoV2;->ONE_HOUR_MS:J

    return-void
.end method

.method public static loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V
    .registers 14

    const-wide v0, 0x10500000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_26

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v3

    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    if-nez v4, :cond_2b

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iget-object v5, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2b

    :cond_26
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_72

    if-eq v2, v3, :cond_67

    const/4 v6, 0x2

    if-eq v2, v6, :cond_38

    goto :goto_2b

    :cond_38
    const-wide v7, 0x20b00000002L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v7

    const/4 v2, 0x0

    move v9, v5

    :goto_43
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v10

    if-eq v10, v5, :cond_5e

    if-eq v10, v3, :cond_58

    if-eq v10, v6, :cond_4e

    goto :goto_43

    :cond_4e
    const-wide v10, 0x10500000002L

    invoke-virtual {p0, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    goto :goto_43

    :cond_58
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v9

    sub-int/2addr v9, v3

    goto :goto_43

    :cond_5e
    if-eq v9, v5, :cond_63

    invoke-virtual {v4, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_63
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_2b

    :cond_67
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v3

    iget-object v5, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2b

    :cond_72
    return-void
.end method

.method public static loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 12

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    new-instance v1, Landroid/app/usage/ConfigurationStats;

    invoke-direct {v1}, Landroid/app/usage/ConfigurationStats;-><init>()V

    const-wide v2, 0x10b00000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1d

    invoke-virtual {v0, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_7b

    const/4 v6, 0x1

    if-eq v4, v6, :cond_66

    const/4 v6, 0x2

    if-eq v4, v6, :cond_57

    const/4 v6, 0x3

    if-eq v4, v6, :cond_4b

    const/4 v6, 0x4

    if-eq v4, v6, :cond_3f

    const/4 v6, 0x5

    if-eq v4, v6, :cond_34

    goto :goto_1d

    :cond_34
    const-wide v4, 0x10800000005L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v4

    move v5, v4

    goto :goto_1d

    :cond_3f
    const-wide v6, 0x10500000004L

    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    iput v4, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    goto :goto_1d

    :cond_4b
    const-wide v6, 0x10300000003L

    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, v1, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    goto :goto_1d

    :cond_57
    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v8, 0x10300000002L

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v8

    add-long/2addr v8, v6

    iput-wide v8, v1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    goto :goto_1d

    :cond_66
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

    goto :goto_1d

    :cond_7b
    if-eqz v5, :cond_81

    iget-object p0, v1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object p0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    :cond_81
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

    const-string/jumbo p2, "UsageStatsProtoV2"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static parseEvent(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageEvents$Event;
    .registers 15

    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const-wide v2, 0x10500000001L

    const-wide v4, 0x10500000002L

    const/4 v6, -0x1

    const/4 v7, 0x1

    packed-switch v1, :pswitch_data_102

    :pswitch_18  #0x0
    goto :goto_5

    :pswitch_19  #0xe
    const-wide v8, 0x10b0000000eL

    :try_start_1e
    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v8

    new-instance v1, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    invoke-direct {v1}, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;-><init>()V

    :goto_27
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v10

    if-eq v10, v6, :cond_43

    if-eq v10, v7, :cond_3b

    const/4 v11, 0x2

    if-eq v10, v11, :cond_33

    goto :goto_27

    :cond_33
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v10

    sub-int/2addr v10, v7

    iput v10, v1, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mActionToken:I

    goto :goto_27

    :cond_3b
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v10

    sub-int/2addr v10, v7

    iput v10, v1, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mCategoryToken:I

    goto :goto_27

    :cond_43
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mUserInteractionExtrasToken:Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_48} :catch_49

    goto :goto_5

    :catch_49
    move-exception v1

    const-string/jumbo v2, "UsageStatsProtoV2"

    const-string/jumbo v3, "Unable to read some user interaction extras from proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :pswitch_54  #0xd
    const-wide v1, 0x1050000000dL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v7

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    goto :goto_5

    :pswitch_61  #0xc
    const-wide v1, 0x1050000000cL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v7

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    goto :goto_5

    :pswitch_6e  #0xb
    const-wide v1, 0x1050000000bL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v7

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    goto :goto_5

    :pswitch_7b  #0xa
    const-wide v1, 0x1050000000aL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    goto/16 :goto_5

    :pswitch_88  #0x9
    const-wide v1, 0x10500000009L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v7

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    goto/16 :goto_5

    :pswitch_96  #0x8
    const-wide v1, 0x10500000008L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    goto/16 :goto_5

    :pswitch_a3  #0x7
    const-wide v1, 0x10500000007L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v7

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    goto/16 :goto_5

    :pswitch_b1  #0x6
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto/16 :goto_5

    :pswitch_c2  #0x5
    const-wide v1, 0x10500000005L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    goto/16 :goto_5

    :pswitch_cf  #0x4
    const-wide v1, 0x10500000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    goto/16 :goto_5

    :pswitch_dc  #0x3
    const-wide v1, 0x10300000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    goto/16 :goto_5

    :pswitch_ea  #0x2
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v7

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    goto/16 :goto_5

    :pswitch_f3  #0x1
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v7

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    goto/16 :goto_5

    :pswitch_fc  #0xffffffff
    iget p0, v0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    if-ne p0, v6, :cond_101

    const/4 v0, 0x0

    :cond_101
    return-object v0

    :pswitch_data_102
    .packed-switch -0x1
        :pswitch_fc  #ffffffff
        :pswitch_18  #00000000
        :pswitch_f3  #00000001
        :pswitch_ea  #00000002
        :pswitch_dc  #00000003
        :pswitch_cf  #00000004
        :pswitch_c2  #00000005
        :pswitch_b1  #00000006
        :pswitch_a3  #00000007
        :pswitch_96  #00000008
        :pswitch_88  #00000009
        :pswitch_7b  #0000000a
        :pswitch_6e  #0000000b
        :pswitch_61  #0000000c
        :pswitch_54  #0000000d
        :pswitch_19  #0000000e
    .end packed-switch
.end method

.method public static parsePendingEvent(Landroid/util/proto/ProtoInputStream;)Landroid/app/usage/UsageEvents$Event;
    .registers 5

    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    packed-switch v1, :pswitch_data_ec

    :pswitch_c  #0x0, 0xd
    goto :goto_5

    :pswitch_d  #0xe
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-wide v2, 0x10c0000000eL

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    goto :goto_5

    :pswitch_22  #0xc
    const-wide v1, 0x1090000000cL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    goto :goto_5

    :pswitch_2e  #0xb
    const-wide v1, 0x1090000000bL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    goto :goto_5

    :pswitch_3a  #0xa
    const-wide v1, 0x1050000000aL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    goto :goto_5

    :pswitch_46  #0x9
    const-wide v1, 0x10900000009L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_5

    :pswitch_52  #0x8
    const-wide v1, 0x10500000008L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    goto :goto_5

    :pswitch_5e  #0x7
    const-wide v1, 0x10900000007L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_5

    :pswitch_6a  #0x6
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto :goto_5

    :pswitch_7a  #0x5
    const-wide v1, 0x10500000005L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    goto/16 :goto_5

    :pswitch_87  #0x4
    const-wide v1, 0x10500000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    goto/16 :goto_5

    :pswitch_94  #0x3
    const-wide v1, 0x10300000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    goto/16 :goto_5

    :pswitch_a1  #0x2
    const-wide v1, 0x10900000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_ae  #0x1
    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_bb  #0xffffffff
    iget p0, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x5

    if-eq p0, v1, :cond_d9

    const/16 v1, 0x8

    const-string v2, ""

    if-eq p0, v1, :cond_d2

    const/16 v1, 0xc

    if-eq p0, v1, :cond_cb

    goto :goto_e4

    :cond_cb
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-nez p0, :cond_e4

    iput-object v2, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_e4

    :cond_d2
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-nez p0, :cond_e4

    iput-object v2, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_e4

    :cond_d9
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-nez p0, :cond_e4

    new-instance p0, Landroid/content/res/Configuration;

    invoke-direct {p0}, Landroid/content/res/Configuration;-><init>()V

    iput-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    :cond_e4
    :goto_e4
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-nez p0, :cond_ea

    const/4 p0, 0x0

    return-object p0

    :cond_ea
    return-object v0

    nop

    :pswitch_data_ec
    .packed-switch -0x1
        :pswitch_bb  #ffffffff
        :pswitch_c  #00000000
        :pswitch_ae  #00000001
        :pswitch_a1  #00000002
        :pswitch_94  #00000003
        :pswitch_87  #00000004
        :pswitch_7a  #00000005
        :pswitch_6a  #00000006
        :pswitch_5e  #00000007
        :pswitch_52  #00000008
        :pswitch_46  #00000009
        :pswitch_3a  #0000000a
        :pswitch_2e  #0000000b
        :pswitch_22  #0000000c
        :pswitch_c  #0000000d
        :pswitch_d  #0000000e
    .end packed-switch
.end method

.method public static parseUsageStats(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageStats;
    .registers 8

    new-instance v0, Landroid/app/usage/UsageStats;

    invoke-direct {v0}, Landroid/app/usage/UsageStats;-><init>()V

    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_ae

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_92

    const/4 v2, 0x4

    if-eq v1, v2, :cond_85

    packed-switch v1, :pswitch_data_b0

    goto :goto_5

    :pswitch_19  #0xc
    const-wide v1, 0x1030000000cL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    goto :goto_5

    :pswitch_26  #0xb
    const-wide v1, 0x1030000000bL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    goto :goto_5

    :pswitch_32  #0xa
    const-wide v1, 0x1030000000aL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    goto :goto_5

    :pswitch_3f  #0x9
    const-wide v1, 0x10300000009L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    goto :goto_5

    :pswitch_4b  #0x8
    const-wide v1, 0x10300000008L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    goto :goto_5

    :pswitch_58  #0x7
    const-wide v1, 0x20b00000007L

    :try_start_5d
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    invoke-static {p0, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_67} :catch_68

    goto :goto_5

    :catch_68
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to read chooser counts for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/app/usage/UsageStats;->mPackageToken:I

    const-string/jumbo v3, "UsageStatsProtoV2"

    invoke-static {v1, v2, v3}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_5

    :pswitch_79  #0x6
    const-wide v1, 0x10500000006L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    goto :goto_5

    :cond_85
    const-wide v1, 0x10300000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    goto/16 :goto_5

    :cond_92
    const-wide v1, 0x10300000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    goto/16 :goto_5

    :cond_a0
    const-wide v3, 0x10500000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/app/usage/UsageStats;->mPackageToken:I

    goto/16 :goto_5

    :cond_ae
    return-object v0

    nop

    :pswitch_data_b0
    .packed-switch 0x6
        :pswitch_79  #00000006
        :pswitch_58  #00000007
        :pswitch_4b  #00000008
        :pswitch_3f  #00000009
        :pswitch_32  #0000000a
        :pswitch_26  #0000000b
        :pswitch_19  #0000000c
    .end packed-switch
.end method

.method public static read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;Z)V
    .registers 10

    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_5
    :goto_5
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_da

    const/4 v2, 0x1

    if-eq p0, v2, :cond_ca

    const/4 v2, 0x2

    if-eq p0, v2, :cond_bd

    const/4 v2, 0x3

    if-eq p0, v2, :cond_b0

    packed-switch p0, :pswitch_data_f8

    const-string/jumbo v2, "UsageStatsProtoV2"

    packed-switch p0, :pswitch_data_104

    goto :goto_5

    :pswitch_1f  #0x16
    if-eqz p2, :cond_22

    goto :goto_5

    :cond_22
    const-wide v3, 0x20b00000016L

    :try_start_27
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v0, v5, v6}, Lcom/android/server/usage/UsageStatsProtoV2;->parseEvent(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageEvents$Event;

    move-result-object p0

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    if-eqz p0, :cond_5

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1, p0}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_3b} :catch_3c

    goto :goto_5

    :catch_3c
    move-exception p0

    const-string/jumbo v1, "Unable to read some events from proto."

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :pswitch_44  #0x15
    const-wide v3, 0x20b00000015L

    :try_start_49
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsProtoV2;->loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_53} :catch_54

    goto :goto_5

    :catch_54
    move-exception p0

    const-string/jumbo v1, "Unable to read some configuration stats from proto."

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :pswitch_5c  #0x14
    const-wide v3, 0x20b00000014L

    :try_start_61
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v0, v5, v6}, Lcom/android/server/usage/UsageStatsProtoV2;->parseUsageStats(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageStats;

    move-result-object p0

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    iget v3, p0, Landroid/app/usage/UsageStats;->mPackageToken:I

    if-eq v3, v1, :cond_5

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_77} :catch_78

    goto :goto_5

    :catch_78
    move-exception p0

    const-string/jumbo v1, "Unable to read some usage stats from proto."

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :pswitch_80  #0xd
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-wide v1, 0x10b0000000dL

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto/16 :goto_5

    :pswitch_8c  #0xc
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-wide v1, 0x10b0000000cL

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto/16 :goto_5

    :pswitch_98  #0xb
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-wide v1, 0x10b0000000bL

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto/16 :goto_5

    :pswitch_a4  #0xa
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-wide v1, 0x10b0000000aL

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto/16 :goto_5

    :cond_b0
    const-wide v1, 0x10500000003L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    goto/16 :goto_5

    :cond_bd
    const-wide v1, 0x10500000002L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    goto/16 :goto_5

    :cond_ca
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v3, 0x10300000001L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    goto/16 :goto_5

    :cond_da
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 p2, 0x0

    :goto_e1
    if-ge p2, p0, :cond_f6

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    add-int/lit8 p2, p2, 0x1

    goto :goto_e1

    :cond_f6
    return-void

    nop

    :pswitch_data_f8
    .packed-switch 0xa
        :pswitch_a4  #0000000a
        :pswitch_98  #0000000b
        :pswitch_8c  #0000000c
        :pswitch_80  #0000000d
    .end packed-switch

    :pswitch_data_104
    .packed-switch 0x14
        :pswitch_5c  #00000014
        :pswitch_44  #00000015
        :pswitch_1f  #00000016
    .end packed-switch
.end method

.method public static readGlobalComponentUsage(Ljava/io/InputStream;Ljava/util/Map;)V
    .registers 12

    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_5
    :goto_5
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_7c

    const/16 v2, 0x18

    if-eq p0, v2, :cond_11

    goto :goto_5

    :cond_11
    const-wide v2, 0x20b00000018L

    :try_start_16
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    const-string p0, ""

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_1f
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v8

    if-eq v8, v1, :cond_40

    const/4 v9, 0x1

    if-eq v8, v9, :cond_36

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2c

    goto :goto_1f

    :cond_2c
    const-wide v6, 0x10300000002L

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    goto :goto_1f

    :cond_36
    const-wide v8, 0x10900000001L

    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_1f

    :cond_40
    new-instance v1, Landroid/util/Pair;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v1, p0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    iget-object p0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    iget-object p0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p0, v2, v4

    if-lez p0, :cond_5

    iget-object p0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    move-object v2, p1

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_70} :catch_71

    goto :goto_5

    :catch_71
    move-exception p0

    const-string/jumbo v1, "UsageStatsProtoV2"

    const-string/jumbo v2, "Unable to parse some package usage from proto."

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_7c
    return-void
.end method

.method public static readObfuscatedData(Ljava/io/InputStream;Lcom/android/server/usage/PackagesTokenData;)V
    .registers 14

    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_5
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_57

    const-wide v2, 0x10500000001L

    const/4 v4, 0x1

    if-eq p0, v4, :cond_50

    const/4 v5, 0x2

    if-eq p0, v5, :cond_18

    goto :goto_5

    :cond_18
    const-wide v6, 0x20b00000002L

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    iget-object p0, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v9, v1

    :goto_29
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v10

    if-eq v10, v1, :cond_47

    if-eq v10, v4, :cond_41

    if-eq v10, v5, :cond_34

    goto :goto_29

    :cond_34
    const-wide v10, 0x20900000002L

    invoke-virtual {v0, v10, v11}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_41
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v9

    sub-int/2addr v9, v4

    goto :goto_29

    :cond_47
    if-eq v9, v1, :cond_4c

    invoke-virtual {p0, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4c
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_5

    :cond_50
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p1, Lcom/android/server/usage/PackagesTokenData;->counter:I

    goto :goto_5

    :cond_57
    return-void
.end method

.method public static write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 16

    const-string/jumbo v1, "UsageStatsProtoV2"

    new-instance v7, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v7, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_16

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    :cond_16
    const-wide v4, 0x10300000001L

    invoke-virtual {v7, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10500000002L

    iget p0, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    invoke-virtual {v7, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000003L

    iget p0, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    invoke-virtual {v7, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :try_start_32
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
    :try_end_6a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_6a} :catch_6b

    goto :goto_73

    :catch_6b
    move-exception v0

    move-object p0, v0

    const-string/jumbo v0, "Unable to write some interval stats trackers to proto."

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_73
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v9, 0x0

    move v2, v9

    :goto_7b
    if-ge v2, p0, :cond_a1

    const-wide v3, 0x20b00000014L

    :try_start_82
    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    invoke-static {v7, v5, v6, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageStats;)V

    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_96
    .catch Ljava/lang/IllegalArgumentException; {:try_start_82 .. :try_end_96} :catch_97

    goto :goto_9e

    :catch_97
    move-exception v0

    const-string/jumbo v3, "Unable to write some usage stats to proto."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7b

    :cond_a1
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    move v10, v9

    :goto_a8
    if-ge v10, p0, :cond_10f

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    const-wide v2, 0x20b00000015L

    :try_start_bd
    invoke-virtual {v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11
    :try_end_c1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bd .. :try_end_c1} :catch_102

    move-object v2, v7

    :try_start_c2
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
    :try_end_e1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c2 .. :try_end_e1} :catch_104

    move-object v7, v2

    :try_start_e2
    iget-wide v2, v13, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    const-wide v4, 0x10300000003L

    invoke-virtual {v7, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget v2, v13, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    const-wide v3, 0x10500000004L

    invoke-virtual {v7, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10800000005L

    invoke-virtual {v7, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v7, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_101
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e2 .. :try_end_101} :catch_102

    goto :goto_10c

    :catch_102
    move-exception v0

    goto :goto_106

    :catch_104
    move-exception v0

    move-object v7, v2

    :goto_106
    const-string/jumbo v2, "Unable to write some configuration stats to proto."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10c
    add-int/lit8 v10, v10, 0x1

    goto :goto_a8

    :cond_10f
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p0}, Landroid/app/usage/EventList;->size()I

    move-result p0

    :goto_115
    if-ge v9, p0, :cond_139

    const-wide v2, 0x20b00000016L

    :try_start_11c
    invoke-virtual {v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0, v9}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v0

    invoke-static {v7, v4, v5, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->writeEvent(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageEvents$Event;)V

    invoke-virtual {v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_12e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11c .. :try_end_12e} :catch_12f

    goto :goto_136

    :catch_12f
    move-exception v0

    const-string/jumbo v2, "Unable to write some events to proto."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_136
    add-int/lit8 v9, v9, 0x1

    goto :goto_115

    :cond_139
    invoke-virtual {v7}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public static writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_81

    iget-object v2, v1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_81

    :cond_10
    iget-object v2, v1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v2, :cond_81

    iget-object v5, v1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v6, v1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseIntArray;

    if-eqz v6, :cond_2f

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-nez v7, :cond_32

    :cond_2f
    move/from16 v16, v4

    goto :goto_7e

    :cond_32
    const-wide v7, 0x20b00000007L

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    add-int/lit8 v5, v5, 0x1

    const-wide v9, 0x10500000001L

    invoke-virtual {v0, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    const/4 v11, 0x0

    :goto_4a
    if-ge v11, v5, :cond_79

    invoke-virtual {v6, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v6, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    if-gtz v13, :cond_59

    move/from16 v16, v4

    goto :goto_74

    :cond_59
    const-wide v14, 0x20b00000002L

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v0, v9, v10, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move/from16 v16, v4

    const-wide v3, 0x10500000002L

    invoke-virtual {v0, v3, v4, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_74
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v16

    goto :goto_4a

    :cond_79
    move/from16 v16, v4

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_7e
    add-int/lit8 v4, v16, 0x1

    goto :goto_17

    :cond_81
    :goto_81
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

.method public static writeEvent(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageEvents$Event;)V
    .registers 17

    move-object/from16 v7, p3

    iget v1, v7, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    add-int/lit8 v1, v1, 0x1

    const-wide v8, 0x10500000001L

    invoke-virtual {p0, v8, v9, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v1, v7, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    const-wide v10, 0x10500000002L

    const/4 v12, -0x1

    if-eq v1, v12, :cond_1d

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v10, v11, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_1d
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

    if-eq v1, v12, :cond_55

    const-wide v2, 0x1050000000bL

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_55
    iget v1, v7, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    if-eq v1, v12, :cond_63

    const-wide v2, 0x1050000000cL

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_63
    iget v1, v7, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_d5

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_c6

    const/4 v2, 0x7

    if-eq v1, v2, :cond_a7

    const/16 v2, 0x8

    if-eq v1, v2, :cond_98

    const/16 v2, 0xb

    if-eq v1, v2, :cond_8b

    const/16 v2, 0xc

    if-eq v1, v2, :cond_7c

    goto :goto_e1

    :cond_7c
    iget v1, v7, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    if-eq v1, v12, :cond_e1

    const-wide v2, 0x10500000009L

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void

    :cond_8b
    iget v1, v7, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz v1, :cond_e1

    const-wide v2, 0x10500000008L

    invoke-virtual {p0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void

    :cond_98
    iget v1, v7, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    if-eq v1, v12, :cond_e1

    const-wide v2, 0x10500000007L

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void

    :cond_a7
    iget-object v1, v7, Landroid/app/usage/UsageEvents$Event;->mUserInteractionExtrasToken:Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    if-eqz v1, :cond_e1

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

    :cond_c6
    iget v1, v7, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    if-eq v1, v12, :cond_e1

    const-wide v2, 0x1050000000dL

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void

    :cond_d5
    iget-object v1, v7, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_e1

    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_e1
    :goto_e1
    return-void
.end method

.method public static writeGlobalComponentUsage(Ljava/util/Map;Ljava/io/OutputStream;)V
    .registers 10

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Map$Entry;

    array-length p1, p0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, p1, :cond_59

    aget-object v2, p0, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_26

    goto :goto_56

    :cond_26
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

    :goto_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_59
    return-void
.end method

.method public static writeObfuscatedData(Ljava/io/OutputStream;Lcom/android/server/usage/PackagesTokenData;)V
    .registers 15

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

    :goto_17
    if-ge v4, p0, :cond_53

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

    :goto_3a
    if-ge v9, v8, :cond_4d

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-wide v11, 0x20900000002L

    invoke-virtual {v0, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3a

    :cond_4d
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_53
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public static writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .registers 9

    sget-wide v0, Lcom/android/server/usage/UsageStatsProtoV2;->ONE_HOUR_MS:J

    sub-long v0, p5, v0

    cmp-long v0, p3, v0

    if-lez v0, :cond_15

    sub-long/2addr p3, p5

    const-wide/16 p5, 0x0

    cmp-long p5, p3, p5

    if-nez p5, :cond_12

    const-wide/16 p5, 0x1

    add-long/2addr p3, p5

    :cond_12
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_15
    return-void
.end method

.method public static writePendingEvent(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageEvents$Event;)V
    .registers 6

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_16

    const-wide v1, 0x10900000002L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_16
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

    if-eqz v0, :cond_4a

    const-wide v1, 0x1090000000bL

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_4a
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v0, :cond_56

    const-wide v1, 0x1090000000cL

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_56
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_b3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_92

    const/16 v1, 0x8

    if-eq v0, v1, :cond_85

    const/16 v1, 0xb

    if-eq v0, v1, :cond_78

    const/16 v1, 0xc

    if-eq v0, v1, :cond_6b

    goto :goto_bf

    :cond_6b
    iget-object p1, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz p1, :cond_bf

    const-wide v0, 0x10900000009L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void

    :cond_78
    iget p1, p1, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz p1, :cond_bf

    const-wide v0, 0x10500000008L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void

    :cond_85
    iget-object p1, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz p1, :cond_bf

    const-wide v0, 0x10900000007L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void

    :cond_92
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_bf

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->size()I

    move-result v0

    if-eqz v0, :cond_bf

    iget-object p1, p1, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-wide v0, 0x10c0000000eL

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    return-void

    :cond_b3
    iget-object p1, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p1, :cond_bf

    const-wide v0, 0x10b00000006L

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_bf
    :goto_bf
    return-void
.end method

.method public static writePendingEvents(Ljava/io/OutputStream;Ljava/util/LinkedList;)V
    .registers 7

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, p0, :cond_2f

    const-wide v2, 0x20b00000017L

    :try_start_11
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageEvents$Event;

    invoke-static {v0, v4}, Lcom/android/server/usage/UsageStatsProtoV2;->writePendingEvent(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageEvents$Event;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_21} :catch_22

    goto :goto_2c

    :catch_22
    move-exception v2

    const-string/jumbo v3, "UsageStatsProtoV2"

    const-string/jumbo v4, "Unable to write some pending events to proto."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2f
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public static writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageStats;)V
    .registers 11

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

    :try_start_5e
    invoke-static {p0, p3}, Lcom/android/server/usage/UsageStatsProtoV2;->writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    :try_end_61
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5e .. :try_end_61} :catch_62

    return-void

    :catch_62
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
