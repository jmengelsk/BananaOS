.class public final synthetic Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mHasHistoryStepDetails:Z

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCallback:Lcom/android/server/am/ActivityManagerService;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mHasHistoryStepDetails:Z

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuUserTimeMs:J

    iget-wide v5, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepCpuUserTimeMs:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v2, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuSystemTimeMs:J

    iget-wide v5, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepCpuSystemTimeMs:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v2, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatUserTimeMs:J

    iget-wide v5, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatUserTimeMs:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSystemTimeMs:J

    iget-wide v5, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatSystemTimeMs:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIOWaitTimeMs:J

    iget-wide v5, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIOWaitTimeMs:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIrqTimeMs:J

    iget-wide v5, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIrqTimeMs:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSoftIrqTimeMs:J

    iget-wide v5, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatSoftIrqTimeMs:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIdleTimeMs:J

    iget-wide v5, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIdleTimeMs:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    const/4 v3, -0x1

    iput v3, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iput v3, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v3, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iput v0, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iput v0, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iput v0, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iput v0, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    iput v0, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    iput v0, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_5

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v6, 0x0

    long-to-int v6, v6

    add-int v7, v6, v6

    iget-object v8, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v9, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget v10, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    add-int/2addr v9, v10

    if-gt v7, v9, :cond_2

    goto :goto_1

    :cond_2
    iget v9, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget v10, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    add-int v11, v9, v10

    if-gt v7, v11, :cond_3

    iget v5, v5, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    iput v5, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iput v6, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iput v6, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    goto :goto_1

    :cond_3
    iget v11, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v11, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iput v9, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iput v10, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    iget v9, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget v10, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    add-int v11, v9, v10

    if-gt v7, v11, :cond_4

    iget v5, v5, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    iput v5, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v6, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iput v6, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    goto :goto_1

    :cond_4
    iget v7, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iput v7, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v9, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iput v10, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    iget v5, v5, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    iput v5, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iput v6, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iput v6, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuUserTimeMs:J

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepCpuUserTimeMs:J

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuSystemTimeMs:J

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepCpuSystemTimeMs:J

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatUserTimeMs:J

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatUserTimeMs:J

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSystemTimeMs:J

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatSystemTimeMs:J

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIOWaitTimeMs:J

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIOWaitTimeMs:J

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIrqTimeMs:J

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIrqTimeMs:J

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSoftIrqTimeMs:J

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatSoftIrqTimeMs:J

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIdleTimeMs:J

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIdleTimeMs:J

    :goto_2
    const-string v2, "BatteryHistoryStepDetails"

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mEntityNames:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mStateNames:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_6

    :cond_6
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    new-array v4, v0, [I

    invoke-virtual {v3, v4}, Landroid/power/PowerStatsInternal;->getStateResidencyAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/power/stats/StateResidencyResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_b

    array-length v4, v3

    if-nez v4, :cond_7

    goto/16 :goto_6

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "SubsystemPowerState"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v5, v0

    :goto_3
    array-length v6, v3

    if-ge v5, v6, :cond_a

    aget-object v6, v3, v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const-string v8, " subsystem_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " name="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mEntityNames:Ljava/util/Map;

    iget v10, v6, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v9, v0

    :goto_4
    iget-object v10, v6, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    array-length v11, v10

    if-ge v9, v11, :cond_8

    aget-object v10, v10, v9

    const-string v11, " state_"

    invoke-static {v9, v11, v8, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v11, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mStateNames:Ljava/util/Map;

    iget v12, v6, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    check-cast v11, Ljava/util/HashMap;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    iget v12, v10, Landroid/hardware/power/stats/StateResidency;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " time="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v10, Landroid/hardware/power/stats/StateResidency;->totalTimeInStateMs:J

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " count="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v10, Landroid/hardware/power/stats/StateResidency;->totalStateEntryCount:J

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " last entry="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v10, Landroid/hardware/power/stats/StateResidency;->lastEntryTimestampMs:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const v8, 0x8000

    if-le v6, v8, :cond_9

    const-string/jumbo v0, "updateStateResidency: buffer not enough"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_5

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    goto :goto_6

    :catch_0
    move-exception v0

    const-string v3, "Failed to getStateResidencyAsync"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_6
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iget-object v5, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object p0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    iget-object p0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;->recordHistoryStepDetails(Landroid/os/BatteryStats$HistoryStepDetails;JJ)V

    return-void
.end method
