.class public final Lcom/android/server/notification/NotificationReminder$3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/notification/NotificationReminder;

.field public final synthetic val$record:Lcom/android/server/notification/NotificationRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationReminder;Lcom/android/server/notification/NotificationRecord;I)V
    .registers 4

    iput p3, p0, Lcom/android/server/notification/NotificationReminder$3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$3;->this$0:Lcom/android/server/notification/NotificationReminder;

    iput-object p2, p0, Lcom/android/server/notification/NotificationReminder$3;->val$record:Lcom/android/server/notification/NotificationRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget v0, p0, Lcom/android/server/notification/NotificationReminder$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_a4

    const-string/jumbo v0, "removeFromNotificationList record "

    iget-object v1, p0, Lcom/android/server/notification/NotificationReminder$3;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-object v1, v1, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_d
    const-string/jumbo v2, "NotificationReminder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder$3;->val$record:Lcom/android/server/notification/NotificationRecord;

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder$3;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-object v2, v0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/notification/NotificationReminder$3;->val$record:Lcom/android/server/notification/NotificationRecord;

    iget-object v3, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_3b
    if-ge v4, v0, :cond_59

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    iget-object v5, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    goto :goto_5a

    :cond_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :cond_59
    const/4 v0, 0x0

    :goto_5a
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$3;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-object v2, v2, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$3;->this$0:Lcom/android/server/notification/NotificationReminder;

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationReminder;->sendMessage(I)V

    monitor-exit v1

    return-void

    :catchall_6a
    move-exception p0

    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_d .. :try_end_6c} :catchall_6a

    throw p0

    :pswitch_6d  #0x0
    const-string/jumbo v0, "addNotificationRecord record "

    iget-object v1, p0, Lcom/android/server/notification/NotificationReminder$3;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-object v1, v1, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_75
    const-string/jumbo v2, "NotificationReminder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder$3;->val$record:Lcom/android/server/notification/NotificationRecord;

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder$3;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-object v0, v0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$3;->val$record:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$3;->this$0:Lcom/android/server/notification/NotificationReminder;

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationReminder;->sendMessage(I)V

    monitor-exit v1

    return-void

    :catchall_a1
    move-exception p0

    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_75 .. :try_end_a3} :catchall_a1

    throw p0

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_6d  #00000000
    .end packed-switch
.end method
