.class public final Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_1
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-boolean p0, v4, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez p0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object p0, v4, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-virtual {v4, v6, v5}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(ILjava/lang/String;)Ljava/util/List;

    move-result-object v13

    iget-object v3, v4, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v3

    :try_start_0
    iget-wide v11, v4, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    const/16 v7, 0xa

    const/16 v8, 0xd

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-lez v0, :cond_3

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-boolean p0, v3, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez p0, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object p0, v3, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p0

    if-nez p0, :cond_2

    iget-wide p0, v3, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    const/16 v0, 0xb

    :goto_0
    move-wide v10, p0

    move v7, v0

    move v6, v2

    goto :goto_1

    :cond_2
    iget-wide p0, v3, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    const/16 v2, 0x14

    const/16 v0, 0xc

    goto :goto_0

    :goto_1
    iget-object p0, v3, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v3, v5, v4}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(ILjava/lang/String;)Ljava/util/List;

    move-result-object v12

    iget-object v2, v3, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v2

    :try_start_1
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_3
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-boolean p0, v3, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez p0, :cond_4

    goto/16 :goto_8

    :cond_4
    iget-object p0, v3, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v2, v3, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v2

    :try_start_2
    iget-object p0, v3, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, v5}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-static {p0, v4, v1}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    const/16 p1, 0x32

    if-nez p0, :cond_5

    move p0, p1

    goto :goto_2

    :cond_5
    iget p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    :goto_2
    if-ne p0, p1, :cond_6

    invoke-virtual {v3, v5, v4}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(ILjava/lang/String;)Ljava/util/List;

    move-result-object v12

    iget-wide v10, v3, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    const/16 v6, 0x14

    const/16 v7, 0xe

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_6
    :goto_3
    monitor-exit v2

    return-void

    :goto_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :pswitch_3
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, p0

    check-cast v8, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object p0, v3, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usage/AppStandbyController;->checkAndUpdateStandbyState(IIJLjava/lang/String;)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object p1, p1, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, p1, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p1, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, 0x2710

    const-string/jumbo v2, "Wait for admin data"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/jobs/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    :cond_7
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->checkIdleStates(I)Z

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {p0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$minformParoleStateChanged(Lcom/android/server/usage/AppStandbyController;)V

    return-void

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, p1, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->userId:I

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$mreportContentProviderUsage(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object p0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->sPool:Lcom/android/server/usage/AppStandbyController$Pool;

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController$Pool;->recycle(Ljava/lang/Object;)V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$mtriggerListenerQuotaBump(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V

    return-void

    :pswitch_8
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, v2, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    monitor-enter v2

    :try_start_3
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, v4, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    invoke-virtual {v4}, Landroid/util/SparseLongArray;->size()I

    move-result v4

    sub-int/2addr v4, v3

    const-wide v5, 0x7fffffffffffffffL

    move-wide v7, v5

    :goto_5
    if-ltz v4, :cond_a

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, v3, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v9

    cmp-long v3, v9, v0

    if-gtz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, v3, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    iget-object v9, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v9, v3}, Lcom/android/server/usage/AppStandbyController;->checkIdleStates(I)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-boolean v9, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-wide v10, v9, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    add-long/2addr v10, v0

    iget-object v9, v9, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    invoke-virtual {v9, v3, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    move-wide v9, v10

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_9

    :cond_8
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, v3, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseLongArray;->removeAt(I)V

    goto :goto_7

    :cond_9
    :goto_6
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :goto_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_a
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    cmp-long v2, v7, v5

    if-eqz v2, :cond_b

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    sub-long/2addr v7, v0

    invoke-virtual {p0, p1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_b
    :goto_8
    return-void

    :goto_9
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p0

    :pswitch_9
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v3, :cond_c

    move v1, v3

    :cond_c
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/usage/AppStandbyController;->forceIdleState(Ljava/lang/String;IZ)V

    return-void

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->userId:I

    iget v3, p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->bucket:I

    iget v4, p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->reason:I

    iget-boolean v5, p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->isUserInteraction:Z

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$minformListeners(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIIZ)V

    sget-object p0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->sPool:Lcom/android/server/usage/AppStandbyController$Pool;

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController$Pool;->recycle(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
