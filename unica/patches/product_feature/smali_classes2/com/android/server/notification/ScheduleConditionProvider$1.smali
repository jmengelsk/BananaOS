.class public final Lcom/android/server/notification/ScheduleConditionProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/ScheduleConditionProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ScheduleConditionProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    sget-object p1, Lcom/android/server/notification/ScheduleConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    const-string p1, "ConditionProviders.SCP"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onReceive "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq p1, v0, :cond_32

    return-void

    :cond_32
    const-string/jumbo p1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7a

    iget-object p1, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    iget-object p1, p1, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    monitor-enter p1

    :try_start_44
    iget-object p2, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    iget-object p2, p2, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_50
    :goto_50
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    iget-object v1, v1, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ScheduleCalendar;

    if-eqz v0, :cond_50

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ScheduleCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_50

    :catchall_74
    move-exception p0

    goto :goto_78

    :cond_76
    monitor-exit p1

    goto :goto_7a

    :goto_78
    monitor-exit p1
    :try_end_79
    .catchall {:try_start_44 .. :try_end_79} :catchall_74

    throw p0

    :cond_7a
    :goto_7a
    iget-object p0, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-virtual {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->evaluateSubscriptions$1()V

    return-void
.end method
