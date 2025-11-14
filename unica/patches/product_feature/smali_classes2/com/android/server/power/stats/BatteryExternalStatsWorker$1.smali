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
    .registers 3

    iput p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$android$server$power$stats$BatteryExternalStatsWorker$1()V
    .registers 14

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    monitor-enter v1

    :try_start_3
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

    if-ne v10, v11, :cond_26

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_26
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_37

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x2

    invoke-virtual {v2, v12}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_37

    :catchall_33
    move-exception v0

    move-object p0, v0

    goto/16 :goto_d2

    :cond_37
    :goto_37
    and-int/lit8 v2, v4, 0xe

    const/16 v12, 0xe

    if-ne v2, v12, :cond_45

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x4

    invoke-virtual {v2, v12}, Landroid/os/Handler;->removeMessages(I)V

    :cond_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_33

    :try_start_46
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4b} :catch_75

    :try_start_4b
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$mupdateExternalStatsLocked(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Ljava/lang/String;IZZ[IZ)V
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_88

    if-ne v10, v11, :cond_6a

    :try_start_52
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_68

    :try_start_57
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v3, v3, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v3
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_61

    :try_start_5c
    iput-boolean v9, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mIgnoreNextExternalStats:Z

    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_63

    :try_start_5f
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_61

    goto :goto_6a

    :catchall_61
    move-exception v0

    goto :goto_66

    :catchall_63
    move-exception v0

    :try_start_64
    monitor-exit v3
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    :try_start_65
    throw v0

    :goto_66
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_65 .. :try_end_67} :catchall_61

    :try_start_67
    throw v0

    :catchall_68
    move-exception v0

    goto :goto_a2

    :cond_6a
    :goto_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_68

    if-eqz v0, :cond_77

    :try_start_6d
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCpuTimesForAllUids()V

    goto :goto_77

    :catch_75
    move-exception v0

    goto :goto_a4

    :cond_77
    :goto_77
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_7c} :catch_75

    :try_start_7c
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->clearPendingRemovedUidsLocked()V

    monitor-exit v1

    goto :goto_ab

    :catchall_85
    move-exception v0

    monitor-exit v1
    :try_end_87
    .catchall {:try_start_7c .. :try_end_87} :catchall_85

    :try_start_87
    throw v0
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_88} :catch_75

    :catchall_88
    move-exception v0

    if-ne v10, v11, :cond_a1

    :try_start_8b
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2
    :try_end_90
    .catchall {:try_start_8b .. :try_end_90} :catchall_68

    :try_start_90
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v3, v3, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v3
    :try_end_95
    .catchall {:try_start_90 .. :try_end_95} :catchall_9a

    :try_start_95
    iput-boolean v9, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mIgnoreNextExternalStats:Z

    monitor-exit v3
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_9c

    :try_start_98
    monitor-exit v2
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_9a

    goto :goto_a1

    :catchall_9a
    move-exception v0

    goto :goto_9f

    :catchall_9c
    move-exception v0

    :try_start_9d
    monitor-exit v3
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    :try_start_9e
    throw v0

    :goto_9f
    monitor-exit v2
    :try_end_a0
    .catchall {:try_start_9e .. :try_end_a0} :catchall_9a

    :try_start_a0
    throw v0

    :cond_a1
    :goto_a1
    throw v0

    :goto_a2
    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_68

    :try_start_a3
    throw v0
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a4} :catch_75

    :goto_a4
    const-string v1, "BatteryExternalStatsWorker"

    const-string v2, "Error updating external stats: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_ab
    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_be

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    monitor-enter v1

    :try_start_b2
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    monitor-exit v1

    goto :goto_d1

    :catchall_ba
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_bd
    .catchall {:try_start_b2 .. :try_end_bd} :catchall_ba

    throw p0

    :cond_be
    if-ne v10, v11, :cond_d1

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    monitor-enter v1

    :try_start_c3
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    monitor-exit v1

    goto :goto_d1

    :catchall_cd
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d0
    .catchall {:try_start_c3 .. :try_end_d0} :catchall_cd

    throw p0

    :cond_d1
    :goto_d1
    return-void

    :goto_d2
    :try_start_d2
    monitor-exit v1
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_33

    throw p0
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_1a

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_a
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeAsyncLocked()V

    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_13

    throw p0

    :pswitch_16  #0x0
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->run$com$android$server$power$stats$BatteryExternalStatsWorker$1()V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_16  #00000000
    .end packed-switch
.end method
