.class public Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCurrentScreenPolicy:I

.field public mCurrentScreenPolicyTimestamp:J

.field protected mCurrentUserActivityEvent:I

.field protected mCurrentUserActivityTimestamp:J

.field public mCurrentWakefulness:I

.field public mInteractiveOffTimestamp:J

.field public mInteractiveStateOnStartTimestamp:J

.field protected mIsInteractive:Z

.field protected mPastDimDurationMs:I

.field public final mPowerGroupId:I

.field public mPrevScreenPolicy:I

.field public mPrevScreenPolicyDurationMs:I

.field protected mPrevUserActivityEvent:I

.field protected mPrevUserActivityTimestamp:J

.field public mSendOverrideTimeoutLogTimestamp:J

.field public mTimeoutOffTimestamp:J

.field public mTimeoutOverrideReleaseReason:I

.field public mTimeoutOverrideWakeLockCounter:I

.field public final synthetic this$0:Lcom/android/server/power/WakefulnessSessionObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/power/WakefulnessSessionObserver;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mIsInteractive:Z

    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityEvent:I

    iput-wide v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityTimestamp:J

    iput p2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    const/4 p2, 0x3

    iput p2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicy:I

    iput p2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicyDurationMs:I

    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPastDimDurationMs:I

    return-void
.end method


# virtual methods
.method public final checkAndLogDimIfQualified(IJ)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget v0, v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v7, v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v3, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v6, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mScreenOffTimeoutMs:I

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v3, v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    iget-wide v4, v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    sub-long v4, p2, v4

    long-to-int v4, v4

    const/4 v0, 0x5

    const/4 v5, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v2, v12, :cond_6

    sget-object v13, Lcom/android/server/power/WakefulnessSessionObserver;->HANDLER_TOKEN:Ljava/lang/Object;

    if-eq v2, v11, :cond_4

    if-eq v2, v10, :cond_2

    if-eq v2, v9, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v13, v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mInteractiveOffTimestamp:J

    sub-long v13, p2, v13

    move v15, v5

    iget v5, v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPastDimDurationMs:I

    if-lez v5, :cond_3

    const-wide/16 v16, 0x1388

    cmp-long v1, v13, v16

    if-gez v1, :cond_3

    iget-object v1, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    move-object v13, v1

    iget v1, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mPhysicalDisplayPortIdForDefaultDisplay:I

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v3, :pswitch_data_0

    move v3, v8

    goto :goto_0

    :pswitch_0
    move v3, v15

    goto :goto_0

    :pswitch_1
    move v3, v0

    goto :goto_0

    :pswitch_2
    move v3, v9

    goto :goto_0

    :pswitch_3
    move v3, v10

    goto :goto_0

    :pswitch_4
    move v3, v11

    goto :goto_0

    :pswitch_5
    move v3, v12

    :goto_0
    const/16 v0, 0x363

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIII)V

    return-void

    :cond_2
    iget v0, v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicy:I

    if-ne v0, v11, :cond_3

    iget-wide v8, v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    sub-long v8, p2, v8

    long-to-int v5, v8

    iget-object v7, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup$$ExternalSyntheticLambda0;

    move/from16 v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;IIIII)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v7, v0, v13, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    move-object v14, v1

    move v15, v5

    iget v1, v14, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityEvent:I

    iget-wide v2, v14, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityTimestamp:J

    sub-long v2, p2, v2

    long-to-int v4, v2

    iget v2, v14, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicy:I

    if-ne v2, v11, :cond_5

    iget-wide v2, v14, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    sub-long v2, p2, v2

    long-to-int v5, v2

    iget-object v2, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    move v3, v1

    iget v1, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mPhysicalDisplayPortIdForDefaultDisplay:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v3, :pswitch_data_1

    move v3, v8

    goto :goto_2

    :pswitch_6
    move v3, v15

    goto :goto_2

    :pswitch_7
    move v3, v0

    goto :goto_2

    :pswitch_8
    move v3, v9

    goto :goto_2

    :pswitch_9
    move v3, v10

    goto :goto_2

    :pswitch_a
    move v3, v11

    goto :goto_2

    :pswitch_b
    move v3, v12

    :goto_2
    const/16 v0, 0x363

    move/from16 v2, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIII)V

    iget-object v0, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    move v8, v5

    :cond_5
    iput v8, v14, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPastDimDurationMs:I

    return-void

    :cond_6
    move-object v14, v1

    move v15, v5

    iget-wide v1, v14, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    sub-long v1, p2, v1

    long-to-int v1, v1

    iget v2, v14, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicy:I

    if-ne v2, v11, :cond_7

    iget v1, v14, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicyDurationMs:I

    :cond_7
    move v5, v1

    iget-object v1, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    iget v2, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mPhysicalDisplayPortIdForDefaultDisplay:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v3, :pswitch_data_2

    move v3, v8

    goto :goto_3

    :pswitch_c
    move v3, v15

    goto :goto_3

    :pswitch_d
    move v3, v0

    goto :goto_3

    :pswitch_e
    move v3, v9

    goto :goto_3

    :pswitch_f
    move v3, v10

    goto :goto_3

    :pswitch_10
    move v3, v11

    goto :goto_3

    :pswitch_11
    move v3, v12

    :goto_3
    const/16 v0, 0x363

    move v1, v2

    move/from16 v2, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIII)V

    iput v5, v14, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPastDimDurationMs:I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method public isInOverrideTimeout()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v0, v0, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
