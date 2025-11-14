.class public final synthetic Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    iget-object v1, v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v2, v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationStatsQueue:Ljava/util/Queue;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;

    iget-object v3, v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationStatsQueue:Ljava/util/Queue;

    check-cast v3, Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v2, :cond_25

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mLastVibrationReportedLogUptime:J

    goto :goto_25

    :catchall_22
    move-exception v0

    goto/16 :goto_c1

    :cond_25
    :goto_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_22

    if-nez v2, :cond_33

    const-string/jumbo v1, "VibratorFrameworkStatsLogger"

    const-string/jumbo v2, "Unexpected vibration metric flush with empty queue. Ignoring."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b5

    :cond_33
    iget-boolean v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->mIsWritten:Z

    if-eqz v1, :cond_4e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Writing same vibration stats multiple times for uid="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->uid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "VibrationStats"

    invoke-static {v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->mIsWritten:Z

    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->totalDurationMillis:I

    int-to-long v14, v1

    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->vibratorOnMillis:I

    int-to-long v4, v1

    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->startLatencyMillis:I

    int-to-long v6, v1

    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endLatencyMillis:I

    int-to-long v8, v1

    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->adaptiveScale:F

    iget v10, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPerformVendorCount:I

    move-wide/from16 v16, v4

    iget v5, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->uid:I

    move-wide/from16 v18, v6

    iget v7, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->vibrationType:I

    move-wide/from16 v20, v8

    iget v8, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->usage:I

    iget v9, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->status:I

    move/from16 v36, v10

    iget-boolean v10, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endedBySameUid:Z

    iget v11, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endedByUsage:I

    iget v12, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->interruptedUsage:I

    iget v13, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->repeatCount:I

    iget v4, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halComposeCount:I

    iget v6, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halComposePwleCount:I

    move/from16 v35, v1

    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halOnCount:I

    move/from16 v24, v1

    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halOffCount:I

    move/from16 v25, v1

    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPerformCount:I

    move/from16 v26, v1

    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSetAmplitudeCount:I

    move/from16 v27, v1

    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSetExternalControlCount:I

    move/from16 v28, v1

    iget-object v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSupportedCompositionPrimitivesUsed:[I

    move-object/from16 v29, v1

    iget-object v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSupportedEffectsUsed:[I

    move-object/from16 v30, v1

    iget-object v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halUnsupportedCompositionPrimitivesUsed:[I

    move-object/from16 v31, v1

    iget-object v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halUnsupportedEffectsUsed:[I

    move-object/from16 v32, v1

    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halCompositionSize:I

    iget v2, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPwleSize:I

    move/from16 v22, v4

    const/16 v4, 0x1e7

    move/from16 v23, v6

    const/4 v6, 0x0

    move/from16 v33, v1

    move/from16 v34, v2

    invoke-static/range {v4 .. v36}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;IIIZIIIJJJJIIIIIII[I[I[I[IIIFI)V

    :goto_b5
    if-nez v3, :cond_c0

    iget-object v1, v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mConsumeVibrationStatsQueueRunnable:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda0;

    iget-wide v3, v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationReportedLogIntervalMillis:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c0
    return-void

    :goto_c1
    :try_start_c1
    monitor-exit v1
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_22

    throw v0
.end method
