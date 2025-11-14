.class public final Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 16

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_1d0

    :pswitch_9  #0x6
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_d  #0xd
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-boolean p0, v4, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez p0, :cond_1c

    goto/16 :goto_1a2

    :cond_1c
    iget-object p0, v4, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-virtual {v4, v6, v5}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(ILjava/lang/String;)Ljava/util/List;

    move-result-object v13

    iget-object v3, v4, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v3

    :try_start_2c
    iget-wide v11, v4, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    const/16 v7, 0xa

    const/16 v8, 0xd

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    monitor-exit v3

    return-void

    :catchall_37
    move-exception v0

    move-object p0, v0

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_37

    throw p0

    :pswitch_3b  #0xc
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-lez v0, :cond_80

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-boolean p0, v3, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez p0, :cond_4e

    goto/16 :goto_1a2

    :cond_4e
    iget-object p0, v3, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p0

    if-nez p0, :cond_60

    iget-wide p0, v3, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    const/16 v0, 0xb

    :goto_5c
    move-wide v10, p0

    move v7, v0

    move v6, v2

    goto :goto_67

    :cond_60
    iget-wide p0, v3, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    const/16 v2, 0x14

    const/16 v0, 0xc

    goto :goto_5c

    :goto_67
    iget-object p0, v3, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v3, v5, v4}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(ILjava/lang/String;)Ljava/util/List;

    move-result-object v12

    iget-object v2, v3, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v2

    :try_start_77
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    monitor-exit v2

    return-void

    :catchall_7c
    move-exception v0

    move-object p0, v0

    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_77 .. :try_end_7f} :catchall_7c

    throw p0

    :cond_80
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-boolean p0, v3, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez p0, :cond_8f

    goto/16 :goto_1a2

    :cond_8f
    iget-object p0, v3, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v2, v3, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v2

    :try_start_9b
    iget-object p0, v3, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, v5}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-static {p0, v4, v1}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    const/16 p1, 0x32

    if-nez p0, :cond_ab

    move p0, p1

    goto :goto_ad

    :cond_ab
    iget p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    :goto_ad
    if-ne p0, p1, :cond_c0

    invoke-virtual {v3, v5, v4}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(ILjava/lang/String;)Ljava/util/List;

    move-result-object v12

    iget-wide v10, v3, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    const/16 v6, 0x14

    const/16 v7, 0xe

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    goto :goto_c0

    :catchall_bd
    move-exception v0

    move-object p0, v0

    goto :goto_c2

    :cond_c0
    :goto_c0
    monitor-exit v2

    return-void

    :goto_c2
    monitor-exit v2
    :try_end_c3
    .catchall {:try_start_9b .. :try_end_c3} :catchall_bd

    throw p0

    :pswitch_c4  #0xb
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

    :pswitch_dc  #0xa
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

    if-eqz v0, :cond_fe

    iget-object p1, p1, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, 0x2710

    const-string/jumbo v2, "Wait for admin data"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/jobs/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    :cond_fe
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->checkIdleStates(I)Z

    return-void

    :pswitch_105  #0x9
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {p0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$minformParoleStateChanged(Lcom/android/server/usage/AppStandbyController;)V

    return-void

    :pswitch_10b  #0x8
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

    :pswitch_120  #0x7
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$mtriggerListenerQuotaBump(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V

    return-void

    :pswitch_12c  #0x5
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

    :try_start_140
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, v4, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    invoke-virtual {v4}, Landroid/util/SparseLongArray;->size()I

    move-result v4

    sub-int/2addr v4, v3

    const-wide v5, 0x7fffffffffffffffL

    move-wide v7, v5

    :goto_14f
    if-ltz v4, :cond_191

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, v3, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v9

    cmp-long v3, v9, v0

    if-gtz v3, :cond_18a

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, v3, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    iget-object v9, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v9, v3}, Lcom/android/server/usage/AppStandbyController;->checkIdleStates(I)Z

    move-result v9

    if-eqz v9, :cond_182

    iget-object v9, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-boolean v9, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz v9, :cond_182

    iget-object v9, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-wide v10, v9, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    add-long/2addr v10, v0

    iget-object v9, v9, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    invoke-virtual {v9, v3, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    move-wide v9, v10

    goto :goto_18a

    :catchall_17f
    move-exception v0

    move-object p0, v0

    goto :goto_1a3

    :cond_182
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, v3, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseLongArray;->removeAt(I)V

    goto :goto_18e

    :cond_18a
    :goto_18a
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :goto_18e
    add-int/lit8 v4, v4, -0x1

    goto :goto_14f

    :cond_191
    monitor-exit v2
    :try_end_192
    .catchall {:try_start_140 .. :try_end_192} :catchall_17f

    cmp-long v2, v7, v5

    if-eqz v2, :cond_1a2

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    sub-long/2addr v7, v0

    invoke-virtual {p0, p1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1a2
    :goto_1a2
    return-void

    :goto_1a3
    :try_start_1a3
    monitor-exit v2
    :try_end_1a4
    .catchall {:try_start_1a3 .. :try_end_1a4} :catchall_17f

    throw p0

    :pswitch_1a5  #0x4
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v3, :cond_1b2

    move v1, v3

    :cond_1b2
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/usage/AppStandbyController;->forceIdleState(Ljava/lang/String;IZ)V

    return-void

    :pswitch_1b6  #0x3
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

    :pswitch_data_1d0
    .packed-switch 0x3
        :pswitch_1b6  #00000003
        :pswitch_1a5  #00000004
        :pswitch_12c  #00000005
        :pswitch_9  #00000006
        :pswitch_120  #00000007
        :pswitch_10b  #00000008
        :pswitch_105  #00000009
        :pswitch_dc  #0000000a
        :pswitch_c4  #0000000b
        :pswitch_3b  #0000000c
        :pswitch_d  #0000000d
    .end packed-switch
.end method
