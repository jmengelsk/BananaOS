.class public final Lcom/android/server/people/data/DataManager$CallLogContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final mCallLogQueryHelper:Lcom/android/server/people/data/CallLogQueryHelper;

.field public mLastCallTimestamp:J

.field public final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method public constructor <init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iget-object p2, p1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/people/data/CallLogQueryHelper;

    invoke-direct {p1, p2, p0}, Lcom/android/server/people/data/CallLogQueryHelper;-><init>(Landroid/content/Context;Lcom/android/server/people/data/DataManager$CallLogContentObserver;)V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mCallLogQueryHelper:Lcom/android/server/people/data/CallLogQueryHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/32 v0, 0x493e0

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mLastCallTimestamp:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/people/data/Event;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    new-instance v0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/server/people/data/Event;I)V

    invoke-static {p0, v0}, Lcom/android/server/people/data/DataManager;->-$$Nest$mforAllUnlockedUsers(Lcom/android/server/people/data/DataManager;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onChange(Z)V
    .registers 19

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mCallLogQueryHelper:Lcom/android/server/people/data/CallLogQueryHelper;

    iget-wide v2, v1, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mLastCallTimestamp:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "CallLogQueryHelper"

    const-string/jumbo v5, "normalized_number"

    const-string/jumbo v6, "date"

    const-string/jumbo v7, "duration"

    const-string/jumbo v8, "type"

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "date > ?"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v13

    :try_start_26
    iget-object v3, v0, Lcom/android/server/people/data/CallLogQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v14, "date DESC"

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_26 .. :try_end_35} :catch_48
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_35} :catch_44

    if-nez v3, :cond_52

    :try_start_37
    const-string v0, "Cursor is null when querying call log."

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_4b

    if-eqz v3, :cond_41

    :try_start_3e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_41
    .catch Ljava/lang/SecurityException; {:try_start_3e .. :try_end_41} :catch_48
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_44

    :cond_41
    :goto_41
    const/4 v2, 0x0

    goto/16 :goto_e8

    :catch_44
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_ce

    :catch_48
    move-exception v0

    goto/16 :goto_d4

    :catchall_4b
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v3

    const/4 v9, 0x0

    goto/16 :goto_c3

    :cond_52
    const/4 v9, 0x0

    :goto_53
    :try_start_53
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_b9

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15
    :try_end_79
    .catchall {:try_start_53 .. :try_end_79} :catchall_b5

    move-object/from16 v16, v3

    :try_start_7b
    iget-wide v2, v0, Lcom/android/server/people/data/CallLogQueryHelper;->mLastCallTimestamp:J

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/people/data/CallLogQueryHelper;->mLastCallTimestamp:J

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ae

    const-wide/16 v2, 0x0

    cmp-long v2, v11, v2

    if-lez v2, :cond_ae

    sget-object v2, Lcom/android/server/people/data/CallLogQueryHelper;->CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_ae

    invoke-virtual {v2, v15}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    new-instance v3, Lcom/android/server/people/data/Event$Builder;

    invoke-direct {v3, v11, v12, v2}, Lcom/android/server/people/data/Event$Builder;-><init>(JI)V

    long-to-int v2, v13

    iput v2, v3, Lcom/android/server/people/data/Event$Builder;->mDurationSeconds:I

    new-instance v2, Lcom/android/server/people/data/Event;

    invoke-direct {v2, v3}, Lcom/android/server/people/data/Event;-><init>(Lcom/android/server/people/data/Event$Builder;)V

    iget-object v3, v0, Lcom/android/server/people/data/CallLogQueryHelper;->mEventConsumer:Lcom/android/server/people/data/DataManager$CallLogContentObserver;

    invoke-virtual {v3, v10, v2}, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ad
    .catchall {:try_start_7b .. :try_end_ad} :catchall_b3

    const/4 v9, 0x1

    :cond_ae
    move-object/from16 v3, v16

    goto :goto_53

    :goto_b1
    move-object v2, v0

    goto :goto_c3

    :catchall_b3
    move-exception v0

    goto :goto_b1

    :catchall_b5
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_b1

    :cond_b9
    move-object/from16 v16, v3

    :try_start_bb
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_be
    .catch Ljava/lang/SecurityException; {:try_start_bb .. :try_end_be} :catch_48
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_c0

    move v2, v9

    goto :goto_e8

    :catch_c0
    move-exception v0

    move v2, v9

    goto :goto_ce

    :goto_c3
    if-eqz v16, :cond_cd

    :try_start_c5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_c9

    goto :goto_cd

    :catchall_c9
    move-exception v0

    :try_start_ca
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_cd
    :goto_cd
    throw v2
    :try_end_ce
    .catch Ljava/lang/SecurityException; {:try_start_ca .. :try_end_ce} :catch_48
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_ce} :catch_c0

    :goto_ce
    const-string v3, "Exception when querying call log."

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e8

    :goto_d4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Query call log failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    :goto_e8
    if-eqz v2, :cond_f0

    iget-object v0, v1, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mCallLogQueryHelper:Lcom/android/server/people/data/CallLogQueryHelper;

    iget-wide v2, v0, Lcom/android/server/people/data/CallLogQueryHelper;->mLastCallTimestamp:J

    iput-wide v2, v1, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mLastCallTimestamp:J

    :cond_f0
    return-void
.end method
