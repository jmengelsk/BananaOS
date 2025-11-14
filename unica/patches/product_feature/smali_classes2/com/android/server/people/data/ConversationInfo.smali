.class public final Lcom/android/server/people/data/ConversationInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mContactPhoneNumber:Ljava/lang/String;

.field public mContactUri:Landroid/net/Uri;

.field public mConversationFlags:I

.field public mCreationTimestamp:J

.field public mCurrStatuses:Ljava/util/Map;

.field public mLastEventTimestamp:J

.field public mLocusId:Landroid/content/LocusId;

.field public mNotificationChannelId:Ljava/lang/String;

.field public mParentNotificationChannelId:Ljava/lang/String;

.field public mShortcutFlags:I

.field public mShortcutId:Ljava/lang/String;


# direct methods
.method public static readFromBackupPayload([B)Lcom/android/server/people/data/ConversationInfo;
    .locals 14

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Landroid/content/LocusId;

    invoke-direct {v4, v3}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    move-object v4, p0

    :goto_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, p0

    :goto_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    move-object v5, p0

    :goto_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_3

    :cond_3
    move-object v8, p0

    :goto_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_4

    :cond_4
    move-object v9, p0

    :goto_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v12
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_1
    const/4 v12, 0x0

    :goto_5
    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :cond_5
    const-wide/16 v12, 0x0

    :goto_6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/server/people/data/ConversationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iput-object v3, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iput-object v8, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    iput-wide v10, p0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    iput-wide v12, p0, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    iput v6, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    iput v7, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    return-object p0

    :goto_7
    const-string v1, "ConversationInfo"

    const-string v2, "Failed to read conversation info fields from backup payload."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public static readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/people/data/ConversationInfo;
    .locals 19

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v6, v3

    move-object v8, v5

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move v3, v2

    move-wide v4, v6

    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2

    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v14

    move-object/from16 v16, v1

    move/from16 v17, v2

    packed-switch v14, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not read undefined field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConversationInfo"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object/from16 v1, v16

    move/from16 v2, v17

    goto :goto_0

    :pswitch_0
    const-wide v1, 0x1030000000aL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    goto :goto_1

    :pswitch_1
    const-wide v1, 0x10300000009L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v4

    goto :goto_1

    :pswitch_2
    const-wide v1, 0x10900000008L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :pswitch_3
    const-wide v1, 0x10900000007L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :pswitch_4
    const-wide v1, 0x10500000006L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    goto :goto_1

    :pswitch_5
    const-wide v1, 0x10500000005L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    move-object/from16 v1, v16

    goto :goto_0

    :pswitch_6
    const-wide v1, 0x10900000004L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :pswitch_7
    const-wide v1, 0x10900000003L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    goto :goto_1

    :pswitch_8
    const-wide v1, 0x10b00000002L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    :goto_2
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v14

    if-eq v14, v15, :cond_1

    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    new-instance v9, Landroid/content/LocusId;

    move/from16 v18, v3

    const-wide v14, 0x10900000001L

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    move/from16 v3, v18

    :cond_0
    const/4 v15, -0x1

    goto :goto_2

    :cond_1
    move/from16 v18, v3

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_9
    move/from16 v18, v3

    const-wide v14, 0x10900000001L

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    goto/16 :goto_0

    :cond_2
    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/people/data/ConversationInfo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v8, v0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    iput-object v9, v0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iput-object v10, v0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iput-object v11, v0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iput-object v12, v0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iput-object v13, v0, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    iput-wide v4, v0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    iput-wide v6, v0, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    move/from16 v2, v17

    iput v2, v0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    move/from16 v3, v18

    iput v3, v0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    move-object/from16 v1, v16

    iput-object v1, v0, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/server/people/data/ConversationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/server/people/data/ConversationInfo;

    iget-object v1, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iget-object v3, p1, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    iget-wide v5, p1, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    iget v3, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    iget v3, p1, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hasConversationFlags(I)Z
    .locals 0

    iget p0, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 11

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iget-object v2, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v3, p0, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v0, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConversationInfo {shortcutId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", locusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contactUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parentNotificationChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastEventTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", creationTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", statuses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shortcutFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    const-string v2, " ["

    invoke-static {v1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    const/16 v3, 0x2000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_0

    const-string/jumbo v1, "Liv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    const/16 v3, 0x4000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_1

    const-string v1, "Cac"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "], conversationFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Imp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "Sil"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Bub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Dem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "PIm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "Bot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string/jumbo p0, "Sta"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string/jumbo p0, "]}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
