.class public final Lcom/android/server/notification/NotificationManagerService$17$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$17;

.field public final synthetic val$conditions:[Landroid/service/notification/Condition;

.field public final synthetic val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService$17;Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$17$2;->this$1:Lcom/android/server/notification/NotificationManagerService$17;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$17$2;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$17$2;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$17$2;->val$conditions:[Landroid/service/notification/Condition;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$17$2;->this$1:Lcom/android/server/notification/NotificationManagerService$17;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$17$2;->val$pkg:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$17$2;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$17$2;->val$conditions:[Landroid/service/notification/Condition;

    const-string/jumbo v4, "notifyConditions pkg="

    iget-object v5, v1, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-boolean v6, v1, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " info="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " conditions="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_11

    :cond_1
    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/android/server/notification/ConditionProviders;->getValidConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;

    move-result-object v0

    if-eqz v0, :cond_17

    array-length v2, v0

    if-nez v2, :cond_2

    goto/16 :goto_10

    :cond_2
    array-length v2, v0

    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x1

    if-ge v6, v2, :cond_3

    aget-object v8, v0, v6

    iget-object v9, v8, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget-object v10, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v9, v10, v7}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v7

    iput-object v3, v7, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput-object v8, v7, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v2, v0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_16

    aget-object v11, v0, v5

    iget-object v6, v1, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ZenModeConditions;

    if-eqz v6, :cond_15

    iget-object v8, v11, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget v14, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    sget-boolean v9, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v9, :cond_4

    const-string/jumbo v9, "ZenModeHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "onConditionChanged "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v9, v6, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v9}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v9

    if-nez v9, :cond_5

    goto/16 :goto_e

    :cond_5
    iget-object v6, v6, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v10, 0x3e8

    if-ne v14, v10, :cond_6

    const/4 v10, 0x5

    :goto_4
    move v12, v10

    goto :goto_5

    :cond_6
    const/4 v10, 0x4

    goto :goto_4

    :goto_5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v10, "setAutomaticZenRuleStateFromConditionProvider"

    invoke-static {v12, v10}, Lcom/android/server/notification/ZenModeHelper;->checkSetRuleStateOrigin(ILjava/lang/String;)V

    iget-object v15, v6, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_1
    invoke-virtual {v6, v9}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v9

    if-nez v9, :cond_7

    monitor-exit v15

    goto/16 :goto_e

    :catchall_1
    move-exception v0

    goto/16 :goto_d

    :cond_7
    invoke-virtual {v9}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v13, v9, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v8, :cond_b

    if-eqz v13, :cond_b

    iget-object v4, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v4, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_6

    :cond_9
    iget-object v4, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_6

    :cond_a
    move v4, v7

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_d

    iget-object v4, v9, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    move/from16 v16, v7

    goto :goto_b

    :cond_d
    iget-object v4, v9, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v8, :cond_11

    if-eqz v13, :cond_11

    move/from16 v16, v7

    iget-object v7, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v7, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {v7, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_9

    :cond_f
    iget-object v7, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-virtual {v11, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_9

    :cond_10
    move/from16 v7, v16

    goto :goto_a

    :cond_11
    move/from16 v16, v7

    :goto_9
    const/4 v7, 0x0

    :goto_a
    if-eqz v7, :cond_12

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    move/from16 v7, v16

    goto :goto_8

    :goto_b
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_c
    if-ltz v4, :cond_14

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v6, v7, v14}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result v7

    if-nez v7, :cond_13

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_13
    add-int/lit8 v4, v4, -0x1

    goto :goto_c

    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAzrStateFromCps: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v8, v6

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;ILjava/lang/String;I)V

    monitor-exit v15

    goto :goto_f

    :goto_d
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_15
    :goto_e
    move/from16 v16, v7

    :goto_f
    add-int/lit8 v5, v5, 0x1

    move/from16 v7, v16

    goto/16 :goto_3

    :cond_16
    return-void

    :cond_17
    :goto_10
    :try_start_2
    monitor-exit v5

    return-void

    :goto_11
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
