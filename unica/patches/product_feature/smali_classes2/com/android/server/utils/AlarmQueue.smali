.class public abstract Lcom/android/server/utils/AlarmQueue;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

.field public final mAlarmTag:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mDumpTitle:Ljava/lang/String;

.field public final mExactAlarm:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/utils/AlarmQueue$Injector;

.field public mLastFireTimeElapsed:J

.field public final mLock:Ljava/lang/Object;

.field public mMinTimeBetweenAlarmsMs:J

.field public final mScheduleAlarmRunnable:Lcom/android/server/utils/AlarmQueue$1;

.field public mTriggerTimeElapsed:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/utils/AlarmQueue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 17

    new-instance v8, Lcom/android/server/utils/AlarmQueue$Injector;

    invoke-direct {v8}, Lcom/android/server/utils/AlarmQueue$Injector;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJLcom/android/server/utils/AlarmQueue$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJLcom/android/server/utils/AlarmQueue$Injector;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/utils/AlarmQueue$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/AlarmQueue$1;-><init>(Lcom/android/server/utils/AlarmQueue;)V

    iput-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mScheduleAlarmRunnable:Lcom/android/server/utils/AlarmQueue$1;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-direct {v0}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    iput-object p1, p0, Lcom/android/server/utils/AlarmQueue;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmTag:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/AlarmQueue;->mDumpTitle:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/server/utils/AlarmQueue;->mExactAlarm:Z

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    iput-object p8, p0, Lcom/android/server/utils/AlarmQueue;->mInjector:Lcom/android/server/utils/AlarmQueue$Injector;

    const-wide/16 p1, 0x0

    cmp-long p1, p6, p1

    if-ltz p1, :cond_3a

    iput-wide p6, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    return-void

    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "min time between alarms must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addAlarm(JLjava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v1, p3}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->removeKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    new-instance v3, Landroid/util/Pair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, p3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    const-wide/16 v4, -0x1

    cmp-long p3, v2, v4

    if-eqz p3, :cond_25

    if-nez v1, :cond_25

    cmp-long p1, p1, v2

    if-gez p1, :cond_2d

    :cond_25
    iget-wide p1, p0, Lcom/android/server/utils/AlarmQueue;->mLastFireTimeElapsed:J

    iget-wide v1, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    add-long/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked(J)V

    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mDumpTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " alarms:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-nez v1, :cond_21

    const-string/jumbo p0, "NOT WAITING"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4c

    :catchall_1f
    move-exception p0

    goto :goto_51

    :cond_21
    iget-object p0, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {p0, v1}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Pair;

    const/4 v1, 0x0

    :goto_30
    array-length v2, p0

    if-ge v1, v2, :cond_4c

    aget-object v2, p0, v1

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, ": "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    aget-object v2, p0, v1

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_4c
    :goto_4c
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    monitor-exit v0

    return-void

    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_1f

    throw p0
.end method

.method public abstract isForUser(ILjava/lang/Object;)Z
.end method

.method public final onAlarm()V
    .registers 8

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/android/server/utils/AlarmQueue;->mInjector:Lcom/android/server/utils/AlarmQueue$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/utils/AlarmQueue;->mLastFireTimeElapsed:J

    :goto_13
    iget-object v4, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->size()I

    move-result v4

    if-lez v4, :cond_3c

    iget-object v4, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-gtz v5, :cond_3c

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v5, v4}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_13

    :catchall_3a
    move-exception p0

    goto :goto_4d

    :cond_3c
    iget-wide v4, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked(J)V

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_3a

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_4c

    invoke-virtual {p0, v0}, Lcom/android/server/utils/AlarmQueue;->processExpiredAlarms(Landroid/util/ArraySet;)V

    :cond_4c
    return-void

    :goto_4d
    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_3a

    throw p0
.end method

.method public abstract processExpiredAlarms(Landroid/util/ArraySet;)V
.end method

.method public final removeAlarmForKey(Ljava/lang/Object;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->removeKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-wide v1, p0, Lcom/android/server/utils/AlarmQueue;->mLastFireTimeElapsed:J

    iget-wide v3, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked(J)V

    :cond_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final removeAlarmsForUserId(I)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Pair;

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    :goto_15
    if-ltz v2, :cond_2f

    aget-object v5, v1, v2

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, p1, v5}, Lcom/android/server/utils/AlarmQueue;->isForUser(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    iget-object v4, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move v4, v3

    goto :goto_2c

    :catchall_2a
    move-exception p0

    goto :goto_3b

    :cond_2c
    :goto_2c
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    :cond_2f
    if-eqz v4, :cond_39

    iget-wide v1, p0, Lcom/android/server/utils/AlarmQueue;->mLastFireTimeElapsed:J

    iget-wide v3, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked(J)V

    :cond_39
    monitor-exit v0

    return-void

    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_2a

    throw p0
.end method

.method public final removeAllAlarms()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked(J)V

    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final setMinTimeBetweenAlarmsMs(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iput-wide p1, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "min time between alarms must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setNextAlarmLocked(J)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_17

    iget-object p1, p0, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/utils/AlarmQueue$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/utils/AlarmQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/utils/AlarmQueue;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-wide v1, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    return-void

    :cond_17
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/32 v3, 0xea60

    iget-wide v5, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    cmp-long v0, v5, v1

    if-eqz v0, :cond_46

    sub-long v0, v5, v3

    cmp-long v0, p1, v0

    if-ltz v0, :cond_46

    cmp-long v0, v5, p1

    if-gez v0, :cond_45

    goto :goto_46

    :cond_45
    return-void

    :cond_46
    :goto_46
    iput-wide p1, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    iget-object p1, p0, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/utils/AlarmQueue;->mScheduleAlarmRunnable:Lcom/android/server/utils/AlarmQueue$1;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
