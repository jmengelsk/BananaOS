.class public Lcom/android/server/power/stats/BatteryExternalStatsWorker;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCurrentReason:Ljava/lang/String;

.field public mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

.field public mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

.field public mLastCollectionTimeStamp:J

.field public mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

.field public mOnBattery:Z

.field public mOnBatteryScreenOff:Z

.field public mPerDisplayScreenStates:[I

.field public mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field public final mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final mSyncTask:Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;

.field public mTelephony:Landroid/telephony/TelephonyManager;

.field public mUpdateFlags:I

.field public mUseLatestStates:Z

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public final mWorkerLock:Ljava/lang/Object;

.field public final mWriteTask:Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;


# direct methods
.method public static -$$Nest$mupdateExternalStatsLocked(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Ljava/lang/String;IZZ[IZ)V
    .registers 35

    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    const-string v4, "BatteryExternalStatsWorker"

    const-string/jumbo v5, "update stats : "

    const-string v6, " ("

    const-string v7, ")"

    move-object/from16 v14, p1

    invoke-static {v2, v5, v14, v6, v7}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getEnergyConsumersLocked(I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    and-int/lit8 v5, v2, 0x2

    const/4 v6, 0x0

    if-eqz v5, :cond_64

    iget-object v5, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_4d

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isEnhancedPowerReportingSupported()Z

    move-result v5

    if-eqz v5, :cond_4d

    new-instance v5, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v7, "wifi"

    invoke-direct {v5, v7}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v8, Lcom/android/server/power/stats/BatteryExternalStatsWorker$3;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v9, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda2;

    invoke-direct {v9, v5}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda2;-><init>(Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiManager;->getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    const-string v7, "BatteryExternalStatsWorker"

    const-string v8, "Fetch WiFi data"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :cond_4d
    move-object v5, v3

    :goto_4e
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v7

    :try_start_51
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateRailStatsLocked()V

    const-string v8, "BatteryExternalStatsWorker"

    const-string/jumbo v9, "Update Rail Energy data"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    const/4 v7, 0x1

    goto :goto_66

    :catchall_61
    move-exception v0

    monitor-exit v7
    :try_end_63
    .catchall {:try_start_51 .. :try_end_63} :catchall_61

    throw v0

    :cond_64
    move-object v5, v3

    move v7, v6

    :goto_66
    and-int/lit8 v8, v2, 0x8

    if-eqz v8, :cond_9c

    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->getPowerStatsCollector(I)Lcom/android/server/power/stats/PowerStatsCollector;

    move-result-object v8

    iget-boolean v9, v8, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    if-eqz v9, :cond_79

    invoke-virtual {v8}, Lcom/android/server/power/stats/PowerStatsCollector;->schedule()Z

    goto :goto_9c

    :cond_79
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    if-eqz v8, :cond_9c

    new-instance v9, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v10, "bluetooth"

    invoke-direct {v9, v10}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    new-instance v11, Lcom/android/server/power/stats/BatteryExternalStatsWorker$4;

    invoke-direct {v11, v9}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$4;-><init>(Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v8, v10, v11}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    const-string v8, "BatteryExternalStatsWorker"

    const-string v10, "Fetch Bluetooth data"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    :cond_9c
    :goto_9c
    move-object v9, v3

    :goto_9d
    and-int/lit8 v8, v2, 0x4

    if-eqz v8, :cond_e7

    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Lcom/android/server/power/stats/BatteryStatsImpl;->getPowerStatsCollector(I)Lcom/android/server/power/stats/PowerStatsCollector;

    move-result-object v8

    iget-boolean v10, v8, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    if-eqz v10, :cond_b1

    invoke-virtual {v8}, Lcom/android/server/power/stats/PowerStatsCollector;->schedule()Z

    goto :goto_d0

    :cond_b1
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v8, :cond_d0

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    new-instance v10, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    new-instance v11, Lcom/android/server/power/stats/BatteryExternalStatsWorker$5;

    invoke-direct {v11, v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$5;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v8, v10, v11}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    const-string v8, "BatteryExternalStatsWorker"

    const-string v10, "Fetch modem data"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d0
    :goto_d0
    if-nez v7, :cond_e7

    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v7

    :try_start_d5
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateRailStatsLocked()V

    const-string v8, "BatteryExternalStatsWorker"

    const-string/jumbo v10, "Update Rail Energy data"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    goto :goto_e7

    :catchall_e4
    move-exception v0

    monitor-exit v7
    :try_end_e6
    .catchall {:try_start_d5 .. :try_end_e6} :catchall_e4

    throw v0

    :cond_e7
    :goto_e7
    and-int/lit8 v7, v2, 0x10

    if-eqz v7, :cond_f0

    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->fillLowPowerStats()V

    :cond_f0
    invoke-static {v5}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-static {v9}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v8

    move-object/from16 v16, v8

    check-cast v16, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    const-wide/16 v8, 0x7d0

    :try_start_100
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v8, v9, v10}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ModemActivityInfo;
    :try_end_108
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_100 .. :try_end_108} :catch_10d
    .catch Ljava/lang/InterruptedException; {:try_start_100 .. :try_end_108} :catch_10d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_100 .. :try_end_108} :catch_10b

    move-object/from16 v18, v0

    goto :goto_132

    :catch_10b
    move-exception v0

    goto :goto_10f

    :catch_10d
    move-exception v0

    goto :goto_128

    :goto_10f
    const-string v10, "BatteryExternalStatsWorker"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "exception reading modem stats: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_130

    :goto_128
    const-string v10, "BatteryExternalStatsWorker"

    const-string/jumbo v11, "timeout or interrupt reading modem stats: "

    invoke-static {v0, v11, v10}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_130
    move-object/from16 v18, v3

    :goto_132
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    if-eqz v0, :cond_17b

    if-nez v4, :cond_139

    goto :goto_17b

    :cond_139
    iget-object v10, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v10

    :try_start_13c
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v11, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mBatteryVoltageMv:I

    monitor-exit v10
    :try_end_141
    .catchall {:try_start_13c .. :try_end_141} :catchall_178

    :try_start_141
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v8, v9, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/power/stats/EnergyConsumerResult;
    :try_end_149
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_141 .. :try_end_149} :catch_14c
    .catch Ljava/lang/InterruptedException; {:try_start_141 .. :try_end_149} :catch_14c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_141 .. :try_end_149} :catch_14a

    goto :goto_171

    :catch_14a
    move-exception v0

    goto :goto_14e

    :catch_14c
    move-exception v0

    goto :goto_168

    :goto_14e
    const-string v4, "BatteryExternalStatsWorker"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "exception reading getEnergyConsumedAsync: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_166
    move-object v0, v3

    goto :goto_171

    :goto_168
    const-string v4, "BatteryExternalStatsWorker"

    const-string/jumbo v8, "timeout or interrupt reading getEnergyConsumedAsync: "

    invoke-static {v0, v8, v4}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_166

    :goto_171
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    invoke-virtual {v4, v0, v11}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->updateAndGetDelta([Landroid/hardware/power/stats/EnergyConsumerResult;I)Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;

    move-result-object v0

    goto :goto_17c

    :catchall_178
    move-exception v0

    :try_start_179
    monitor-exit v10
    :try_end_17a
    .catchall {:try_start_179 .. :try_end_17a} :catchall_178

    throw v0

    :cond_17b
    :goto_17b
    move-object v0, v3

    :goto_17c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    const-wide/16 v11, 0x3e8

    mul-long/2addr v11, v9

    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v4

    :try_start_18a
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v8, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;
    :try_end_18e
    .catchall {:try_start_18a .. :try_end_18e} :catchall_30e

    const/16 v13, 0xe

    const/4 v15, 0x0

    move-object/from16 v19, v4

    move-wide v3, v11

    move-wide/from16 v11, v25

    :try_start_196
    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/BatteryStatsHistory;->recordEvent(JJILjava/lang/String;I)V

    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_1c4

    if-eqz p6, :cond_1ad

    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v11, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-boolean v11, v11, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    iget-object v8, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-boolean v8, v8, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    goto :goto_1b1

    :catchall_1aa
    move-exception v0

    goto/16 :goto_311

    :cond_1ad
    move/from16 v11, p3

    move/from16 v8, p4

    :goto_1b1
    if-nez v0, :cond_1b5

    const/4 v12, 0x0

    goto :goto_1b7

    :cond_1b5
    iget-object v12, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cpuClusterChargeUC:[J

    :goto_1b7
    iget-object v13, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v13, v11, v8, v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCpuTimeLocked(ZZ[J)V

    const-string v8, "BatteryExternalStatsWorker"

    const-string/jumbo v11, "Update CPU state"

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c4
    const/16 v8, 0x7f

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_1db

    iget-object v2, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateKernelWakelocksLocked(J)V

    iget-object v2, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateKernelMemoryBandwidthLocked(J)V

    const-string v2, "BatteryExternalStatsWorker"

    const-string/jumbo v8, "Update Kernel wakelock & memory state"

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1db
    if-eqz v7, :cond_1ea

    iget-object v2, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateRpmStatsLocked(J)V

    const-string v2, "BatteryExternalStatsWorker"

    const-string/jumbo v3, "Update RPM state"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ea
    const-wide/16 v2, -0x1

    if-eqz v0, :cond_22a

    iget-object v4, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->displayChargeUC:[J

    if-eqz v4, :cond_204

    array-length v7, v4

    if-lez v7, :cond_204

    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object/from16 v8, p5

    invoke-virtual {v7, v4, v8, v9, v10}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateDisplayEnergyConsumerStatsLocked([J[IJ)V

    const-string v4, "BatteryExternalStatsWorker"

    const-string/jumbo v7, "Update energy state (display)"

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_204
    iget-wide v7, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->gnssChargeUC:J

    cmp-long v4, v7, v2

    if-eqz v4, :cond_217

    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateGnssEnergyConsumerStatsLocked(JJ)V

    const-string v4, "BatteryExternalStatsWorker"

    const-string/jumbo v7, "Update energy state (gnss)"

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_217
    iget-wide v7, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cameraChargeUC:J

    cmp-long v4, v7, v2

    if-eqz v4, :cond_22a

    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCameraEnergyConsumerStatsLocked(JJ)V

    const-string v4, "BatteryExternalStatsWorker"

    const-string/jumbo v7, "Update energy state (camera)"

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22a
    if-eqz v0, :cond_24b

    iget-object v4, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    if-eqz v4, :cond_24b

    :goto_230
    iget-object v4, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    array-length v7, v4

    if-ge v6, v7, :cond_243

    aget-wide v7, v4, v6

    iget-object v4, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    aget-object v4, v4, v6

    iget-object v11, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v11, v6, v7, v8, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCustomEnergyConsumerStatsLocked(IJLandroid/util/SparseLongArray;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_230

    :cond_243
    const-string v4, "BatteryExternalStatsWorker"

    const-string/jumbo v6, "Update energy state (others)"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24b
    if-eqz v16, :cond_28a

    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v4

    if-eqz v4, :cond_271

    if-eqz v0, :cond_25a

    iget-wide v6, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->bluetoothChargeUC:J

    move-wide v11, v6

    :goto_258
    move-wide v13, v9

    goto :goto_25c

    :cond_25a
    move-wide v11, v2

    goto :goto_258

    :goto_25c
    iget-object v9, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object/from16 v10, v16

    move-wide/from16 v15, v25

    invoke-virtual/range {v9 .. v16}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJJ)V

    move-wide v9, v13

    move-wide/from16 v25, v15

    const-string v4, "BatteryExternalStatsWorker"

    const-string/jumbo v6, "Update bluetooth state"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28a

    :cond_271
    move-object/from16 v8, v16

    const-string v4, "BatteryExternalStatsWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bluetooth info is invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28a
    :goto_28a
    monitor-exit v19
    :try_end_28b
    .catchall {:try_start_196 .. :try_end_28b} :catchall_1aa

    const-string v4, "BatteryExternalStatsWorker"

    const-string/jumbo v6, "mStats lock released"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_2dc

    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2c8

    if-eqz v0, :cond_2a2

    iget-wide v6, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->wifiChargeUC:J

    move-wide/from16 v21, v6

    goto :goto_2a4

    :cond_2a2
    move-wide/from16 v21, v2

    :goto_2a4
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v6, Landroid/app/usage/NetworkStatsManager;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v27, v4

    check-cast v27, Landroid/app/usage/NetworkStatsManager;

    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->extractDeltaLocked(Landroid/os/connectivity/WifiActivityEnergyInfo;)Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-result-object v20

    move-object/from16 v19, v4

    move-wide/from16 v23, v9

    invoke-virtual/range {v19 .. v27}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateWifiState(Landroid/os/connectivity/WifiActivityEnergyInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    const-string v4, "BatteryExternalStatsWorker"

    const-string/jumbo v5, "Update wifi state"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2dc

    :cond_2c8
    const-string v4, "BatteryExternalStatsWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "wifi info is invalid: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2dc
    :goto_2dc
    if-eqz v18, :cond_305

    if-eqz v0, :cond_2e2

    iget-wide v2, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->mobileRadioChargeUC:J

    :cond_2e2
    move-wide/from16 v19, v2

    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v2, Landroid/app/usage/NetworkStatsManager;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object/from16 v17, v1

    move-wide/from16 v21, v9

    move-wide/from16 v23, v25

    move-object/from16 v25, v0

    invoke-virtual/range {v17 .. v25}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    const-string v0, "BatteryExternalStatsWorker"

    const-string/jumbo v1, "Update modem state"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_305
    const-string v0, "BatteryExternalStatsWorker"

    const-string/jumbo v1, "done updateExternalStatsLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_30e
    move-exception v0

    move-object/from16 v19, v4

    :goto_311
    :try_start_311
    monitor-exit v19
    :try_end_312
    .catchall {:try_start_311 .. :try_end_312} :catchall_1aa

    throw v0
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Handler;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUseLatestStates:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mSyncTask:Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;

    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWriteTask:Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput-object p3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-wide/16 v1, 0x7d0

    :try_start_6
    invoke-virtual {p0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_3b

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    iget-object v1, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string/jumbo v2, "controller_activity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0
    :try_end_1b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_1b} :catch_1e

    if-eqz p0, :cond_3b

    return-object p0

    :catch_1e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "timeout reading "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " stats"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BatteryExternalStatsWorker"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-object v0
.end method

.method public static getSupportedEnergyBuckets(Landroid/util/SparseArray;)[Z
    .registers 7

    const/16 v0, 0xa

    new-array v0, v0, [Z

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_40

    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/power/stats/EnergyConsumer;

    iget-byte v4, v4, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_42

    goto :goto_3d

    :pswitch_19  #0x7
    const/16 v4, 0x8

    aput-boolean v5, v0, v4

    goto :goto_3d

    :pswitch_1e  #0x6
    const/4 v4, 0x4

    aput-boolean v5, v0, v4

    goto :goto_3d

    :pswitch_22  #0x5
    const/4 v4, 0x7

    aput-boolean v5, v0, v4

    const/16 v4, 0x9

    aput-boolean v5, v0, v4

    goto :goto_3d

    :pswitch_2a  #0x4
    const/4 v4, 0x6

    aput-boolean v5, v0, v4

    goto :goto_3d

    :pswitch_2e  #0x3
    aput-boolean v5, v0, v2

    aput-boolean v5, v0, v5

    const/4 v4, 0x2

    aput-boolean v5, v0, v4

    goto :goto_3d

    :pswitch_36  #0x2
    const/4 v4, 0x3

    aput-boolean v5, v0, v4

    goto :goto_3d

    :pswitch_3a  #0x1
    const/4 v4, 0x5

    aput-boolean v5, v0, v4

    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_40
    return-object v0

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3a  #00000001
        :pswitch_36  #00000002
        :pswitch_2e  #00000003
        :pswitch_2a  #00000004
        :pswitch_22  #00000005
        :pswitch_1e  #00000006
        :pswitch_19  #00000007
    .end packed-switch
.end method


# virtual methods
.method public final addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_b

    return-void

    :cond_b
    invoke-virtual {p1, p0}, Landroid/util/IntArray;->addAll([I)V

    return-void
.end method

.method public extractDeltaLocked(Landroid/os/connectivity/WifiActivityEnergyInfo;)Landroid/os/connectivity/WifiActivityEnergyInfo;
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    if-nez v2, :cond_a

    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    :cond_a
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v4}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v4}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v4

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v6}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v6

    iget-object v8, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v8}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v8

    iget-object v10, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v10}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v10

    iget-object v12, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v12}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v12

    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v15

    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getStackState()I

    move-result v17

    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v18

    sub-long v18, v18, v8

    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v8

    sub-long/2addr v8, v10

    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x0

    cmp-long v14, v18, v4

    if-ltz v14, :cond_76

    cmp-long v14, v8, v4

    if-ltz v14, :cond_76

    cmp-long v14, v6, v4

    if-ltz v14, :cond_76

    cmp-long v14, v10, v4

    if-gez v14, :cond_63

    goto :goto_76

    :cond_63
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v2

    sub-long/2addr v2, v12

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const/4 v4, 0x0

    move-wide/from16 v26, v2

    :goto_6f
    move-wide/from16 v22, v6

    move-wide/from16 v20, v8

    move-wide/from16 v24, v10

    goto :goto_af

    :cond_76
    :goto_76
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v6

    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v6

    add-long/2addr v6, v8

    const-wide/16 v8, 0x2ee

    add-long/2addr v2, v8

    cmp-long v2, v6, v2

    if-gtz v2, :cond_a5

    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v6

    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v8

    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v10

    move-wide/from16 v18, v6

    move-wide v6, v10

    move-wide v10, v8

    move-wide v8, v2

    goto :goto_aa

    :cond_a5
    move-wide v6, v4

    move-wide v8, v6

    move-wide v10, v8

    move-wide/from16 v18, v10

    :goto_aa
    const/4 v2, 0x1

    move-wide/from16 v26, v4

    move v4, v2

    goto :goto_6f

    :goto_af
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    new-instance v14, Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-direct/range {v14 .. v27}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJJ)V

    if-eqz v4, :cond_cc

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "WiFi energy data was reset, new WiFi energy data is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryExternalStatsWorker"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cc
    return-object v14
.end method

.method public getEnergyConsumersLocked(I)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyConsumerResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-nez v0, :cond_9

    goto :goto_5c

    :cond_9
    const/16 v1, 0x7f

    if-ne p1, v1, :cond_15

    const/4 p0, 0x0

    new-array p0, p0, [I

    invoke-virtual {v0, p0}, Landroid/power/PowerStatsInternal;->getEnergyConsumedAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_15
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    :cond_22
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2a

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    :cond_2a
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_32

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    :cond_32
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3a

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    :cond_3a
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_42

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    :cond_42
    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_4a

    const/4 p1, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    :cond_4a
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result p1

    if-nez p1, :cond_51

    goto :goto_5c

    :cond_51
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {p0, p1}, Landroid/power/PowerStatsInternal;->getEnergyConsumedAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_5c
    :goto_5c
    const/4 p0, 0x0

    return-object p0
.end method

.method public final populateEnergyConsumerSubsystemMapsLocked()Landroid/util/SparseArray;
    .registers 10

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-nez v0, :cond_6

    goto/16 :goto_a5

    :cond_6
    check-cast v0, Lcom/android/server/powerstats/PowerStatsService$LocalService;

    iget-object v0, v0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v0

    if-eqz v0, :cond_a5

    array-length v1, v0

    if-nez v1, :cond_19

    goto/16 :goto_a5

    :cond_19
    new-instance v1, Landroid/util/SparseArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_27
    if-ge v5, v3, :cond_7d

    aget-object v6, v0, v5

    iget v7, v6, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    if-eqz v7, :cond_5c

    iget-byte v7, v6, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    if-eqz v7, :cond_5c

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5c

    const/4 v8, 0x3

    if-eq v7, v8, :cond_5c

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "EnergyConsumer \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v6, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' has unexpected ordinal "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v6, v6, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    const-string v8, "BatteryExternalStatsWorker"

    invoke-static {v7, v6, v8}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_7a

    :cond_5c
    iget v7, v6, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v1, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-byte v7, v6, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/IntArray;

    if-nez v7, :cond_75

    new-instance v7, Landroid/util/IntArray;

    invoke-direct {v7}, Landroid/util/IntArray;-><init>()V

    iget-byte v8, v6, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_75
    iget v6, v6, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v7, v6}, Landroid/util/IntArray;->add(I)V

    :goto_7a
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_7d
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_8c
    if-ge v4, v0, :cond_a4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/IntArray;

    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8c

    :cond_a4
    return-object v1

    :cond_a5
    :goto_a5
    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized scheduleSync(ILjava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSyncLocked(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public final scheduleSyncLocked(ILjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_14

    iput p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mSyncTask:Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    :cond_14
    iget p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    return-void
.end method

.method public final systemServicesReady()V
    .registers 11

    const-string/jumbo v0, "timeout or interrupt reading initial getEnergyConsumedAsync: "

    const-string/jumbo v1, "exception reading initial getEnergyConsumedAsync: "

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v3, Landroid/net/wifi/WifiManager;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v4, Landroid/telephony/TelephonyManager;

    iget-object v3, v3, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v5, Landroid/power/PowerStatsInternal;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/power/PowerStatsInternal;

    iget-object v5, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v5

    :try_start_2e
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v6, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mBatteryVoltageMv:I

    monitor-exit v5
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_b7

    iget-object v7, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_36
    iput-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-eqz v4, :cond_9c

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->populateEnergyConsumerSubsystemMapsLocked()Landroid/util/SparseArray;

    move-result-object v2

    if-eqz v2, :cond_9c

    new-instance v3, Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    invoke-direct {v3, v2}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;-><init>(Landroid/util/SparseArray;)V

    iput-object v3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;
    :try_end_4b
    .catchall {:try_start_36 .. :try_end_4b} :catchall_64

    const/4 v3, 0x0

    :try_start_4c
    new-array v3, v3, [I

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {v4, v3}, Landroid/power/PowerStatsInternal;->getEnergyConsumedAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v3, v8, v9, v4}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/power/stats/EnergyConsumerResult;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    invoke-virtual {v4, v3, v6}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->updateAndGetDelta([Landroid/hardware/power/stats/EnergyConsumerResult;I)Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    :try_end_63
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4c .. :try_end_63} :catch_68
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_63} :catch_68
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4c .. :try_end_63} :catch_66
    .catchall {:try_start_4c .. :try_end_63} :catchall_64

    goto :goto_91

    :catchall_64
    move-exception p0

    goto :goto_b5

    :catch_66
    move-exception v0

    goto :goto_6a

    :catch_68
    move-exception v1

    goto :goto_80

    :goto_6a
    :try_start_6a
    const-string v3, "BatteryExternalStatsWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    :goto_80
    const-string v3, "BatteryExternalStatsWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_91
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    invoke-virtual {v0}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->getOtherOrdinalNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getSupportedEnergyBuckets(Landroid/util/SparseArray;)[Z

    move-result-object v1

    goto :goto_9e

    :cond_9c
    const/4 v0, 0x0

    move-object v1, v0

    :goto_9e
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2
    :try_end_a1
    .catchall {:try_start_6a .. :try_end_a1} :catchall_64

    :try_start_a1
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v3, v1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->initEnergyConsumerStatsLocked([Z[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPerDisplayBatteryStats:[Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPerDisplayScreenStates:[I

    monitor-exit v2
    :try_end_b0
    .catchall {:try_start_a1 .. :try_end_b0} :catchall_b2

    :try_start_b0
    monitor-exit v7
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_64

    return-void

    :catchall_b2
    move-exception p0

    :try_start_b3
    monitor-exit v2
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    :try_start_b4
    throw p0

    :goto_b5
    monitor-exit v7
    :try_end_b6
    .catchall {:try_start_b4 .. :try_end_b6} :catchall_64

    throw p0

    :catchall_b7
    move-exception p0

    :try_start_b8
    monitor-exit v5
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    throw p0
.end method
