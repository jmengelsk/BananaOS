.class public final Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Ljava/lang/Object;

.field public final val$extra:Ljava/lang/Object;

.field public final val$id:I

.field public final val$info:Ljava/lang/Object;

.field public final val$pkg:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;ILandroid/os/Bundle;I)V
    .locals 0

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$info:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$id:I

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$info:Ljava/lang/Object;

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$id:I

    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public postNotification()Z
    .locals 18

    move-object/from16 v1, p0

    const-string/jumbo v0, "WARNING: In a future release this will crash the app: "

    const-string/jumbo v2, "Not posting notification without small icon: "

    const-string/jumbo v3, "MultiStar Ghost Floatiog on, List = "

    const-string/jumbo v4, "postNotification postAtFrontOfQueue key = "

    const-string/jumbo v5, "There are not grouped notifications. groupKey:"

    const-string/jumbo v6, "Suppressing notification because summary was canceled: "

    const-string/jumbo v7, "Suppressing notification from package "

    const-string v8, "Cannot find enqueued record for key: "

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/notification/NotificationManagerService;

    iget v10, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$id:I

    invoke-static {v9, v10}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mareNotificationsEnabledForPackageInt(Lcom/android/server/notification/NotificationManagerService;I)Z

    move-result v9

    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/notification/NotificationManagerService;

    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$info:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misCallNotification(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Z

    move-result v10

    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/notification/NotificationManagerService;

    iget-object v11, v11, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v11

    const/4 v12, 0x0

    :try_start_0
    iget-object v13, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/notification/NotificationManagerService;

    iget-object v13, v13, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget-object v14, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    invoke-static {v14, v13}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$smfindNotificationByListLocked(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v13

    if-nez v13, :cond_2

    const-string/jumbo v0, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v12

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v12, v11

    goto/16 :goto_21

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v12

    :catchall_1
    move-exception v0

    move v10, v12

    move-object v12, v11

    goto/16 :goto_1f

    :cond_2
    :try_start_2
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    const/4 v15, 0x1

    if-eqz v10, :cond_3

    const-class v10, Landroid/app/Notification$CallStyle;

    invoke-virtual {v14, v10}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v10, v15

    goto :goto_2

    :cond_3
    move v10, v12

    :goto_2
    invoke-virtual {v14}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v16

    if-nez v16, :cond_7

    if-nez v10, :cond_7

    if-eqz v9, :cond_4

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v13}, Lcom/android/server/notification/NotificationManagerService;->isRecordBlockedLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_4
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, v13}, Lcom/android/server/notification/NotificationUsageStats;->registerBlocked(Lcom/android/server/notification/NotificationRecord;)V

    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$info:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    :try_start_3
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v12

    :goto_3
    if-ge v2, v0, :cond_1

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    :try_start_4
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    invoke-virtual {v7, v13}, Lcom/android/server/notification/GroupHelper;->isUpdateForCanceledSummary(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v0, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_9
    :try_start_5
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v12

    :goto_4
    if-ge v2, v0, :cond_1

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    :try_start_6
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v7

    if-eqz v7, :cond_d

    const-string/jumbo v7, "ranker_group"

    invoke-virtual {v14}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v10

    invoke-virtual {v7, v10, v6, v9}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationsLocked(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d

    const-string/jumbo v0, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v12

    :goto_5
    if-ge v2, v0, :cond_1

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_d
    :try_start_8
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v7

    invoke-virtual {v5, v7, v6}, Lcom/android/server/notification/NotificationManagerService;->isPackagePausedOrSuspended(ILjava/lang/String;)Z

    move-result v5

    invoke-virtual {v13, v5}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    if-eqz v5, :cond_e

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v5, v13}, Lcom/android/server/notification/NotificationUsageStats;->registerSuspendedByAdmin(Lcom/android/server/notification/NotificationRecord;)V

    :cond_e
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v6

    if-nez v6, :cond_f

    goto :goto_6

    :cond_f
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/service/notification/StatusBarNotification;->setInstanceId(Lcom/android/internal/logging/InstanceId;)V

    goto :goto_7

    :cond_10
    :goto_6
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationInstanceIdSequence(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/InstanceIdSequence;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/service/notification/StatusBarNotification;->setInstanceId(Lcom/android/internal/logging/InstanceId;)V

    :goto_7
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;)I

    move-result v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-gez v6, :cond_13

    :try_start_9
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v6, v13}, Lcom/android/server/notification/NotificationUsageStats;->registerPostedByApp(Lcom/android/server/notification/NotificationRecord;)V

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v10

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    iget-object v12, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    move-object/from16 v17, v8

    iget-wide v7, v12, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mStartTime:J

    invoke-virtual {v6, v9, v10, v7, v8}, Landroid/app/usage/UsageStatsManagerInternal;->reportNotificationPosted(Ljava/lang/String;Landroid/os/UserHandle;J)V

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v13}, Lcom/android/server/notification/NotificationManagerService;->isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v6

    invoke-virtual {v13, v6}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    iput-boolean v6, v13, Lcom/android/server/notification/NotificationRecord;->mTextChanged:Z

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7, v13}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mpostedNotificationLog(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mNotificationReminder:Lcom/android/server/notification/NotificationReminder;

    if-eqz v7, :cond_11

    invoke-virtual {v7, v13}, Lcom/android/server/notification/NotificationReminder;->addNotificationRecord(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v12, v11

    :goto_8
    const/4 v10, 0x0

    goto/16 :goto_1f

    :cond_11
    :goto_9
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/notification/NotificationManagerService;

    const/4 v8, 0x0

    invoke-static {v7, v8, v13, v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misNeedSaveHistory(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    iput-boolean v15, v6, Lcom/android/server/notification/NotificationManagerService;->mIsInterruptivePostNotif:Z

    :cond_12
    move-object v12, v11

    goto/16 :goto_b

    :cond_13
    move-object/from16 v17, v8

    const/4 v8, 0x0

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v6, v13, v5}, Lcom/android/server/notification/NotificationUsageStats;->registerUpdatedByApp(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v12, v11

    :try_start_a
    iget-wide v10, v10, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mStartTime:J

    invoke-virtual {v6, v7, v9, v10, v11}, Landroid/app/usage/UsageStatsManagerInternal;->reportNotificationUpdated(Ljava/lang/String;Landroid/os/UserHandle;J)V

    iget v6, v14, Landroid/app/Notification;->flags:I

    iget-object v7, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget v7, v7, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x40

    or-int/2addr v6, v7

    iput v6, v14, Landroid/app/Notification;->flags:I

    iput-boolean v15, v13, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6, v5, v13}, Lcom/android/server/notification/NotificationManagerService;->isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v6

    iput-boolean v6, v13, Lcom/android/server/notification/NotificationRecord;->mTextChanged:Z

    if-eqz v6, :cond_14

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->resetRankingTime()V

    goto :goto_a

    :catchall_3
    move-exception v0

    goto :goto_8

    :cond_14
    :goto_a
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7, v5, v13, v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misNeedSaveHistory(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    iput-boolean v15, v6, Lcom/android/server/notification/NotificationManagerService;->mIsInterruptivePostNotif:Z

    :cond_15
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6, v5, v13}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misNeedDeletePrevHistory(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fputmNeedDeletePrevHistory(Lcom/android/server/notification/NotificationManagerService;)V

    :cond_16
    :goto_b
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmIsMaxNotiLimitEnabled(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmMaxNotiLimitCount(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v7

    if-lt v6, v7, :cond_17

    const-string/jumbo v7, "NotificationService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", count = "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda0;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v1}, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_17
    iget v4, v14, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v4, 0x40

    if-eqz v6, :cond_18

    or-int/lit8 v4, v4, 0x20

    iput v4, v14, Landroid/app/Notification;->flags:I

    :cond_18
    invoke-virtual {v14}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    if-eqz v4, :cond_1d

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4, v13}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misCritical(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v4

    if-nez v4, :cond_1d

    if-eqz v5, :cond_19

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    goto :goto_c

    :cond_19
    move-object v7, v8

    :goto_c
    if-eqz v7, :cond_1b

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->flags:I

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->flags:I

    if-ne v4, v6, :cond_1b

    iget-object v4, v5, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v13, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.ongoingActivityNoti.style"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v6, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v9, "android.ongoingActivityNoti.style"

    invoke-virtual {v6, v9, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v4, v6, :cond_1a

    goto :goto_d

    :cond_1a
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    invoke-virtual {v4, v13}, Lcom/android/server/notification/GroupHelper;->onNotificationUpdate(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_10

    :cond_1b
    :goto_d
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-static {v13}, Lcom/android/server/notification/GroupHelper;->getFullAggregateGroupKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v7, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    invoke-static {v7, v13}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhasAutoGroupSummaryLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v7

    invoke-virtual {v9, v13, v7}, Lcom/android/server/notification/GroupHelper;->onNotificationPosted(Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v7

    if-eqz v7, :cond_1c

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v6, v10}, Lcom/android/server/notification/NotificationManagerService;->addAutogroupKeyLocked(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_e

    :catchall_4
    move-exception v0

    goto :goto_f

    :cond_1c
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v7, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda0;

    const/4 v9, 0x2

    invoke-direct {v7, v9, v1}, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    const-wide/16 v10, 0xbb8

    invoke-virtual {v6, v7, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :goto_e
    monitor-exit v4

    goto :goto_10

    :goto_f
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    throw v0

    :cond_1d
    :goto_10
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v4, v13}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v4, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v4, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v13}, Lcom/android/server/notification/RankingHelper;->indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I

    move-result v4

    invoke-virtual {v14}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    const/4 v7, 0x4

    if-eqz v6, :cond_2e

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mIsDisableHunByCall:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "NotificationService"

    const-string v2, "Disable HeadsUp by Call"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v14, Landroid/app/Notification;->semFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v14, Landroid/app/Notification;->semFlags:I

    move v0, v15

    goto :goto_11

    :cond_1e
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_20

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmSmartPopupEnable(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmMultiStarEnable(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;

    if-eqz v2, :cond_20

    const-string/jumbo v2, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;

    const-string/jumbo v3, "all"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1f
    const-string/jumbo v2, "call"

    invoke-virtual {v13, v2}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    const-class v2, Landroid/app/Notification$CallStyle;

    invoke-virtual {v14, v2}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_20

    iget v2, v14, Landroid/app/Notification;->semFlags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v14, Landroid/app/Notification;->semFlags:I

    :cond_20
    if-nez v0, :cond_2a

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;

    if-eqz v0, :cond_2a

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "isHeadUp"

    iget v3, v13, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    if-lt v3, v7, :cond_21

    move v3, v15

    goto :goto_12

    :cond_21
    const/4 v3, 0x0

    :goto_12
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "isUpdate"

    iget-boolean v3, v13, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "isInterrupt"

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v6}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/os/UserHandle;)Landroid/app/NotificationManager$Policy;

    move-result-object v3

    if-eqz v3, :cond_22

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v3, v6}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/os/UserHandle;)Landroid/app/NotificationManager$Policy;

    move-result-object v3

    iget v3, v3, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_22

    move v3, v15

    goto :goto_13

    :cond_22
    const/4 v3, 0x0

    :goto_13
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "visibility"

    iget-object v3, v13, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "sound"

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "vibrate"

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getVibration()Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-boolean v2, Lcom/android/server/notification/NmRune;->NM_SUPPORT_SUB_DISPLAY_EDGE_LIGHTING:Z

    if-eqz v2, :cond_24

    iget-boolean v2, v13, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    if-eqz v2, :cond_23

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmFoldState(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v3

    if-eqz v3, :cond_23

    const-string/jumbo v2, "NotificationService"

    const-string/jumbo v3, "Support sub display edge lighting and folded so edge lighting working"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_23
    const-string/jumbo v3, "bubble"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_14

    :cond_24
    const-string/jumbo v2, "bubble"

    iget-boolean v3, v13, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_14
    const-string/jumbo v2, "smartPopup"

    const/4 v10, 0x0

    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "canBypassDnd"

    iget-object v3, v13, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v2, v13, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    if-lt v2, v7, :cond_2a

    const-string/jumbo v2, "call"

    invoke-virtual {v13, v2}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    iget-object v2, v14, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_25

    goto/16 :goto_17

    :cond_25
    iget-boolean v2, v13, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    if-nez v2, :cond_26

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;

    move-object/from16 v3, v17

    invoke-virtual {v2, v3, v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->showForNotification(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string/jumbo v0, "NotificationService"

    const-string v2, "Changed notification by edgelighting."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v14, Landroid/app/Notification;->semFlags:I

    or-int/lit16 v0, v0, 0x2008

    iput v0, v14, Landroid/app/Notification;->semFlags:I

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mreceiveFollowedNotification(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    goto :goto_18

    :cond_26
    sget-boolean v0, Lcom/android/server/notification/NmRune;->NM_SUPPORT_CLEAR_COVER_NOTI_LIST:Z

    if-eqz v0, :cond_2a

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    if-nez v2, :cond_27

    move v7, v15

    goto :goto_15

    :cond_27
    const/4 v7, 0x0

    :goto_15
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    goto :goto_16

    :cond_28
    const/4 v0, 0x2

    :goto_16
    if-eqz v7, :cond_2a

    const/16 v2, 0x11

    if-ne v0, v2, :cond_2a

    const-string/jumbo v0, "NotificationService"

    const-string/jumbo v2, "clear view cover is closed, so cancel delayed wakelock"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mreceiveFollowedNotification(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    goto :goto_18

    :cond_29
    :goto_17
    const-string/jumbo v0, "NotificationService"

    const-string v2, "Category call notification, so make not work edgelighting"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v14, Landroid/app/Notification;->semFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, v14, Landroid/app/Notification;->semFlags:I

    :cond_2a
    :goto_18
    iget-boolean v0, v13, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    if-nez v0, :cond_2b

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    new-instance v3, Lcom/android/server/notification/NotificationAttentionHelper$Signals;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v0

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v0

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListenerHints(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v6

    invoke-direct {v3, v6, v0}, Lcom/android/server/notification/NotificationAttentionHelper$Signals;-><init>(IZ)V

    invoke-virtual {v2, v13, v3}, Lcom/android/server/notification/NotificationAttentionHelper;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)I

    move-result v7

    goto :goto_19

    :cond_2b
    const/4 v7, 0x0

    :goto_19
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationRecordLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationRecordLogger;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2c

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1a

    :cond_2c
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    if-nez v2, :cond_2d

    goto :goto_1a

    :cond_2d
    iget-object v2, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v2

    move-object v8, v2

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v5, v4, v7, v8}, Lcom/android/server/notification/NotificationRecordLogger;->prepareToLogNotificationPosted(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    invoke-static {v2, v13, v5, v3, v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mnotifyListenersPostedAndLogLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V

    goto :goto_1b

    :cond_2e
    move-object/from16 v3, v17

    const-string/jumbo v4, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_2f

    iget-boolean v2, v5, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-nez v2, :cond_2f

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v4

    invoke-virtual {v2, v13, v7, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v4, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda7;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v1, v13}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2f
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v13}, Lcom/android/server/notification/NotificationManagerService;->notifyCallNotificationEventListenerOnRemoved(Lcom/android/server/notification/NotificationRecord;)V

    const-string/jumbo v2, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    :goto_1b
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v0, :cond_30

    const/4 v10, 0x0

    :try_start_d
    invoke-virtual {v0, v13, v10}, Lcom/android/server/notification/ShortcutHelper;->maybeListenForShortcutChangesForBubbles(Lcom/android/server/notification/NotificationRecord;Z)V

    goto :goto_1c

    :catchall_5
    move-exception v0

    goto :goto_1f

    :cond_30
    const/4 v10, 0x0

    :goto_1c
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v13}, Lcom/android/server/notification/NotificationManagerService;->maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v13}, Lcom/android/server/notification/NotificationManagerService;->maybeRegisterMessageSent(Lcom/android/server/notification/NotificationRecord;)V

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v13}, Lcom/android/server/notification/NotificationManagerService;->maybeReportForegroundServiceUpdate(Lcom/android/server/notification/NotificationRecord;)V

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mSmartAlertController:Lcom/android/server/notification/SmartAlertController;

    if-eqz v2, :cond_31

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget-object v3, v2, Lcom/android/server/notification/SmartAlertController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/notification/SmartAlertController$2;

    invoke-direct {v4, v2, v0}, Lcom/android/server/notification/SmartAlertController$2;-><init>(Lcom/android/server/notification/SmartAlertController;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :cond_31
    :try_start_e
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1d
    if-ge v10, v0, :cond_33

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1e

    :catchall_6
    move-exception v0

    goto :goto_21

    :cond_32
    add-int/lit8 v10, v10, 0x1

    goto :goto_1d

    :cond_33
    :goto_1e
    monitor-exit v12

    return v15

    :goto_1f
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_20
    if-ge v10, v2, :cond_35

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    add-int/lit8 v10, v10, 0x1

    goto :goto_20

    :cond_34
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_35
    throw v0

    :goto_21
    monitor-exit v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v0
.end method

.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->postNotification()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->cancel()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "NotificationService"

    const-string v2, "Error posting"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->cancel()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$info:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    :try_start_2
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$id:I

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Landroid/service/notification/INotificationListener;->onEdgeNotificationPosted(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unable to notify listener (posted): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$info:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$id:I

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Landroid/service/notification/INotificationListener;->onEdgeNotificationRemoved(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unable to notify listener (posted): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
