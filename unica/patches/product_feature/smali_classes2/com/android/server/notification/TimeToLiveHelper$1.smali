.class public final Lcom/android/server/notification/TimeToLiveHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/TimeToLiveHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/TimeToLiveHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/TimeToLiveHelper$1;->this$0:Lcom/android/server/notification/TimeToLiveHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    goto/16 :goto_bc

    :cond_8
    const-string/jumbo v0, "com.android.server.notification.TimeToLiveHelper"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bc

    iget-object p1, p0, Lcom/android/server/notification/TimeToLiveHelper$1;->this$0:Lcom/android/server/notification/TimeToLiveHelper;

    iget-object p1, p1, Lcom/android/server/notification/TimeToLiveHelper;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_16
    iget-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper$1;->this$0:Lcom/android/server/notification/TimeToLiveHelper;

    iget-object v0, v0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper$1;->this$0:Lcom/android/server/notification/TimeToLiveHelper;

    iget-object v0, v0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    const-string/jumbo v2, "key"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string/jumbo v2, "TimeToLiveHelper"

    const-string v3, "Alarm triggered but wasn\'t the earliest we were tracking"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    :catchall_45
    move-exception v0

    move-object p0, v0

    goto/16 :goto_ba

    :cond_49
    :goto_49
    iget-object v2, p0, Lcom/android/server/notification/TimeToLiveHelper$1;->this$0:Lcom/android/server/notification/TimeToLiveHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/notification/TimeToLiveHelper;->removeMatchingEntry(Ljava/lang/String;)V

    iget-object p2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    goto :goto_54

    :cond_53
    move-object p2, v1

    :goto_54
    monitor-exit p1
    :try_end_55
    .catchall {:try_start_16 .. :try_end_55} :catchall_45

    if-eqz p2, :cond_b1

    iget-object p0, p0, Lcom/android/server/notification/TimeToLiveHelper$1;->this$0:Lcom/android/server/notification/TimeToLiveHelper;

    iget-object p0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mNm:Lcom/android/server/notification/NotificationManagerService$3;

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_60
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p2

    if-eqz p2, :cond_98

    iget-object v0, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    iget-object v1, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v1

    iget-object v2, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    iget-object p2, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p2

    const/4 v5, 0x1

    move v10, p2

    move-object v6, v3

    move v7, v4

    move v3, v0

    move v4, v1

    move v0, v5

    move-object v5, v2

    goto :goto_9f

    :catchall_95
    move-exception v0

    move-object p0, v0

    goto :goto_af

    :cond_98
    const/4 v0, 0x0

    move v3, v0

    move v4, v3

    move v7, v4

    move v10, v7

    move-object v5, v1

    move-object v6, v5

    :goto_9f
    monitor-exit p1
    :try_end_a0
    .catchall {:try_start_60 .. :try_end_a0} :catchall_95

    if-eqz v0, :cond_bc

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/16 v11, 0x13

    const/4 v12, 0x0

    const v8, 0x8040

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void

    :goto_af
    :try_start_af
    monitor-exit p1
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_95

    throw p0

    :cond_b1
    const-string/jumbo p0, "TimeToLiveHelper"

    const-string p1, "Alarm triggered but should have been cleaned up already"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_ba
    :try_start_ba
    monitor-exit p1
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_45

    throw p0

    :cond_bc
    :goto_bc
    return-void
.end method
