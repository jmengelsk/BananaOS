.class public final Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/notification/RankingHandler;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v3, v1, Landroid/os/Message;->what:I

    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_13a

    const/16 v1, 0x3e9

    if-eq v3, v1, :cond_10

    goto/16 :goto_21d

    :cond_10
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    if-nez v1, :cond_18

    goto/16 :goto_21d

    :cond_18
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1b
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5, v1}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v8, 0x0

    :goto_27
    if-ge v8, v1, :cond_a0

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    new-instance v9, Lcom/android/server/notification/NotificationRecordExtractorData;

    move-object v10, v9

    iget v9, v7, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    move-object v11, v10

    iget-boolean v10, v7, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    move-object v12, v11

    iget-boolean v11, v7, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    iget-object v13, v7, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v13

    move-object v14, v12

    move v12, v13

    iget-object v13, v7, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    iget-object v15, v7, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v14

    move-object v14, v15

    iget-object v15, v7, Lcom/android/server/notification/NotificationRecord;->mPeopleOverride:Ljava/util/ArrayList;

    const/16 v26, 0x1

    iget-object v2, v7, Lcom/android/server/notification/NotificationRecord;->mSnoozeCriteria:Ljava/util/ArrayList;

    iget v6, v7, Lcom/android/server/notification/NotificationRecord;->mUserSentiment:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v6, v7, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget-object v6, v7, Lcom/android/server/notification/NotificationRecord;->mSystemGeneratedSmartActions:Ljava/util/ArrayList;

    iget-object v4, v7, Lcom/android/server/notification/NotificationRecord;->mSmartReplies:Ljava/util/ArrayList;

    move-object/from16 v19, v2

    iget v2, v7, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    move/from16 v21, v2

    iget v2, v7, Lcom/android/server/notification/NotificationRecord;->mRankingScore:F

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v23

    move/from16 v22, v2

    iget v2, v7, Lcom/android/server/notification/NotificationRecord;->mProposedImportance:I

    move/from16 v24, v2

    iget-boolean v2, v7, Lcom/android/server/notification/NotificationRecord;->mSensitiveContent:Z

    move/from16 v25, v2

    move-object/from16 v20, v4

    move-object v2, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v19

    move-object/from16 v19, v6

    invoke-direct/range {v7 .. v25}, Lcom/android/server/notification/NotificationRecordExtractorData;-><init>(IIZZZLandroid/app/NotificationChannel;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;IFZIZ)V

    move-object v14, v7

    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v4, v2}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    :catchall_9d
    move-exception v0

    goto/16 :goto_138

    :cond_a0
    const/16 v26, 0x1

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    const/4 v9, 0x0

    :goto_aa
    if-ge v9, v1, :cond_136

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c2

    goto/16 :goto_132

    :cond_c2
    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecordExtractorData;

    invoke-virtual {v4, v2, v9}, Lcom/android/server/notification/NotificationRecordExtractorData;->hasDiffForRankingLocked(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_e4

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_e4

    invoke-static {v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_e4
    iget-boolean v4, v2, Lcom/android/server/notification/NotificationRecord;->mPendingLogUpdate:Z

    if-eqz v4, :cond_132

    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecordExtractorData;

    invoke-virtual {v4, v2, v9}, Lcom/android/server/notification/NotificationRecordExtractorData;->hasDiffForLoggingLocked(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_12f

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    iget-object v6, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_107

    :goto_105
    move-object v11, v7

    goto :goto_119

    :cond_107
    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    if-nez v6, :cond_112

    goto :goto_105

    :cond_112
    iget-object v6, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v6

    move-object v11, v6

    :goto_119
    check-cast v4, Lcom/android/server/notification/NotificationRecordLoggerImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;

    invoke-direct {v4, v2, v7}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;-><init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    new-instance v6, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;

    sget-object v8, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->NOTIFICATION_ADJUSTED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    const/4 v10, 0x0

    move-object v7, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;-><init>(Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;IILcom/android/internal/logging/InstanceId;)V

    invoke-static {v6}, Lcom/android/server/notification/NotificationRecordLoggerImpl;->writeNotificationReportedAtom(Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V

    :cond_12f
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/notification/NotificationRecord;->mPendingLogUpdate:Z

    :cond_132
    :goto_132
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_aa

    :cond_136
    monitor-exit v3

    return-void

    :goto_138
    monitor-exit v3
    :try_end_139
    .catchall {:try_start_1b .. :try_end_139} :catchall_9d

    throw v0

    :cond_13a
    const/16 v26, 0x1

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v1, Lcom/android/server/notification/RankingReconsideration;

    if-nez v2, :cond_148

    goto/16 :goto_21d

    :cond_148
    check-cast v1, Lcom/android/server/notification/RankingReconsideration;

    invoke-virtual {v1}, Lcom/android/server/notification/RankingReconsideration;->run()V

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_150
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v4, v1, Lcom/android/server/notification/RankingReconsideration;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    if-nez v3, :cond_161

    monitor-exit v2

    return-void

    :catchall_15e
    move-exception v0

    goto/16 :goto_221

    :cond_161
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-static {v5, v3, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    iget-boolean v5, v3, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    iget v6, v3, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    iget-boolean v7, v3, Lcom/android/server/notification/NotificationRecord;->mIsInterruptive:Z

    invoke-virtual {v1, v3}, Lcom/android/server/notification/RankingReconsideration;->applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v8, v1, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_179
    .catchall {:try_start_150 .. :try_end_179} :catchall_15e

    :try_start_179
    iget-object v9, v1, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    iget v10, v1, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v1, v1, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v9, v10, v1, v3}, Lcom/android/server/notification/ZenModeFiltering;->shouldIntercept(ILandroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    monitor-exit v8
    :try_end_184
    .catchall {:try_start_179 .. :try_end_184} :catchall_21e

    :try_start_184
    iput-boolean v1, v3, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    move/from16 v8, v26

    iput-boolean v8, v3, Lcom/android/server/notification/NotificationRecord;->mInterceptSet:Z

    if-eqz v1, :cond_19a

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v1, v1, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1}, Landroid/app/NotificationManager$Policy;->copy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    iget v1, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iput v1, v3, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    const/4 v1, 0x0

    goto :goto_19d

    :cond_19a
    const/4 v1, 0x0

    iput v1, v3, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    :goto_19d
    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget-object v9, v9, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-static {v10, v3, v9}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v9

    if-eq v4, v9, :cond_1b2

    move v4, v8

    goto :goto_1b3

    :cond_1b2
    move v4, v1

    :goto_1b3
    iget-boolean v9, v3, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    if-eq v5, v9, :cond_1b9

    move v10, v8

    goto :goto_1ba

    :cond_1b9
    move v10, v1

    :goto_1ba
    iget v11, v3, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    if-eq v6, v11, :cond_1c0

    move v6, v8

    goto :goto_1c1

    :cond_1c0
    move v6, v1

    :goto_1c1
    iget-boolean v11, v3, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    if-eqz v11, :cond_1cb

    iget-boolean v11, v3, Lcom/android/server/notification/NotificationRecord;->mIsInterruptive:Z

    if-eq v7, v11, :cond_1cb

    move v7, v8

    goto :goto_1cc

    :cond_1cb
    move v7, v1

    :goto_1cc
    if-nez v4, :cond_1d4

    if-nez v10, :cond_1d4

    if-nez v6, :cond_1d4

    if-eqz v7, :cond_1d5

    :cond_1d4
    move v1, v8

    :cond_1d5
    if-eqz v5, :cond_20a

    if-nez v9, :cond_20a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    const/16 v5, 0x7d0

    if-gt v4, v5, :cond_20a

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    new-instance v5, Lcom/android/server/notification/NotificationAttentionHelper$Signals;

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    iget-object v7, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v6

    iget v7, v0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    invoke-direct {v5, v7, v6}, Lcom/android/server/notification/NotificationAttentionHelper$Signals;-><init>(IZ)V

    invoke-virtual {v4, v3, v5}, Lcom/android/server/notification/NotificationAttentionHelper;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)I

    sget-object v4, Lcom/android/server/notification/ZenLog;->STATE_CHANGES:Landroid/util/LocalLog;

    iget-object v3, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x15

    invoke-static {v4, v3}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    :cond_20a
    monitor-exit v2
    :try_end_20b
    .catchall {:try_start_184 .. :try_end_20b} :catchall_15e

    if-eqz v1, :cond_21d

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_21d

    invoke-static {v0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_21d
    :goto_21d
    return-void

    :catchall_21e
    move-exception v0

    :try_start_21f
    monitor-exit v8
    :try_end_220
    .catchall {:try_start_21f .. :try_end_220} :catchall_21e

    :try_start_220
    throw v0

    :goto_221
    monitor-exit v2
    :try_end_222
    .catchall {:try_start_220 .. :try_end_222} :catchall_15e

    throw v0
.end method

.method public final requestSort()V
    .registers 3

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
