.class public final synthetic Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService;

    packed-switch v0, :pswitch_data_82

    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->registerConversationAppPolicyScpm()V

    return-void

    :pswitch_d  #0x1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1b
    if-ge v5, v4, :cond_70

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationHighlightCore:Lcom/android/server/notification/NotificationHighlightCore;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/android/server/notification/NotificationHighlightCore;->needToCheckNonImportantNotification(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v7

    if-nez v7, :cond_31

    goto :goto_1b

    :cond_31
    iget-wide v7, v6, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    sub-long v7, v1, v7

    const-wide/32 v9, 0xa4cb800

    cmp-long v7, v7, v9

    if-gez v7, :cond_5d

    const-string/jumbo v7, "NotificationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "skip 3th midnight is not passed package = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :catchall_5b
    move-exception p0

    goto :goto_72

    :cond_5d
    iget-object v7, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget v8, v7, Landroid/app/Notification;->semFlags:I

    const/high16 v9, 0x400000

    or-int/2addr v8, v9

    iput v8, v7, Landroid/app/Notification;->semFlags:I

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v7, v6, v6}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_1b

    :cond_70
    monitor-exit v0

    return-void

    :goto_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_10 .. :try_end_73} :catchall_5b

    throw p0

    :pswitch_74  #0x0
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    :goto_76
    const-wide/16 v0, 0x1388

    :try_start_78
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7b
    .catch Ljava/lang/InterruptedException; {:try_start_78 .. :try_end_7b} :catch_7b

    :catch_7b
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerService$18;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$18;->removeBitmaps()V

    goto :goto_76

    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_74  #00000000
        :pswitch_d  #00000001
    .end packed-switch
.end method
