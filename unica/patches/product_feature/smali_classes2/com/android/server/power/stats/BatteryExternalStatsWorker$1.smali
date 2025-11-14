.class public final Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$android$server$power$stats$BatteryExternalStatsWorker$1()V
    .locals 13

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget v4, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    iget-object v3, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    iget-boolean v5, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mOnBattery:Z

    iget-boolean v6, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    iget-object v7, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPerDisplayScreenStates:[I

    iget-boolean v8, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUseLatestStates:Z

    const/4 v9, 0x0

    iput v9, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUseLatestStates:Z

    and-int/lit8 v10, v4, 0x7f

    const/16 v11, 0x7f

    if-ne v10, v11, :cond_0

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x2

    invoke-virtual {v2, v12}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_a

    :cond_1
    :goto_0
    and-int/lit8 v2, v4, 0xe

    const/16 v12, 0xe

    if-ne v2, v12, :cond_2

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x4

    invoke-virtual {v2, v12}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$mupdateExternalStatsLocked(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Ljava/lang/String;IZZ[IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-ne v10, v11, :cond_3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v3, v3, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iput-boolean v9, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mIgnoreNextExternalStats:Z

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    :goto_1
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0

    :catchall_3
    move-exception v0

    goto :goto_6

    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v0, :cond_4

    :try_start_a
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCpuTimesForAllUids()V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :try_start_b
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->clearPendingRemovedUidsLocked()V

    monitor-exit v1

    goto :goto_8

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catchall_5
    move-exception v0

    if-ne v10, v11, :cond_5

    :try_start_d
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v3, v3, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :try_start_f
    iput-boolean v9, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mIgnoreNextExternalStats:Z

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v0

    goto :goto_4

    :catchall_7
    move-exception v0

    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :try_start_12
    throw v0

    :goto_4
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :try_start_13
    throw v0

    :cond_5
    :goto_5
    throw v0

    :goto_6
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :try_start_14
    throw v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    :goto_7
    const-string v1, "BatteryExternalStatsWorker"

    const-string v2, "Error updating external stats: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    monitor-enter v1

    :try_start_15
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    monitor-exit v1

    goto :goto_9

    :catchall_8
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    throw p0

    :cond_6
    if-ne v10, v11, :cond_7

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    monitor-enter v1

    :try_start_16
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    monitor-exit v1

    goto :goto_9

    :catchall_9
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    throw p0

    :cond_7
    :goto_9
    return-void

    :goto_a
    :try_start_17
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeAsyncLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->run$com$android$server$power$stats$BatteryExternalStatsWorker$1()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
