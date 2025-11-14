.class public final Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public mLastMmsTimestamp:J

.field public mLastSmsTimestamp:J

.field public final mMmsQueryHelper:Lcom/android/server/people/data/MmsQueryHelper;

.field public final mSmsQueryHelper:Lcom/android/server/people/data/SmsQueryHelper;

.field public final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method public constructor <init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iget-object p2, p1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/people/data/MmsQueryHelper;

    invoke-direct {v1, p2, p0}, Lcom/android/server/people/data/MmsQueryHelper;-><init>(Landroid/content/Context;Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;)V

    iput-object v1, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mMmsQueryHelper:Lcom/android/server/people/data/MmsQueryHelper;

    iget-object p1, p1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/server/people/data/SmsQueryHelper;

    invoke-direct {p2, p1, p0}, Lcom/android/server/people/data/SmsQueryHelper;-><init>(Landroid/content/Context;Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;)V

    iput-object p2, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mSmsQueryHelper:Lcom/android/server/people/data/SmsQueryHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/32 v0, 0x493e0

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastMmsTimestamp:J

    iput-wide p1, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastSmsTimestamp:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/people/data/Event;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    new-instance v0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/server/people/data/Event;I)V

    invoke-static {p0, v0}, Lcom/android/server/people/data/DataManager;->-$$Nest$mforAllUnlockedUsers(Lcom/android/server/people/data/DataManager;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onChange(Z)V
    .registers 22

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mMmsQueryHelper:Lcom/android/server/people/data/MmsQueryHelper;

    iget-wide v2, v1, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastMmsTimestamp:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "MmsQueryHelper"

    const-string/jumbo v5, "_id"

    const-string/jumbo v6, "date"

    const-string/jumbo v7, "msg_box"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "date > ?"

    const-wide/16 v14, 0x3e8

    div-long/2addr v2, v14

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    const/16 v16, 0x1

    const/16 v17, 0x0

    :try_start_2e
    iget-object v8, v0, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3b} :catch_d1
    .catchall {:try_start_2e .. :try_end_3b} :catchall_1bf

    if-nez v8, :cond_5f

    :try_start_3d
    const-string v0, "Cursor is null when querying MMS table."

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_58

    if-eqz v8, :cond_4f

    :try_start_44
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_48
    .catchall {:try_start_44 .. :try_end_47} :catchall_1bf

    goto :goto_4f

    :catch_48
    move-exception v0

    move/from16 v9, v17

    const-wide/16 v18, 0x0

    goto/16 :goto_d6

    :cond_4f
    :goto_4f
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    move/from16 v9, v17

    const-wide/16 v18, 0x0

    goto/16 :goto_dc

    :catchall_58
    move-exception v0

    move-object v2, v0

    move/from16 v9, v17

    const-wide/16 v18, 0x0

    goto :goto_c6

    :cond_5f
    move/from16 v9, v17

    :cond_61
    :goto_61
    :try_start_61
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_bb

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    mul-long/2addr v11, v14

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13
    :try_end_80
    .catchall {:try_start_61 .. :try_end_80} :catchall_b7

    const-wide/16 v18, 0x0

    :try_start_82
    iget-wide v2, v0, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    invoke-virtual {v0, v13, v10}, Lcom/android/server/people/data/MmsQueryHelper;->getMmsAddress(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_61

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_61

    cmp-long v3, v11, v18

    if-lez v3, :cond_61

    sget-object v3, Lcom/android/server/people/data/MmsQueryHelper;->MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v13}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_61

    invoke-virtual {v3, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    iget-object v10, v0, Lcom/android/server/people/data/MmsQueryHelper;->mEventConsumer:Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;

    new-instance v13, Lcom/android/server/people/data/Event;

    invoke-direct {v13, v11, v12, v3}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-virtual {v10, v2, v13}, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b0
    .catchall {:try_start_82 .. :try_end_b0} :catchall_b5

    move/from16 v9, v16

    goto :goto_61

    :goto_b3
    move-object v2, v0

    goto :goto_c6

    :catchall_b5
    move-exception v0

    goto :goto_b3

    :catchall_b7
    move-exception v0

    const-wide/16 v18, 0x0

    goto :goto_b3

    :cond_bb
    const-wide/16 v18, 0x0

    :try_start_bd
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c0} :catch_c4
    .catchall {:try_start_bd .. :try_end_c0} :catchall_1bf

    :goto_c0
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    goto :goto_dc

    :catch_c4
    move-exception v0

    goto :goto_d6

    :goto_c6
    if-eqz v8, :cond_d0

    :try_start_c8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_cc

    goto :goto_d0

    :catchall_cc
    move-exception v0

    :try_start_cd
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d0
    :goto_d0
    throw v2
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d1} :catch_c4
    .catchall {:try_start_cd .. :try_end_d1} :catchall_1bf

    :catch_d1
    move-exception v0

    const-wide/16 v18, 0x0

    move/from16 v9, v17

    :goto_d6
    :try_start_d6
    const-string v2, "Exception when querying MMS table."

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_db
    .catchall {:try_start_d6 .. :try_end_db} :catchall_1bf

    goto :goto_c0

    :goto_dc
    if-eqz v9, :cond_e4

    iget-object v0, v1, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mMmsQueryHelper:Lcom/android/server/people/data/MmsQueryHelper;

    iget-wide v2, v0, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    iput-wide v2, v1, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastMmsTimestamp:J

    :cond_e4
    iget-object v0, v1, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mSmsQueryHelper:Lcom/android/server/people/data/SmsQueryHelper;

    iget-wide v2, v1, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastSmsTimestamp:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "SmsQueryHelper"

    const-string/jumbo v7, "type"

    const-string/jumbo v8, "address"

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "date > ?"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    :try_start_106
    iget-object v2, v0, Lcom/android/server/people/data/SmsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_113} :catch_120
    .catchall {:try_start_106 .. :try_end_113} :catchall_1ba

    if-nez v2, :cond_12c

    :try_start_115
    const-string v0, "Cursor is null when querying SMS table."

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11a
    .catchall {:try_start_115 .. :try_end_11a} :catchall_128

    if-eqz v2, :cond_123

    :try_start_11c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_11f} :catch_120
    .catchall {:try_start_11c .. :try_end_11f} :catchall_1ba

    goto :goto_123

    :catch_120
    move-exception v0

    goto/16 :goto_1aa

    :cond_123
    :goto_123
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    goto/16 :goto_1b1

    :catchall_128
    move-exception v0

    :goto_129
    move-object v3, v0

    goto/16 :goto_19f

    :cond_12c
    move/from16 v3, v17

    :cond_12e
    :goto_12e
    :try_start_12e
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_192

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/people/data/SmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-wide v13, v0, Lcom/android/server/people/data/SmsQueryHelper;->mLastMessageTimestamp:J

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    iput-wide v13, v0, Lcom/android/server/people/data/SmsQueryHelper;->mLastMessageTimestamp:J

    if-eqz v12, :cond_12e

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_186

    cmp-long v13, v9, v18

    if-lez v13, :cond_186

    sget-object v13, Lcom/android/server/people/data/SmsQueryHelper;->SMS_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v14

    if-ltz v14, :cond_186

    invoke-virtual {v13, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    iget-object v13, v0, Lcom/android/server/people/data/SmsQueryHelper;->mEventConsumer:Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;

    new-instance v14, Lcom/android/server/people/data/Event;

    invoke-direct {v14, v9, v10, v11}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-virtual {v13, v12, v14}, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_183
    .catchall {:try_start_12e .. :try_end_183} :catchall_190

    move/from16 v9, v16

    goto :goto_188

    :cond_186
    move/from16 v9, v17

    :goto_188
    if-eqz v9, :cond_12e

    move/from16 v3, v16

    goto :goto_12e

    :goto_18d
    move/from16 v17, v3

    goto :goto_129

    :catchall_190
    move-exception v0

    goto :goto_18d

    :cond_192
    :try_start_192
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_192 .. :try_end_195} :catch_19b
    .catchall {:try_start_192 .. :try_end_195} :catchall_1ba

    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    move/from16 v17, v3

    goto :goto_1b1

    :catch_19b
    move-exception v0

    move/from16 v17, v3

    goto :goto_1aa

    :goto_19f
    if-eqz v2, :cond_1a9

    :try_start_1a1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1a4
    .catchall {:try_start_1a1 .. :try_end_1a4} :catchall_1a5

    goto :goto_1a9

    :catchall_1a5
    move-exception v0

    :try_start_1a6
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a9
    :goto_1a9
    throw v3
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_1a6 .. :try_end_1aa} :catch_120
    .catchall {:try_start_1a6 .. :try_end_1aa} :catchall_1ba

    :goto_1aa
    :try_start_1aa
    const-string v2, "Exception when querying SMS table."

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1af
    .catchall {:try_start_1aa .. :try_end_1af} :catchall_1ba

    goto/16 :goto_123

    :goto_1b1
    if-eqz v17, :cond_1b9

    iget-object v0, v1, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mSmsQueryHelper:Lcom/android/server/people/data/SmsQueryHelper;

    iget-wide v2, v0, Lcom/android/server/people/data/SmsQueryHelper;->mLastMessageTimestamp:J

    iput-wide v2, v1, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastSmsTimestamp:J

    :cond_1b9
    return-void

    :catchall_1ba
    move-exception v0

    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    throw v0

    :catchall_1bf
    move-exception v0

    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    throw v0
.end method
