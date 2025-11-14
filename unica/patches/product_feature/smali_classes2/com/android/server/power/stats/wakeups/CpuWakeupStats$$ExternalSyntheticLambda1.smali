.class public final synthetic Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

.field public final synthetic f$1:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/wakeups/CpuWakeupStats;Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    iput-object p2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    iget-object v0, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    const-string/jumbo v2, "Unexpected null attribution found for "

    monitor-enter v1

    :try_start_0
    iget-object v3, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mDevices:[Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    const-wide/32 v4, 0x20000

    if-eqz v3, :cond_0

    iget-wide v10, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/16 v6, 0x24c

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(III[IJ[I)V

    const-string/jumbo v2, "wakeup_attribution"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " --"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v2, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    :try_start_1
    iget-object v3, v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    iget-wide v6, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    if-nez v3, :cond_1

    const-string v3, "CpuWakeupStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_b

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseIntArray;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-nez v10, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    new-array v11, v10, [I

    new-array v12, v10, [I

    move v13, v6

    :goto_1
    if-ge v13, v10, :cond_3

    invoke-virtual {v9, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    aput v14, v11, v13

    invoke-virtual {v9, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    invoke-static {v14}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v14

    aput v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    move-object v15, v11

    move-object/from16 v18, v12

    goto :goto_3

    :cond_4
    :goto_2
    new-array v11, v6, [I

    move-object v15, v11

    move-object/from16 v18, v15

    :goto_3
    iget v9, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mType:I

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-eq v9, v10, :cond_6

    if-eq v9, v11, :cond_5

    move v13, v6

    goto :goto_4

    :cond_5
    move v13, v11

    goto :goto_4

    :cond_6
    move v13, v10

    :goto_4
    if-eq v8, v10, :cond_7

    if-eq v8, v11, :cond_8

    const/4 v10, 0x3

    if-eq v8, v10, :cond_7

    const/4 v10, 0x4

    if-eq v8, v10, :cond_7

    const/4 v10, 0x5

    if-eq v8, v10, :cond_7

    move v14, v6

    goto :goto_5

    :cond_7
    move v14, v10

    goto :goto_5

    :cond_8
    move v14, v11

    :goto_5
    iget-wide v9, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    const/16 v12, 0x24c

    move-wide/from16 v16, v9

    invoke-static/range {v12 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(III[IJ[I)V

    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v9

    if-eqz v9, :cond_a

    if-nez v7, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-static {v8}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->subsystemToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, "wakeup_attribution"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v0, v2}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-void

    :goto_6
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
