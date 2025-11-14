.class public final Lcom/android/server/notification/EventConditionProvider$4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/EventConditionProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/EventConditionProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/EventConditionProvider$4;->this$0:Lcom/android/server/notification/EventConditionProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/EventConditionProvider$4;->this$0:Lcom/android/server/notification/EventConditionProvider;

    sget-boolean v1, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "ConditionProviders.ECP"

    const-string/jumbo v3, "evaluateSubscriptions"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, v0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_10

    const-string v0, "ConditionProviders.ECP"

    const-string/jumbo v1, "Skipping evaluate before boot complete"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    monitor-enter v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    :try_start_0
    iget-object v7, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    iget-object v7, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/CalendarTracker;

    iget-object v9, v0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    iget-object v8, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackerCallback:Lcom/android/server/notification/EventConditionProvider$2;

    :goto_1
    invoke-virtual {v7, v8}, Lcom/android/server/notification/CalendarTracker;->setCallback(Lcom/android/server/notification/EventConditionProvider$2;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_3
    iget-object v6, v0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/android/server/notification/EventConditionProvider;->setRegistered(Z)V

    iget-object v6, v0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-wide/16 v11, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    invoke-static {v13}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v14

    if-nez v14, :cond_4

    invoke-static {v5, v13}, Lcom/android/server/notification/EventConditionProvider;->createCondition(ILandroid/net/Uri;)Landroid/service/notification/Condition;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v10, v6

    const-wide/16 v16, 0x0

    goto/16 :goto_6

    :cond_4
    iget-object v15, v14, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    if-nez v15, :cond_7

    move v15, v5

    const/4 v8, 0x0

    const-wide/16 v16, 0x0

    :goto_3
    iget-object v9, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v15, v9, :cond_6

    iget-object v9, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/notification/CalendarTracker;

    invoke-virtual {v9, v14, v1, v2}, Lcom/android/server/notification/CalendarTracker;->checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    move-result-object v9

    if-nez v8, :cond_5

    move-object v10, v6

    move-object v8, v9

    goto :goto_4

    :cond_5
    iget-boolean v10, v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    iget-boolean v7, v9, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    or-int/2addr v7, v10

    iput-boolean v7, v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    move-object v10, v6

    iget-wide v5, v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    move-object/from16 v18, v8

    iget-wide v7, v9, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    move-object/from16 v8, v18

    iput-wide v5, v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-object v6, v10

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    move-object v10, v6

    goto :goto_5

    :cond_7
    move-object v10, v6

    const-wide/16 v16, 0x0

    iget v5, v14, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig$EventInfo;->resolveUserId(I)I

    move-result v5

    iget-object v6, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/CalendarTracker;

    if-nez v6, :cond_8

    const-string v6, "ConditionProviders.ECP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No calendar tracker found for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " and calendar = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v14, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    invoke-static {v7, v13}, Lcom/android/server/notification/EventConditionProvider;->createCondition(ILandroid/net/Uri;)Landroid/service/notification/Condition;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    invoke-virtual {v6, v14, v1, v2}, Lcom/android/server/notification/CalendarTracker;->checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    move-result-object v8

    :goto_5
    if-nez v8, :cond_9

    const-string v5, "ConditionProviders.ECP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No CheckEventResult for userId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v14, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", calId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v14, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", calName="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v14, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; trackers count is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    invoke-static {v7, v13}, Lcom/android/server/notification/EventConditionProvider;->createCondition(ILandroid/net/Uri;)Landroid/service/notification/Condition;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    move-object v6, v10

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_9
    iget-wide v5, v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v9, v5, v16

    if-eqz v9, :cond_b

    cmp-long v9, v11, v16

    if-eqz v9, :cond_a

    cmp-long v9, v5, v11

    if-gez v9, :cond_b

    :cond_a
    move-wide v11, v5

    :cond_b
    iget-boolean v5, v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    if-nez v5, :cond_c

    const/4 v7, 0x0

    invoke-static {v7, v13}, Lcom/android/server/notification/EventConditionProvider;->createCondition(ILandroid/net/Uri;)Landroid/service/notification/Condition;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_7

    :cond_c
    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static {v5, v13}, Lcom/android/server/notification/EventConditionProvider;->createCondition(ILandroid/net/Uri;)Landroid/service/notification/Condition;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    move v6, v7

    move v7, v5

    move v5, v6

    move-object v6, v10

    goto/16 :goto_2

    :cond_d
    move v7, v5

    invoke-virtual {v0, v1, v2, v11, v12}, Lcom/android/server/notification/EventConditionProvider;->rescheduleAlarm(JJ)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v7

    :cond_e
    :goto_8
    if-ge v5, v4, :cond_f

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/service/notification/Condition;

    if-eqz v6, :cond_e

    invoke-virtual {v0, v6}, Landroid/service/notification/ConditionProviderService;->notifyCondition(Landroid/service/notification/Condition;)V

    goto :goto_8

    :cond_f
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string v0, "ConditionProviders.ECP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "evaluateSubscriptions took "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void

    :goto_9
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
