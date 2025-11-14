.class public final Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
.super Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final mNewSessionThresholdMs:J

.field public mSessionEndCallback:Landroid/app/PendingIntent;

.field public final synthetic this$0:Lcom/android/server/usage/AppTimeLimitController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;JLandroid/app/PendingIntent;)V
    .registers 12

    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-direct/range {p0 .. p8}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V

    iput-wide p9, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mNewSessionThresholdMs:J

    iput-object p11, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mSessionEndCallback:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->dump(Ljava/io/PrintWriter;)V

    const-string v0, " lastUsageEndTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastUsageEndTimeMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " newSessionThreshold="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mNewSessionThresholdMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    return-void
.end method

.method public final noteUsageStart(JJ)V
    .registers 9

    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    if-nez v0, :cond_1b

    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastUsageEndTimeMs:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mNewSessionThresholdMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    :cond_12
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppTimeLimitController;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_1b
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStart(JJ)V

    return-void
.end method

.method public final noteUsageStop(J)V
    .registers 10

    invoke-super {p0, p1, p2}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStop(J)V

    iget p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    if-nez p1, :cond_2a

    iget-wide p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_2a

    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {p1}, Lcom/android/server/usage/AppTimeLimitController;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {p1}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    move-result-wide p1

    iget-wide v1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mNewSessionThresholdMs:J

    add-long v2, p1, v1

    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v6, p1, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v1, 0x3

    const-string v4, "AppTimeLimitController"

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_2a
    return-void
.end method

.method public final onAlarm()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v0, v0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->onSessionEnd()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final onSessionEnd()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    if-nez v0, :cond_b

    goto :goto_4d

    :cond_b
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v0, v0, Lcom/android/server/usage/AppTimeLimitController;->mListener:Lcom/android/server/usage/UsageStatsService$2;

    if-eqz v0, :cond_4d

    iget-wide v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mSessionEndCallback:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_1b

    goto :goto_4d

    :cond_1b
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "android.app.usage.extra.OBSERVER_ID"

    iget p0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    invoke-virtual {v4, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p0, "android.app.usage.extra.TIME_USED"

    invoke-virtual {v4, p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :try_start_2e
    iget-object p0, v0, Lcom/android/server/usage/UsageStatsService$2;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {v3, p0, v0, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_38
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2e .. :try_end_38} :catch_39

    goto :goto_4d

    :catch_39
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Couldn\'t deliver callback: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "UsageStatsService"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    :goto_4d
    return-void
.end method

.method public final remove()V
    .registers 3

    invoke-super {p0}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->remove()V

    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverAppRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mSessionEndCallback:Landroid/app/PendingIntent;

    return-void
.end method
