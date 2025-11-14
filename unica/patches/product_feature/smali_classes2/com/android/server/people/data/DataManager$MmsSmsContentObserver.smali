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
    .locals 2

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
    .locals 2

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
    .locals 20

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

    :try_start_0
    iget-object v8, v0, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-nez v8, :cond_1

    :try_start_1
    const-string v0, "Cursor is null when querying MMS table."

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_0

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    goto :goto_0

    :catch_0
    move-exception v0

    move/from16 v9, v17

    const-wide/16 v18, 0x0

    goto/16 :goto_6

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    move/from16 v9, v17

    const-wide/16 v18, 0x0

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v0

    move/from16 v9, v17

    const-wide/16 v18, 0x0

    goto :goto_4

    :cond_1
    move/from16 v9, v17

    :cond_2
    :goto_1
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-wide/16 v18, 0x0

    :try_start_4
    iget-wide v2, v0, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    invoke-virtual {v0, v13, v10}, Lcom/android/server/people/data/MmsQueryHelper;->getMmsAddress(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    cmp-long v3, v11, v18

    if-lez v3, :cond_2

    sget-object v3, Lcom/android/server/people/data/MmsQueryHelper;->MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v13}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_2

    invoke-virtual {v3, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    iget-object v10, v0, Lcom/android/server/people/data/MmsQueryHelper;->mEventConsumer:Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;

    new-instance v13, Lcom/android/server/people/data/Event;

    invoke-direct {v13, v11, v12, v3}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-virtual {v10, v2, v13}, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v9, v16

    goto :goto_1

    :goto_2
    move-object v2, v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    const-wide/16 v18, 0x0

    goto :goto_2

    :cond_3
    const-wide/16 v18, 0x0

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    :goto_3
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :goto_4
    if-eqz v8, :cond_4

    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    :try_start_7
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    :catch_2
    move-exception v0

    const-wide/16 v18, 0x0

    move/from16 v9, v17

    :goto_6
    :try_start_8
    const-string v2, "Exception when querying MMS table."

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_3

    :goto_7
    if-eqz v9, :cond_5

    iget-object v0, v1, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mMmsQueryHelper:Lcom/android/server/people/data/MmsQueryHelper;

    iget-wide v2, v0, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    iput-wide v2, v1, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastMmsTimestamp:J

    :cond_5
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

    :try_start_9
    iget-object v2, v0, Lcom/android/server/people/data/SmsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    if-nez v2, :cond_7

    :try_start_a
    const-string v0, "Cursor is null when querying SMS table."

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v2, :cond_6

    :try_start_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_8

    :catch_3
    move-exception v0

    goto/16 :goto_f

    :cond_6
    :goto_8
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    goto/16 :goto_10

    :catchall_4
    move-exception v0

    :goto_9
    move-object v3, v0

    goto/16 :goto_d

    :cond_7
    move/from16 v3, v17

    :cond_8
    :goto_a
    :try_start_c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_a

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

    if-eqz v12, :cond_8

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    cmp-long v13, v9, v18

    if-lez v13, :cond_9

    sget-object v13, Lcom/android/server/people/data/SmsQueryHelper;->SMS_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v14

    if-ltz v14, :cond_9

    invoke-virtual {v13, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    iget-object v13, v0, Lcom/android/server/people/data/SmsQueryHelper;->mEventConsumer:Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;

    new-instance v14, Lcom/android/server/people/data/Event;

    invoke-direct {v14, v9, v10, v11}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-virtual {v13, v12, v14}, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move/from16 v9, v16

    goto :goto_b

    :cond_9
    move/from16 v9, v17

    :goto_b
    if-eqz v9, :cond_8

    move/from16 v3, v16

    goto :goto_a

    :goto_c
    move/from16 v17, v3

    goto :goto_9

    :catchall_5
    move-exception v0

    goto :goto_c

    :cond_a
    :try_start_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    move/from16 v17, v3

    goto :goto_10

    :catch_4
    move-exception v0

    move/from16 v17, v3

    goto :goto_f

    :goto_d
    if-eqz v2, :cond_b

    :try_start_e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    :try_start_f
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_e
    throw v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :goto_f
    :try_start_10
    const-string v2, "Exception when querying SMS table."

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto/16 :goto_8

    :goto_10
    if-eqz v17, :cond_c

    iget-object v0, v1, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mSmsQueryHelper:Lcom/android/server/people/data/SmsQueryHelper;

    iget-wide v2, v0, Lcom/android/server/people/data/SmsQueryHelper;->mLastMessageTimestamp:J

    iput-wide v2, v1, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastSmsTimestamp:J

    :cond_c
    return-void

    :catchall_7
    move-exception v0

    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    throw v0

    :catchall_8
    move-exception v0

    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    throw v0
.end method
