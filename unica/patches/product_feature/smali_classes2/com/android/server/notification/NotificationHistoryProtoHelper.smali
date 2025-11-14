.class public abstract Lcom/android/server/notification/NotificationHistoryProtoHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static read(Ljava/io/InputStream;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    .registers 12

    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_a
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_a2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_18

    goto :goto_a

    :cond_18
    const-wide v1, 0x20b00000003L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    :try_start_21
    invoke-static {v0, p0}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->readNotification(Landroid/util/proto/ProtoInputStream;Ljava/util/List;)Landroid/app/NotificationHistory$HistoricalNotification;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mSbnKey:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_44

    invoke-virtual {p2, v4}, Lcom/android/server/notification/NotificationHistoryFilter;->matchesPackageAndSbnKeyFilter(Landroid/app/NotificationHistory$HistoricalNotification;)Z

    move-result v5

    if-eqz v5, :cond_99

    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getHistoryCount()I

    move-result v5

    iget v7, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    if-ge v5, v7, :cond_39

    goto :goto_3a

    :cond_39
    move v3, v6

    :goto_3a
    if-eqz v3, :cond_99

    invoke-virtual {p1, v4}, Landroid/app/NotificationHistory;->addNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V

    goto :goto_99

    :catchall_40
    move-exception p0

    goto :goto_9e

    :catch_42
    move-exception v3

    goto :goto_91

    :cond_44
    iget-object v5, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    if-eqz v5, :cond_7b

    invoke-virtual {v4}, Landroid/app/NotificationHistory$HistoricalNotification;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/app/NotificationHistory$HistoricalNotification;->getExtraTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object v7, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_69

    iget-object v7, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_69

    goto :goto_99

    :cond_69
    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getHistoryCount()I

    move-result v7

    iget v8, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    if-ge v7, v8, :cond_72

    goto :goto_73

    :cond_72
    move v3, v6

    :goto_73
    if-eqz v3, :cond_99

    if-eqz v5, :cond_99

    invoke-virtual {p1, v4}, Landroid/app/NotificationHistory;->addNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V

    goto :goto_99

    :cond_7b
    invoke-virtual {p2, v4}, Lcom/android/server/notification/NotificationHistoryFilter;->matchesPackageAndChannelFilter(Landroid/app/NotificationHistory$HistoricalNotification;)Z

    move-result v5

    if-eqz v5, :cond_99

    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getHistoryCount()I

    move-result v5

    iget v7, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    if-ge v5, v7, :cond_8a

    goto :goto_8b

    :cond_8a
    move v3, v6

    :goto_8b
    if-eqz v3, :cond_99

    invoke-virtual {p1, v4}, Landroid/app/NotificationHistory;->addNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_90} :catch_42
    .catchall {:try_start_21 .. :try_end_90} :catchall_40

    goto :goto_99

    :goto_91
    :try_start_91
    const-string/jumbo v4, "NotifHistoryProto"

    const-string v5, "Error reading notification"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_99
    .catchall {:try_start_91 .. :try_end_99} :catchall_40

    :cond_99
    :goto_99
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_a

    :goto_9e
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    throw p0

    :cond_a2
    const-wide v3, 0x10b00000001L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10500000001L

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result p0

    if-eqz p0, :cond_c0

    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_c5

    :cond_c0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_c5
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    if-eq v1, v2, :cond_e0

    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_d3

    goto :goto_c5

    :cond_d3
    const-wide v5, 0x20900000002L

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c5

    :cond_e0
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_a

    :cond_e5
    iget-object v0, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    if-nez v0, :cond_f5

    iget p2, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    const v0, 0x7fffffff

    if-ge p2, v0, :cond_f1

    goto :goto_f5

    :cond_f1
    invoke-virtual {p1, p0}, Landroid/app/NotificationHistory;->addPooledStrings(Ljava/util/List;)V

    goto :goto_f8

    :cond_f5
    :goto_f5
    invoke-virtual {p1}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    :goto_f8
    return-void
.end method

.method public static readNotification(Landroid/util/proto/ProtoInputStream;Ljava/util/List;)Landroid/app/NotificationHistory$HistoricalNotification;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v3, Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-direct {v3}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;-><init>()V

    const/4 v5, 0x0

    :goto_a
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    const-wide v6, 0x10500000006L

    const-wide v8, 0x10500000007L

    packed-switch v0, :pswitch_data_22e

    :goto_1b
    :pswitch_1b  #0x0
    move-object/from16 v19, v5

    goto/16 :goto_1fc

    :pswitch_1f  #0x14
    const-wide v6, 0x10900000014L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setExtraTitle(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_1b

    :pswitch_2c  #0x13
    const-wide v6, 0x10300000013L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setWhen(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_1b

    :pswitch_39  #0x12
    const-wide v6, 0x10900000012L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_46

    const/4 v0, 0x0

    goto :goto_4a

    :cond_46
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_4a
    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUri(Landroid/net/Uri;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_1b

    :pswitch_4e  #0x11
    const-wide v6, 0x10800000011L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChecked(Z)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_1b

    :pswitch_5b  #0x10
    const-wide v6, 0x10500000010L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setType(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_1b

    :pswitch_68  #0xf
    const-wide v6, 0x1090000000fL

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setSbnKey(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_1b

    :pswitch_75  #0xe
    const-wide v6, 0x1050000000eL

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setConversationId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_1b

    :pswitch_8a  #0xd
    const-wide v6, 0x1090000000dL

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setConversationId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :pswitch_9a  #0xc
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

    :goto_ac
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v18

    packed-switch v18, :pswitch_data_25e

    :pswitch_b3  #0x0
    move-object/from16 v19, v5

    goto :goto_10d

    :pswitch_b6  #0x8
    move-object/from16 v19, v5

    const-wide v4, 0x10900000008L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v16

    goto :goto_10d

    :pswitch_c2  #0x7
    move-object/from16 v19, v5

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    move v13, v4

    goto :goto_10d

    :pswitch_ca  #0x6
    move-object/from16 v19, v5

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    move v14, v4

    goto :goto_10d

    :pswitch_d2  #0x5
    move-object/from16 v19, v5

    const-wide v4, 0x10c00000005L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v15

    goto :goto_10d

    :pswitch_de  #0x4
    move-object/from16 v19, v5

    const-wide v4, 0x10900000004L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v17

    goto :goto_10d

    :pswitch_ea  #0x3
    move-object/from16 v19, v5

    const-wide v4, 0x10500000003L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    move v12, v4

    goto :goto_10d

    :pswitch_f7  #0x2
    move-object/from16 v19, v5

    const-wide v4, 0x10900000002L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    goto :goto_10d

    :pswitch_102  #0x1
    move-object/from16 v19, v5

    const-wide v4, 0x10e00000001L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    :goto_10d
    move-object/from16 v5, v19

    goto :goto_ac

    :pswitch_110  #0xffffffff
    move-object/from16 v19, v5

    const/4 v4, 0x3

    if-ne v0, v4, :cond_121

    if-eqz v15, :cond_163

    :try_start_117
    invoke-static {v15, v13, v14}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_163

    :catch_11f
    move-exception v0

    goto :goto_142

    :cond_121
    const/4 v4, 0x2

    if-ne v0, v4, :cond_135

    if-eqz v12, :cond_163

    if-eqz v17, :cond_12b

    move-object/from16 v0, v17

    goto :goto_12d

    :cond_12b
    move-object/from16 v0, v19

    :goto_12d
    invoke-static {v0, v12}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_163

    :cond_135
    const/4 v4, 0x4

    if-ne v0, v4, :cond_163

    if-eqz v16, :cond_163

    invoke-static/range {v16 .. v16}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    :try_end_141
    .catch Ljava/lang/IllegalArgumentException; {:try_start_117 .. :try_end_141} :catch_11f

    goto :goto_163

    :goto_142
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

    :cond_163
    :goto_163
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1fc

    :pswitch_168  #0xb
    move-object/from16 v19, v5

    const-wide v4, 0x1090000000bL

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setText(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto/16 :goto_1fc

    :pswitch_178  #0xa
    move-object/from16 v19, v5

    const-wide v4, 0x1090000000aL

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setTitle(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto/16 :goto_1fc

    :pswitch_188  #0x9
    move-object/from16 v19, v5

    const-wide v4, 0x10300000009L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPostedTimeMs(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_1fc

    :pswitch_197  #0x8
    move-object/from16 v19, v5

    const-wide v4, 0x10500000008L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUserId(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_1fc

    :pswitch_1a6  #0x7
    move-object/from16 v19, v5

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUid(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_1fc

    :pswitch_1b0  #0x6
    move-object/from16 v19, v5

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_1fc

    :pswitch_1c2  #0x5
    move-object/from16 v19, v5

    const-wide v4, 0x10900000005L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1fc

    :pswitch_1d4  #0x4
    move-object/from16 v19, v5

    const-wide v4, 0x10500000004L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_1fc

    :pswitch_1eb  #0x3
    move-object/from16 v19, v5

    const-wide v4, 0x10900000003L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1fc
    move-object/from16 v5, v19

    goto/16 :goto_a

    :pswitch_200  #0x2
    const-wide v4, 0x10500000002L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPackage(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto/16 :goto_a

    :pswitch_217  #0x1
    const-wide v4, 0x10900000001L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPackage(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :pswitch_228  #0xffffffff
    invoke-virtual {v3}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->build()Landroid/app/NotificationHistory$HistoricalNotification;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_22e
    .packed-switch -0x1
        :pswitch_228  #ffffffff
        :pswitch_1b  #00000000
        :pswitch_217  #00000001
        :pswitch_200  #00000002
        :pswitch_1eb  #00000003
        :pswitch_1d4  #00000004
        :pswitch_1c2  #00000005
        :pswitch_1b0  #00000006
        :pswitch_1a6  #00000007
        :pswitch_197  #00000008
        :pswitch_188  #00000009
        :pswitch_178  #0000000a
        :pswitch_168  #0000000b
        :pswitch_9a  #0000000c
        :pswitch_8a  #0000000d
        :pswitch_75  #0000000e
        :pswitch_68  #0000000f
        :pswitch_5b  #00000010
        :pswitch_4e  #00000011
        :pswitch_39  #00000012
        :pswitch_2c  #00000013
        :pswitch_1f  #00000014
    .end packed-switch

    :pswitch_data_25e
    .packed-switch -0x1
        :pswitch_110  #ffffffff
        :pswitch_b3  #00000000
        :pswitch_102  #00000001
        :pswitch_f7  #00000002
        :pswitch_ea  #00000003
        :pswitch_de  #00000004
        :pswitch_d2  #00000005
        :pswitch_ca  #00000006
        :pswitch_c2  #00000007
        :pswitch_b6  #00000008
    .end packed-switch
.end method

.method public static write(Ljava/io/OutputStream;Landroid/app/NotificationHistory;I)V
    .registers 18

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

    :goto_27
    array-length v8, v0

    if-ge v7, v8, :cond_37

    const-wide v8, 0x20900000002L

    aget-object v10, v0, v7

    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    :cond_37
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual/range {p1 .. p1}, Landroid/app/NotificationHistory;->getNotificationsToWrite()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    :goto_42
    if-ge v6, v5, :cond_1cf

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

    :try_start_60
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v13
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_68} :catch_75
    .catchall {:try_start_60 .. :try_end_68} :catchall_72

    const-string v14, ") not found in string cache"

    if-ltz v13, :cond_79

    add-int/lit8 v13, v13, 0x1

    :try_start_6e
    invoke-virtual {v1, v2, v3, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_9b

    :catchall_72
    move-exception v0

    goto/16 :goto_1cb

    :catch_75
    move-exception v0

    move-object p0, v4

    goto/16 :goto_1bb

    :cond_79
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

    :goto_9b
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_a3} :catch_75
    .catchall {:try_start_6e .. :try_end_a3} :catchall_72

    if-ltz v2, :cond_b4

    add-int/lit8 v2, v2, 0x1

    move-object p0, v4

    const-wide v3, 0x10500000004L

    :try_start_ad
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_c1

    :catch_b1
    move-exception v0

    goto/16 :goto_1bb

    :cond_b4
    move-object p0, v4

    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000003L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :goto_c1
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_d6

    add-int/lit8 v2, v2, 0x1

    const-wide v3, 0x10500000006L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_e2

    :cond_d6
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000005L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :goto_e2
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_123

    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_101

    add-int/lit8 v0, v0, 0x1

    const-wide v2, 0x1050000000eL

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_123

    :cond_101
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

    :cond_123
    :goto_123
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

    if-eqz v0, :cond_196

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_19c

    :cond_196
    const-string/jumbo v0, "null"

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :goto_19c
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getWhen()J

    move-result-wide v2

    const-wide v9, 0x10300000013L

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getExtraTitle()Ljava/lang/String;

    move-result-object v0

    const-wide v2, 0x10900000014L

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-static {v1, v7}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->writeIcon(Landroid/util/proto/ProtoOutputStream;Landroid/app/NotificationHistory$HistoricalNotification;)V
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_1b7} :catch_b1
    .catchall {:try_start_ad .. :try_end_1b7} :catchall_72

    :goto_1b7
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_1c1

    :goto_1bb
    :try_start_1bb
    const-string v2, "Error writing notification -"

    invoke-static {v8, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c0
    .catchall {:try_start_1bb .. :try_end_1c0} :catchall_72

    goto :goto_1b7

    :goto_1c1
    add-int/lit8 v6, v6, 0x1

    move-object v4, p0

    const-wide v2, 0x10500000002L

    goto/16 :goto_42

    :goto_1cb
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    throw v0

    :cond_1cf
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public static writeIcon(Landroid/util/proto/ProtoOutputStream;Landroid/app/NotificationHistory$HistoricalNotification;)V
    .registers 7

    const-wide v0, 0x10b0000000cL

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    :try_start_9
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

    if-eq v2, v3, :cond_72

    const/4 v3, 0x3

    if-eq v2, v3, :cond_41

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2c

    goto/16 :goto_a4

    :cond_2c
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object p1

    const-wide v2, 0x10900000008L

    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_a4

    :catchall_3d
    move-exception p1

    goto :goto_b4

    :catch_3f
    move-exception p1

    goto :goto_a8

    :cond_41
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

    goto :goto_a4

    :cond_72
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

    if-nez v2, :cond_a4

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object p1

    const-wide v2, 0x10900000004L

    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_a4} :catch_3f
    .catchall {:try_start_9 .. :try_end_a4} :catchall_3d

    :cond_a4
    :goto_a4
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :goto_a8
    :try_start_a8
    const-string/jumbo v2, "NotifHistoryProto"

    const-string v3, "Error writing notification icon -"

    invoke-static {v2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b0
    .catchall {:try_start_a8 .. :try_end_b0} :catchall_3d

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :goto_b4
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    throw p1
.end method
