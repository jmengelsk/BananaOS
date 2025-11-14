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
    .registers 7

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
    .registers 7

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
    .registers 19

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

    :try_start_37
    iget-object v13, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/notification/NotificationManagerService;

    iget-object v13, v13, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget-object v14, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    invoke-static {v14, v13}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$smfindNotificationByListLocked(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v13

    if-nez v13, :cond_96

    const-string/jumbo v0, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_37 .. :try_end_59} :catchall_91

    :try_start_59
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v12

    :goto_64
    if-ge v2, v0, :cond_8f

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

    if-eqz v3, :cond_8c

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_8f

    :catchall_88
    move-exception v0

    move-object v12, v11

    goto/16 :goto_7fa

    :cond_8c
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    :cond_8f
    :goto_8f
    monitor-exit v11
    :try_end_90
    .catchall {:try_start_59 .. :try_end_90} :catchall_88

    return v12

    :catchall_91
    move-exception v0

    move v10, v12

    move-object v12, v11

    goto/16 :goto_7c9

    :cond_96
    :try_start_96
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    const/4 v15, 0x1

    if-eqz v10, :cond_ab

    const-class v10, Landroid/app/Notification$CallStyle;

    invoke-virtual {v14, v10}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_ab

    move v10, v15

    goto :goto_ac

    :cond_ab
    move v10, v12

    :goto_ac
    invoke-virtual {v14}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v16

    if-nez v16, :cond_116

    if-nez v10, :cond_116

    if-eqz v9, :cond_c0

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v13}, Lcom/android/server/notification/NotificationManagerService;->isRecordBlockedLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v9

    if-eqz v9, :cond_116

    :cond_c0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, v13}, Lcom/android/server/notification/NotificationUsageStats;->registerBlocked(Lcom/android/server/notification/NotificationRecord;)V

    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_e3

    const-string/jumbo v0, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$info:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e3
    .catchall {:try_start_96 .. :try_end_e3} :catchall_91

    :cond_e3
    :try_start_e3
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v12

    :goto_ee
    if-ge v2, v0, :cond_8f

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

    if-eqz v3, :cond_113

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_111
    .catchall {:try_start_e3 .. :try_end_111} :catchall_88

    goto/16 :goto_8f

    :cond_113
    add-int/lit8 v2, v2, 0x1

    goto :goto_ee

    :cond_116
    :try_start_116
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    invoke-virtual {v7, v13}, Lcom/android/server/notification/GroupHelper;->isUpdateForCanceledSummary(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v7

    if-eqz v7, :cond_196

    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_138

    const-string/jumbo v0, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_138
    iget-object v0, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    if-eqz v2, :cond_163

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_163

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_163
    .catchall {:try_start_116 .. :try_end_163} :catchall_91

    :cond_163
    :try_start_163
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v12

    :goto_16e
    if-ge v2, v0, :cond_8f

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

    if-eqz v3, :cond_193

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_191
    .catchall {:try_start_163 .. :try_end_191} :catchall_88

    goto/16 :goto_8f

    :cond_193
    add-int/lit8 v2, v2, 0x1

    goto :goto_16e

    :cond_196
    :try_start_196
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v7

    if-eqz v7, :cond_212

    const-string/jumbo v7, "ranker_group"

    invoke-virtual {v14}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_212

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

    if-eqz v6, :cond_212

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
    :try_end_1df
    .catchall {:try_start_196 .. :try_end_1df} :catchall_91

    :try_start_1df
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v12

    :goto_1ea
    if-ge v2, v0, :cond_8f

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

    if-eqz v3, :cond_20f

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_20d
    .catchall {:try_start_1df .. :try_end_20d} :catchall_88

    goto/16 :goto_8f

    :cond_20f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1ea

    :cond_212
    :try_start_212
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

    if-eqz v5, :cond_234

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v5, v13}, Lcom/android/server/notification/NotificationUsageStats;->registerSuspendedByAdmin(Lcom/android/server/notification/NotificationRecord;)V

    :cond_234
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    if-eqz v5, :cond_25b

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v6

    if-nez v6, :cond_24f

    goto :goto_25b

    :cond_24f
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/service/notification/StatusBarNotification;->setInstanceId(Lcom/android/internal/logging/InstanceId;)V

    goto :goto_26a

    :cond_25b
    :goto_25b
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationInstanceIdSequence(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/InstanceIdSequence;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/service/notification/StatusBarNotification;->setInstanceId(Lcom/android/internal/logging/InstanceId;)V

    :goto_26a
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;)I

    move-result v6
    :try_end_276
    .catchall {:try_start_212 .. :try_end_276} :catchall_91

    if-gez v6, :cond_2e5

    :try_start_278
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

    if-eqz v7, :cond_2d1

    invoke-virtual {v7, v13}, Lcom/android/server/notification/NotificationReminder;->addNotificationRecord(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_2d1

    :catchall_2cc
    move-exception v0

    move-object v12, v11

    :goto_2ce
    const/4 v10, 0x0

    goto/16 :goto_7c9

    :cond_2d1
    :goto_2d1
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/notification/NotificationManagerService;

    const/4 v8, 0x0

    invoke-static {v7, v8, v13, v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misNeedSaveHistory(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v6

    if-eqz v6, :cond_2e2

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    iput-boolean v15, v6, Lcom/android/server/notification/NotificationManagerService;->mIsInterruptivePostNotif:Z

    :cond_2e2
    move-object v12, v11

    goto/16 :goto_36a

    :cond_2e5
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
    :try_end_320
    .catchall {:try_start_278 .. :try_end_320} :catchall_2cc

    move-object v12, v11

    :try_start_321
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

    if-eqz v6, :cond_349

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->resetRankingTime()V

    goto :goto_349

    :catchall_347
    move-exception v0

    goto :goto_2ce

    :cond_349
    :goto_349
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7, v5, v13, v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misNeedSaveHistory(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v6

    if-eqz v6, :cond_359

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    iput-boolean v15, v6, Lcom/android/server/notification/NotificationManagerService;->mIsInterruptivePostNotif:Z

    :cond_359
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6, v5, v13}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misNeedDeletePrevHistory(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v6

    if-eqz v6, :cond_36a

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fputmNeedDeletePrevHistory(Lcom/android/server/notification/NotificationManagerService;)V

    :cond_36a
    :goto_36a
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

    if-eqz v6, :cond_3c2

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmMaxNotiLimitCount(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v7

    if-lt v6, v7, :cond_3c2

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

    :cond_3c2
    iget v4, v14, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v4, 0x40

    if-eqz v6, :cond_3cc

    or-int/lit8 v4, v4, 0x20

    iput v4, v14, Landroid/app/Notification;->flags:I

    :cond_3cc
    invoke-virtual {v14}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    if-eqz v4, :cond_493

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4, v13}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misCritical(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v4

    if-nez v4, :cond_493

    if-eqz v5, :cond_3e3

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    goto :goto_3e4

    :cond_3e3
    move-object v7, v8

    :goto_3e4
    if-eqz v7, :cond_454

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_454

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

    if-eqz v4, :cond_454

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->flags:I

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->flags:I

    if-ne v4, v6, :cond_454

    iget-object v4, v5, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v13, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_454

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

    if-eq v4, v6, :cond_44a

    goto :goto_454

    :cond_44a
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    invoke-virtual {v4, v13}, Lcom/android/server/notification/GroupHelper;->onNotificationUpdate(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_493

    :cond_454
    :goto_454
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_45b
    .catchall {:try_start_321 .. :try_end_45b} :catchall_347

    :try_start_45b
    invoke-static {v13}, Lcom/android/server/notification/GroupHelper;->getFullAggregateGroupKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v7, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    invoke-static {v7, v13}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhasAutoGroupSummaryLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v7

    invoke-virtual {v9, v13, v7}, Lcom/android/server/notification/GroupHelper;->onNotificationPosted(Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v7

    if-eqz v7, :cond_47c

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v6, v10}, Lcom/android/server/notification/NotificationManagerService;->addAutogroupKeyLocked(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_48f

    :catchall_47a
    move-exception v0

    goto :goto_491

    :cond_47c
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v7, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda0;

    const/4 v9, 0x2

    invoke-direct {v7, v9, v1}, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    const-wide/16 v10, 0xbb8

    invoke-virtual {v6, v7, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :goto_48f
    monitor-exit v4

    goto :goto_493

    :goto_491
    monitor-exit v4
    :try_end_492
    .catchall {:try_start_45b .. :try_end_492} :catchall_47a

    :try_start_492
    throw v0

    :cond_493
    :goto_493
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

    if-eqz v6, :cond_705

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_4de

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mIsDisableHunByCall:Z

    if-eqz v0, :cond_4de

    const-string/jumbo v0, "NotificationService"

    const-string v2, "Disable HeadsUp by Call"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v14, Landroid/app/Notification;->semFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v14, Landroid/app/Notification;->semFlags:I

    move v0, v15

    goto :goto_4df

    :cond_4de
    const/4 v0, 0x0

    :goto_4df
    if-nez v0, :cond_54f

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmSmartPopupEnable(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v2

    if-eqz v2, :cond_54f

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmMultiStarEnable(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v2

    if-eqz v2, :cond_54f

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;

    if-eqz v2, :cond_54f

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

    if-nez v2, :cond_538

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54f

    :cond_538
    const-string/jumbo v2, "call"

    invoke-virtual {v13, v2}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_54f

    const-class v2, Landroid/app/Notification$CallStyle;

    invoke-virtual {v14, v2}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_54f

    iget v2, v14, Landroid/app/Notification;->semFlags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v14, Landroid/app/Notification;->semFlags:I

    :cond_54f
    if-nez v0, :cond_69d

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;

    if-eqz v0, :cond_69d

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "isHeadUp"

    iget v3, v13, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    if-lt v3, v7, :cond_567

    move v3, v15

    goto :goto_568

    :cond_567
    const/4 v3, 0x0

    :goto_568
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "isUpdate"

    iget-boolean v3, v13, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "isInterrupt"

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v3

    if-eqz v3, :cond_59c

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v6}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/os/UserHandle;)Landroid/app/NotificationManager$Policy;

    move-result-object v3

    if-eqz v3, :cond_59c

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v3, v6}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/os/UserHandle;)Landroid/app/NotificationManager$Policy;

    move-result-object v3

    iget v3, v3, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_59c

    move v3, v15

    goto :goto_59d

    :cond_59c
    const/4 v3, 0x0

    :goto_59d
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

    if-eqz v2, :cond_5e3

    iget-boolean v2, v13, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    if-eqz v2, :cond_5dc

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmFoldState(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v3

    if-eqz v3, :cond_5dc

    const-string/jumbo v2, "NotificationService"

    const-string/jumbo v3, "Support sub display edge lighting and folded so edge lighting working"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_5dc
    const-string/jumbo v3, "bubble"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_5eb

    :cond_5e3
    const-string/jumbo v2, "bubble"

    iget-boolean v3, v13, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_5eb
    const-string/jumbo v2, "smartPopup"

    const/4 v10, 0x0

    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "canBypassDnd"

    iget-object v3, v13, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v2, v13, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    if-lt v2, v7, :cond_69d

    const-string/jumbo v2, "call"

    invoke-virtual {v13, v2}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68f

    iget-object v2, v14, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_611

    goto/16 :goto_68f

    :cond_611
    iget-boolean v2, v13, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    if-nez v2, :cond_641

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;

    move-object/from16 v3, v17

    invoke-virtual {v2, v3, v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->showForNotification(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_641

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

    goto :goto_69d

    :cond_641
    sget-boolean v0, Lcom/android/server/notification/NmRune;->NM_SUPPORT_CLEAR_COVER_NOTI_LIST:Z

    if-eqz v0, :cond_69d

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_69d

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_69d

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_667

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    if-nez v2, :cond_667

    move v7, v15

    goto :goto_668

    :cond_667
    const/4 v7, 0x0

    :goto_668
    if-eqz v0, :cond_66f

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    goto :goto_670

    :cond_66f
    const/4 v0, 0x2

    :goto_670
    if-eqz v7, :cond_69d

    const/16 v2, 0x11

    if-ne v0, v2, :cond_69d

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

    goto :goto_69d

    :cond_68f
    :goto_68f
    const-string/jumbo v0, "NotificationService"

    const-string v2, "Category call notification, so make not work edgelighting"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v14, Landroid/app/Notification;->semFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, v14, Landroid/app/Notification;->semFlags:I

    :cond_69d
    :goto_69d
    iget-boolean v0, v13, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    if-nez v0, :cond_6c5

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

    goto :goto_6c6

    :cond_6c5
    const/4 v7, 0x0

    :goto_6c6
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

    if-nez v3, :cond_6e0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_6f2

    :cond_6e0
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    if-nez v2, :cond_6eb

    goto :goto_6f2

    :cond_6eb
    iget-object v2, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v2

    move-object v8, v2

    :goto_6f2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v5, v4, v7, v8}, Lcom/android/server/notification/NotificationRecordLogger;->prepareToLogNotificationPosted(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    invoke-static {v2, v13, v5, v3, v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mnotifyListenersPostedAndLogLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V

    goto :goto_75b

    :cond_705
    move-object/from16 v3, v17

    const-string/jumbo v4, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_73d

    iget-boolean v2, v5, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-nez v2, :cond_73d

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

    :cond_73d
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

    :goto_75b
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;
    :try_end_761
    .catchall {:try_start_492 .. :try_end_761} :catchall_347

    if-eqz v0, :cond_76a

    const/4 v10, 0x0

    :try_start_764
    invoke-virtual {v0, v13, v10}, Lcom/android/server/notification/ShortcutHelper;->maybeListenForShortcutChangesForBubbles(Lcom/android/server/notification/NotificationRecord;Z)V

    goto :goto_76b

    :catchall_768
    move-exception v0

    goto :goto_7c9

    :cond_76a
    const/4 v10, 0x0

    :goto_76b
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

    if-eqz v2, :cond_794

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget-object v3, v2, Lcom/android/server/notification/SmartAlertController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/notification/SmartAlertController$2;

    invoke-direct {v4, v2, v0}, Lcom/android/server/notification/SmartAlertController$2;-><init>(Lcom/android/server/notification/SmartAlertController;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_794
    .catchall {:try_start_764 .. :try_end_794} :catchall_768

    :cond_794
    :try_start_794
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_79e
    if-ge v10, v0, :cond_7c7

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

    if-eqz v2, :cond_7c4

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7c7

    :catchall_7c2
    move-exception v0

    goto :goto_7fa

    :cond_7c4
    add-int/lit8 v10, v10, 0x1

    goto :goto_79e

    :cond_7c7
    :goto_7c7
    monitor-exit v12

    return v15

    :goto_7c9
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_7d3
    if-ge v10, v2, :cond_7f9

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

    if-nez v3, :cond_7f0

    add-int/lit8 v10, v10, 0x1

    goto :goto_7d3

    :cond_7f0
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_7f9
    throw v0

    :goto_7fa
    monitor-exit v12
    :try_end_7fb
    .catchall {:try_start_794 .. :try_end_7fb} :catchall_7c2

    throw v0
.end method

.method public final run()V
    .registers 5

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_84

    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->postNotification()Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_15
    .catchall {:try_start_5 .. :try_end_9} :catchall_13

    if-nez v0, :cond_1f

    :goto_b
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->cancel()V

    goto :goto_1f

    :catchall_13
    move-exception v0

    goto :goto_20

    :catch_15
    move-exception v0

    :try_start_16
    const-string/jumbo v1, "NotificationService"

    const-string v2, "Error posting"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_13

    goto :goto_b

    :cond_1f
    :goto_1f
    return-void

    :goto_20
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->cancel()V

    throw v0

    :pswitch_28  #0x1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$info:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    :try_start_30
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$id:I

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Landroid/service/notification/INotificationListener;->onEdgeNotificationPosted(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_55

    :catch_3c
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

    :goto_55
    return-void

    :pswitch_56  #0x0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$info:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    :try_start_5e
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$id:I

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Landroid/service/notification/INotificationListener;->onEdgeNotificationRemoved(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_69} :catch_6a

    goto :goto_83

    :catch_6a
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

    :goto_83
    return-void

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_56  #00000000
        :pswitch_28  #00000001
    .end packed-switch
.end method
