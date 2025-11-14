.class public final Lcom/android/server/notification/TimeToLiveHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAm:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field final mKeys:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mNm:Lcom/android/server/notification/NotificationManagerService$3;

.field final mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService$3;Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/notification/TimeToLiveHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/notification/TimeToLiveHelper$1;-><init>(Lcom/android/server/notification/TimeToLiveHelper;)V

    iput-object v1, p0, Lcom/android/server/notification/TimeToLiveHelper;->mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/android/server/notification/TimeToLiveHelper;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/notification/TimeToLiveHelper;->mNm:Lcom/android/server/notification/NotificationManagerService$3;

    const-class p1, Landroid/app/AlarmManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/notification/TimeToLiveHelper;->mAm:Landroid/app/AlarmManager;

    monitor-enter v0

    :try_start_20
    new-instance p1, Ljava/util/TreeSet;

    new-instance v2, Lcom/android/server/notification/TimeToLiveHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {p1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    new-instance p0, Landroid/content/IntentFilter;

    const-string/jumbo p1, "com.android.server.notification.TimeToLiveHelper"

    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "timeout"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-virtual {p2, v1, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    :catchall_40
    move-exception p0

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p0
.end method


# virtual methods
.method public cancelScheduledTimeoutLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/TimeToLiveHelper;->removeMatchingEntry(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final getAlarmPendingIntent(ILjava/lang/String;)Landroid/app/PendingIntent;
    .registers 6

    const/high16 v0, 0x4000000

    or-int/2addr p1, v0

    iget-object p0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.server.notification.TimeToLiveHelper"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v2, "timeout"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p0, v0, p2, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public final maybeScheduleFirstAlarm()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/high16 v1, 0x8000000

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/TimeToLiveHelper;->getAlarmPendingIntent(ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/TimeToLiveHelper;->mAm:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 p0, 0x2

    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :cond_30
    return-void
.end method

.method public final removeMatchingEntry(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object p1, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/TimeToLiveHelper;->getAlarmPendingIntent(ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mAm:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object p1, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/notification/TimeToLiveHelper;->maybeScheduleFirstAlarm()V

    return-void

    :cond_3c
    iget-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    goto :goto_58

    :cond_57
    const/4 v1, 0x0

    :goto_58
    if-eqz v1, :cond_5f

    iget-object p0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {p0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    :cond_5f
    return-void
.end method

.method public scheduleTimeoutLocked(Lcom/android/server/notification/NotificationRecord;J)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/notification/TimeToLiveHelper;->removeMatchingEntry(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v1

    add-long/2addr p2, v1

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_8d

    iget-object v1, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_31

    const/4 v1, 0x0

    goto :goto_3d

    :cond_31
    iget-object v1, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    :goto_3d
    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-gez v2, :cond_48

    goto :goto_5e

    :cond_48
    iget-object p0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_8d

    :catchall_5c
    move-exception p0

    goto :goto_8f

    :cond_5e
    :goto_5e
    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/high16 v2, 0x10000000

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/TimeToLiveHelper;->getAlarmPendingIntent(ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/TimeToLiveHelper;->mAm:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_77
    iget-object v1, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/notification/TimeToLiveHelper;->maybeScheduleFirstAlarm()V

    :cond_8d
    :goto_8d
    monitor-exit v0

    return-void

    :goto_8f
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_3 .. :try_end_90} :catchall_5c

    throw p0
.end method
