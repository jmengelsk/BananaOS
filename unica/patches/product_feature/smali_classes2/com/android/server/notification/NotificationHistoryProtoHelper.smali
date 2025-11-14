.class public abstract Lcom/android/server/notification/NotificationHistoryProtoHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static read(Ljava/io/InputStream;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    .locals 9

    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide v1, 0x20b00000003L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    :try_start_0
    invoke-static {v0, p0}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->readNotification(Landroid/util/proto/ProtoInputStream;Ljava/util/List;)Landroid/app/NotificationHistory$HistoricalNotification;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mSbnKey:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {p2, v4}, Lcom/android/server/notification/NotificationHistoryFilter;->matchesPackageAndSbnKeyFilter(Landroid/app/NotificationHistory$HistoricalNotification;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getHistoryCount()I

    move-result v5

    iget v7, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    if-ge v5, v7, :cond_1

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    if-eqz v3, :cond_7

    invoke-virtual {p1, v4}, Landroid/app/NotificationHistory;->addNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception v3

    goto :goto_4

    :cond_2
    iget-object v5, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Landroid/app/NotificationHistory$HistoricalNotification;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/app/NotificationHistory$HistoricalNotification;->getExtraTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object v7, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getHistoryCount()I

    move-result v7

    iget v8, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    if-ge v7, v8, :cond_4

    goto :goto_2

    :cond_4
    move v3, v6

    :goto_2
    if-eqz v3, :cond_7

    if-eqz v5, :cond_7

    invoke-virtual {p1, v4}, Landroid/app/NotificationHistory;->addNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V

    goto :goto_5

    :cond_5
    invoke-virtual {p2, v4}, Lcom/android/server/notification/NotificationHistoryFilter;->matchesPackageAndChannelFilter(Landroid/app/NotificationHistory$HistoricalNotification;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getHistoryCount()I

    move-result v5

    iget v7, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    if-ge v5, v7, :cond_6

    goto :goto_3

    :cond_6
    move v3, v6

    :goto_3
    if-eqz v3, :cond_7

    invoke-virtual {p1, v4}, Landroid/app/NotificationHistory;->addNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    :try_start_1
    const-string/jumbo v4, "NotifHistoryProto"

    const-string v5, "Error reading notification"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :goto_5
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_0

    :goto_6
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    throw p0

    :cond_8
    const-wide v3, 0x10b00000001L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10500000001L

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_7

    :cond_9
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_7
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    if-eq v1, v2, :cond_b

    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_a

    goto :goto_7

    :cond_a
    const-wide v5, 0x20900000002L

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    if-nez v0, :cond_e

    iget p2, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    const v0, 0x7fffffff

    if-ge p2, v0, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {p1, p0}, Landroid/app/NotificationHistory;->addPooledStrings(Ljava/util/List;)V

    goto :goto_9

    :cond_e
    :goto_8
    invoke-virtual {p1}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    :goto_9
    return-void
.end method

.method public static readNotification(Landroid/util/proto/ProtoInputStream;Ljava/util/List;)Landroid/app/NotificationHistory$HistoricalNotification;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v3, Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-direct {v3}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;-><init>()V

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    const-wide v6, 0x10500000006L

    const-wide v8, 0x10500000007L

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move-object/from16 v19, v5

    goto/16 :goto_8

    :pswitch_1
    const-wide v6, 0x10900000014L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setExtraTitle(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_1

    :pswitch_2
    const-wide v6, 0x10300000013L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setWhen(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_1

    :pswitch_3
    const-wide v6, 0x10900000012L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUri(Landroid/net/Uri;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_1

    :pswitch_4
    const-wide v6, 0x10800000011L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChecked(Z)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_1

    :pswitch_5
    const-wide v6, 0x10500000010L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setType(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_1

    :pswitch_6
    const-wide v6, 0x1090000000fL

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setSbnKey(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_1

    :pswitch_7
    const-wide v6, 0x1050000000eL

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setConversationId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_1

    :pswitch_8
    const-wide v6, 0x1090000000dL

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setConversationId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_9
    const-wide v10, 0x10b0000000cL

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v10

    const/4 v0, 0x0

    move v12, v0

    move v13, v12

    move v14, v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_3
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v18

    packed-switch v18, :pswitch_data_1

    :pswitch_a
    move-object/from16 v19, v5

    goto :goto_4

    :pswitch_b
    move-object/from16 v19, v5

    const-wide v4, 0x10900000008L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v16

    goto :goto_4

    :pswitch_c
    move-object/from16 v19, v5

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    move v13, v4

    goto :goto_4

    :pswitch_d
    move-object/from16 v19, v5

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    move v14, v4

    goto :goto_4

    :pswitch_e
    move-object/from16 v19, v5

    const-wide v4, 0x10c00000005L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v15

    goto :goto_4

    :pswitch_f
    move-object/from16 v19, v5

    const-wide v4, 0x10900000004L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v17

    goto :goto_4

    :pswitch_10
    move-object/from16 v19, v5

    const-wide v4, 0x10500000003L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    move v12, v4

    goto :goto_4

    :pswitch_11
    move-object/from16 v19, v5

    const-wide v4, 0x10900000002L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    goto :goto_4

    :pswitch_12
    move-object/from16 v19, v5

    const-wide v4, 0x10e00000001L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    :goto_4
    move-object/from16 v5, v19

    goto :goto_3

    :pswitch_13
    move-object/from16 v19, v5

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    if-eqz v15, :cond_4

    :try_start_0
    invoke-static {v15, v13, v14}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    if-eqz v12, :cond_4

    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    goto :goto_5

    :cond_2
    move-object/from16 v0, v19

    :goto_5
    invoke-static {v0, v12}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_7

    :cond_3
    const/4 v4, 0x4

    if-ne v0, v4, :cond_4

    if-eqz v16, :cond_4

    invoke-static/range {v16 .. v16}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "loadIcon IllegalArgumentException "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "NotifHistoryProto"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    const v4, 0x1080bef

    invoke-static {v0, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    :cond_4
    :goto_7
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_8

    :pswitch_14
    move-object/from16 v19, v5

    const-wide v4, 0x1090000000bL

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setText(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto/16 :goto_8

    :pswitch_15
    move-object/from16 v19, v5

    const-wide v4, 0x1090000000aL

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setTitle(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto/16 :goto_8

    :pswitch_16
    move-object/from16 v19, v5

    const-wide v4, 0x10300000009L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPostedTimeMs(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_8

    :pswitch_17
    move-object/from16 v19, v5

    const-wide v4, 0x10500000008L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUserId(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_8

    :pswitch_18
    move-object/from16 v19, v5

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUid(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_8

    :pswitch_19
    move-object/from16 v19, v5

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_8

    :pswitch_1a
    move-object/from16 v19, v5

    const-wide v4, 0x10900000005L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :pswitch_1b
    move-object/from16 v19, v5

    const-wide v4, 0x10500000004L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_8

    :pswitch_1c
    move-object/from16 v19, v5

    const-wide v4, 0x10900000003L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    move-object/from16 v5, v19

    goto/16 :goto_0

    :pswitch_1d
    const-wide v4, 0x10500000002L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPackage(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto/16 :goto_0

    :pswitch_1e
    const-wide v4, 0x10900000001L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPackage(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual {v3}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->build()Landroid/app/NotificationHistory$HistoricalNotification;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1f
        :pswitch_0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_13
        :pswitch_a
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public static write(Ljava/io/OutputStream;Landroid/app/NotificationHistory;I)V
    .locals 15

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide v2, 0x10500000002L

    move/from16 v0, p2

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10b00000001L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/app/NotificationHistory;->getPooledStringsToWrite()[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    const-wide v7, 0x10500000001L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    array-length v8, v0

    if-ge v7, v8, :cond_0

    const-wide v8, 0x20900000002L

    aget-object v10, v0, v7

    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual/range {p1 .. p1}, Landroid/app/NotificationHistory;->getNotificationsToWrite()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    if-ge v6, v5, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/app/NotificationHistory;->getPooledStringsToWrite()[Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationHistory$HistoricalNotification;

    const-string/jumbo v8, "NotifHistoryProto"

    const-string/jumbo v9, "notification conversation id ("

    const-string/jumbo v10, "notification package name ("

    const-wide v11, 0x20b00000003L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    :try_start_0
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v14, ") not found in string cache"

    if-ltz v13, :cond_1

    add-int/lit8 v13, v13, 0x1

    :try_start_1
    invoke-virtual {v1, v2, v3, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object p0, v4

    goto/16 :goto_8

    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v10

    const-wide v2, 0x10900000001L

    invoke-virtual {v1, v2, v3, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :goto_2
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz v2, :cond_2

    add-int/lit8 v2, v2, 0x1

    move-object p0, v4

    const-wide v3, 0x10500000004L

    :try_start_2
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_8

    :cond_2
    move-object p0, v4

    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000003L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :goto_3
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_3

    add-int/lit8 v2, v2, 0x1

    const-wide v3, 0x10500000006L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_4

    :cond_3
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000005L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :goto_4
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_4

    add-int/lit8 v0, v0, 0x1

    const-wide v2, 0x1050000000eL

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_5

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v0

    const-wide v2, 0x1090000000dL

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_5
    :goto_5
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    move-result v0

    const-wide v2, 0x10500000007L

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getUserId()I

    move-result v0

    const-wide v2, 0x10500000008L

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v2

    const-wide v9, 0x10300000009L

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-wide v2, 0x1090000000aL

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getText()Ljava/lang/String;

    move-result-object v0

    const-wide v2, 0x1090000000bL

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getSbnKey()Ljava/lang/String;

    move-result-object v0

    const-wide v2, 0x1090000000fL

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getType()I

    move-result v0

    const-wide v2, 0x10500000010L

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getChecked()Z

    move-result v0

    const-wide v2, 0x10800000011L

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getUri()Landroid/net/Uri;

    move-result-object v0

    const-wide v2, 0x10900000012L

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_6

    :cond_6
    const-string/jumbo v0, "null"

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :goto_6
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getWhen()J

    move-result-wide v2

    const-wide v9, 0x10300000013L

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getExtraTitle()Ljava/lang/String;

    move-result-object v0

    const-wide v2, 0x10900000014L

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-static {v1, v7}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->writeIcon(Landroid/util/proto/ProtoOutputStream;Landroid/app/NotificationHistory$HistoricalNotification;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_7
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_9

    :goto_8
    :try_start_3
    const-string v2, "Error writing notification -"

    invoke-static {v8, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :goto_9
    add-int/lit8 v6, v6, 0x1

    move-object v4, p0

    const-wide v2, 0x10500000002L

    goto/16 :goto_1

    :goto_a
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    throw v0

    :cond_7
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public static writeIcon(Landroid/util/proto/ProtoOutputStream;Landroid/app/NotificationHistory$HistoricalNotification;)V
    .locals 5

    const-wide v0, 0x10b0000000cL

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const-wide v3, 0x10e00000001L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object p1

    const-wide v2, 0x10900000008L

    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v2

    const-wide v3, 0x10c00000005L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v2

    const-wide v3, 0x10500000006L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result p1

    const-wide v2, 0x10500000007L

    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    const-wide v3, 0x10500000003L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object p1

    const-wide v2, 0x10900000004L

    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :goto_1
    :try_start_1
    const-string/jumbo v2, "NotifHistoryProto"

    const-string v3, "Error writing notification icon -"

    invoke-static {v2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    throw p1
.end method
