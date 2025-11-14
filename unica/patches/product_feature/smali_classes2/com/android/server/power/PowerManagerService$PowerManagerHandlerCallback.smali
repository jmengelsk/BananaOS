.class public final Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const v3, 0xffff

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_f8

    return v5

    :pswitch_f  #0x6
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_16
    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v5

    :goto_1d
    if-ltz v6, :cond_38

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v8, v7, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    and-int/2addr v8, v3

    const/16 v9, 0x100

    if-ne v8, v9, :cond_35

    invoke-virtual {v0, v7, v6, v1}, Lcom/android/server/power/PowerManagerService;->removeWakeLockNoUpdateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;II)V

    move v4, v5

    goto :goto_35

    :catchall_33
    move-exception v0

    goto :goto_3f

    :cond_35
    :goto_35
    add-int/lit8 v6, v6, -0x1

    goto :goto_1d

    :cond_38
    if-eqz v4, :cond_3d

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_3d
    monitor-exit v2

    return v5

    :goto_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_16 .. :try_end_40} :catchall_33

    throw v0

    :pswitch_41  #0x5
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_46
    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    monitor-exit v1

    return v5

    :catchall_51
    move-exception v0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_51

    throw v0

    :pswitch_54  #0x4
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_59
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

    :goto_74
    if-ge v4, v2, :cond_a8

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v15, v14, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    and-int/2addr v15, v3

    if-ne v15, v5, :cond_a0

    iget-boolean v15, v14, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v15, :cond_a0

    iget-boolean v15, v14, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-nez v15, :cond_a0

    move/from16 p0, v4

    iget-wide v3, v14, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    cmp-long v16, v3, v6

    if-gez v16, :cond_99

    invoke-virtual {v0, v14}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_a2

    :catchall_97
    move-exception v0

    goto :goto_cb

    :cond_99
    add-long/2addr v3, v8

    cmp-long v14, v3, v12

    if-gez v14, :cond_a2

    move-wide v12, v3

    goto :goto_a2

    :cond_a0
    move/from16 p0, v4

    :cond_a2
    :goto_a2
    add-int/lit8 v4, p0, 0x1

    const v3, 0xffff

    goto :goto_74

    :cond_a8
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    cmp-long v4, v12, v10

    if-eqz v4, :cond_c7

    iput-wide v12, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    iput-wide v12, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0, v2, v12, v13}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_c9

    :cond_c7
    iput-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    :goto_c9
    monitor-exit v1

    return v5

    :goto_cb
    monitor-exit v1
    :try_end_cc
    .catchall {:try_start_59 .. :try_end_cc} :catchall_97

    throw v0

    :pswitch_cd  #0x3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_d2
    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x800

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    monitor-exit v2

    return v5

    :catchall_dd
    move-exception v0

    monitor-exit v2
    :try_end_df
    .catchall {:try_start_d2 .. :try_end_df} :catchall_dd

    throw v0

    :pswitch_e0  #0x2
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleSandman(Lcom/android/server/power/PowerManagerService;I)V

    return v5

    :pswitch_e8  #0x1
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v2, v1, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLockDetector:Lcom/android/server/power/AbuseWakeLockDetector;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lcom/android/server/power/AbuseWakeLockDetector;->handleAbuseWakelockWhenUserActivityChanged(Ljava/util/ArrayList;)V

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleUserActivityTimeout(Lcom/android/server/power/PowerManagerService;)V

    return v5

    nop

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_e8  #00000001
        :pswitch_e0  #00000002
        :pswitch_cd  #00000003
        :pswitch_54  #00000004
        :pswitch_41  #00000005
        :pswitch_f  #00000006
    .end packed-switch
.end method
