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
    .registers 5

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
    .registers 22

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget v0, v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    if-eqz v0, :cond_a

    goto/16 :goto_6f

    :cond_a
    iget-object v7, v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v3, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_f
    iget v6, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mScreenOffTimeoutMs:I

    monitor-exit v3
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_da

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

    if-eq v2, v12, :cond_aa

    sget-object v13, Lcom/android/server/power/WakefulnessSessionObserver;->HANDLER_TOKEN:Ljava/lang/Object;

    if-eq v2, v11, :cond_70

    if-eq v2, v10, :cond_58

    if-eq v2, v9, :cond_2b

    goto :goto_6f

    :cond_2b
    iget-wide v13, v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mInteractiveOffTimestamp:J

    sub-long v13, p2, v13

    move v15, v5

    iget v5, v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPastDimDurationMs:I

    if-lez v5, :cond_6f

    const-wide/16 v16, 0x1388

    cmp-long v1, v13, v16

    if-gez v1, :cond_6f

    iget-object v1, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    move-object v13, v1

    iget v1, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mPhysicalDisplayPortIdForDefaultDisplay:I

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v3, :pswitch_data_de

    move v3, v8

    goto :goto_52

    :pswitch_47  #0x6
    move v3, v15

    goto :goto_52

    :pswitch_49  #0x5
    move v3, v0

    goto :goto_52

    :pswitch_4b  #0x4
    move v3, v9

    goto :goto_52

    :pswitch_4d  #0x3
    move v3, v10

    goto :goto_52

    :pswitch_4f  #0x2
    move v3, v11

    goto :goto_52

    :pswitch_51  #0x1
    move v3, v12

    :goto_52
    const/16 v0, 0x363

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIII)V

    return-void

    :cond_58
    iget v0, v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicy:I

    if-ne v0, v11, :cond_6f

    iget-wide v8, v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    sub-long v8, p2, v8

    long-to-int v5, v8

    iget-object v7, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup$$ExternalSyntheticLambda0;

    move/from16 v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;IIIII)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v7, v0, v13, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_6f
    :goto_6f
    return-void

    :cond_70
    move-object v14, v1

    move v15, v5

    iget v1, v14, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityEvent:I

    iget-wide v2, v14, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityTimestamp:J

    sub-long v2, p2, v2

    long-to-int v4, v2

    iget v2, v14, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicy:I

    if-ne v2, v11, :cond_a7

    iget-wide v2, v14, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    sub-long v2, p2, v2

    long-to-int v5, v2

    iget-object v2, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    move v3, v1

    iget v1, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mPhysicalDisplayPortIdForDefaultDisplay:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v3, :pswitch_data_ee

    move v3, v8

    goto :goto_9a

    :pswitch_8f  #0x6
    move v3, v15

    goto :goto_9a

    :pswitch_91  #0x5
    move v3, v0

    goto :goto_9a

    :pswitch_93  #0x4
    move v3, v9

    goto :goto_9a

    :pswitch_95  #0x3
    move v3, v10

    goto :goto_9a

    :pswitch_97  #0x2
    move v3, v11

    goto :goto_9a

    :pswitch_99  #0x1
    move v3, v12

    :goto_9a
    const/16 v0, 0x363

    move/from16 v2, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIII)V

    iget-object v0, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    move v8, v5

    :cond_a7
    iput v8, v14, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPastDimDurationMs:I

    return-void

    :cond_aa
    move-object v14, v1

    move v15, v5

    iget-wide v1, v14, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    sub-long v1, p2, v1

    long-to-int v1, v1

    iget v2, v14, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicy:I

    if-ne v2, v11, :cond_b7

    iget v1, v14, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicyDurationMs:I

    :cond_b7
    move v5, v1

    iget-object v1, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    iget v2, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mPhysicalDisplayPortIdForDefaultDisplay:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v3, :pswitch_data_fe

    move v3, v8

    goto :goto_cf

    :pswitch_c4  #0x6
    move v3, v15

    goto :goto_cf

    :pswitch_c6  #0x5
    move v3, v0

    goto :goto_cf

    :pswitch_c8  #0x4
    move v3, v9

    goto :goto_cf

    :pswitch_ca  #0x3
    move v3, v10

    goto :goto_cf

    :pswitch_cc  #0x2
    move v3, v11

    goto :goto_cf

    :pswitch_ce  #0x1
    move v3, v12

    :goto_cf
    const/16 v0, 0x363

    move v1, v2

    move/from16 v2, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIII)V

    iput v5, v14, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPastDimDurationMs:I

    return-void

    :catchall_da
    move-exception v0

    :try_start_db
    monitor-exit v3
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_da

    throw v0

    nop

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_51  #00000001
        :pswitch_4f  #00000002
        :pswitch_4d  #00000003
        :pswitch_4b  #00000004
        :pswitch_49  #00000005
        :pswitch_47  #00000006
    .end packed-switch

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_99  #00000001
        :pswitch_97  #00000002
        :pswitch_95  #00000003
        :pswitch_93  #00000004
        :pswitch_91  #00000005
        :pswitch_8f  #00000006
    .end packed-switch

    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_ce  #00000001
        :pswitch_cc  #00000002
        :pswitch_ca  #00000003
        :pswitch_c8  #00000004
        :pswitch_c6  #00000005
        :pswitch_c4  #00000006
    .end packed-switch
.end method

.method public isInOverrideTimeout()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v0, v0, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget p0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    if-lez p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw p0
.end method
