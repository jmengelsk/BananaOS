.class public final Lcom/android/server/utils/AlarmQueue$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/utils/AlarmQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/AlarmQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    iget-object v0, v0, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    iget-object v0, v0, Lcom/android/server/utils/AlarmQueue;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    iget-object v0, v0, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    iget-object v2, v0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v6, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    iget-wide v3, v6, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    const-wide/16 v7, -0x1

    cmp-long p0, v3, v7

    if-nez p0, :cond_1

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_1
    iget-wide v7, v6, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p0, v6, Lcom/android/server/utils/AlarmQueue;->mExactAlarm:Z

    if-eqz p0, :cond_2

    iget-object v5, v6, Lcom/android/server/utils/AlarmQueue;->mAlarmTag:Ljava/lang/String;

    iget-object v7, v6, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void

    :cond_2
    const-wide/16 v9, 0x2

    div-long/2addr v7, v9

    move-wide v11, v7

    move-object v8, v6

    move-wide v5, v11

    iget-object v7, v8, Lcom/android/server/utils/AlarmQueue;->mAlarmTag:Ljava/lang/String;

    iget-object v9, v8, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual/range {v1 .. v9}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
