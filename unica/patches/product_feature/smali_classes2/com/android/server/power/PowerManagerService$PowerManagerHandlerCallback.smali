.class public final Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const v3, 0xffff

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    return v5

    :pswitch_0
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v5

    :goto_0
    if-ltz v6, :cond_1

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v8, v7, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    and-int/2addr v8, v3

    const/16 v9, 0x100

    if-ne v8, v9, :cond_0

    invoke-virtual {v0, v7, v6, v1}, Lcom/android/server/power/PowerManagerService;->removeWakeLockNoUpdateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;II)V

    move v4, v5

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_2
    monitor-exit v2

    return v5

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    monitor-exit v1

    return v5

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_2
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    const-wide/32 v8, 0xea60

    sub-long/2addr v6, v8

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide v10, 0x7fffffffffffffffL

    move-wide v12, v10

    :goto_3
    if-ge v4, v2, :cond_6

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v15, v14, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    and-int/2addr v15, v3

    if-ne v15, v5, :cond_4

    iget-boolean v15, v14, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v15, :cond_4

    iget-boolean v15, v14, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-nez v15, :cond_4

    move/from16 p0, v4

    iget-wide v3, v14, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    cmp-long v16, v3, v6

    if-gez v16, :cond_3

    invoke-virtual {v0, v14}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_3
    add-long/2addr v3, v8

    cmp-long v14, v3, v12

    if-gez v14, :cond_5

    move-wide v12, v3

    goto :goto_4

    :cond_4
    move/from16 p0, v4

    :cond_5
    :goto_4
    add-int/lit8 v4, p0, 0x1

    const v3, 0xffff

    goto :goto_3

    :cond_6
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    cmp-long v4, v12, v10

    if-eqz v4, :cond_7

    iput-wide v12, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    iput-wide v12, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0, v2, v12, v13}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_5

    :cond_7
    iput-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    :goto_5
    monitor-exit v1

    return v5

    :goto_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :pswitch_3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x800

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    monitor-exit v2

    return v5

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :pswitch_4
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleSandman(Lcom/android/server/power/PowerManagerService;I)V

    return v5

    :pswitch_5
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v2, v1, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLockDetector:Lcom/android/server/power/AbuseWakeLockDetector;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lcom/android/server/power/AbuseWakeLockDetector;->handleAbuseWakelockWhenUserActivityChanged(Ljava/util/ArrayList;)V

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleUserActivityTimeout(Lcom/android/server/power/PowerManagerService;)V

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
