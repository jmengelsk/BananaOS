.class public final Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/hint/HintManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/hint/HintManagerService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final cleanUpSession(Lcom/android/server/power/hint/HintManagerService$AppHintSession;Landroid/util/SparseIntArray;[I)I
    .registers 16

    monitor-enter p1

    :try_start_1
    iget-wide v0, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_124

    if-nez v0, :cond_123

    monitor-enter p1

    :try_start_12
    iget-boolean v0, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    monitor-exit p1
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_120

    if-eqz v0, :cond_19

    goto/16 :goto_123

    :cond_19
    iget v0, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mPid:I

    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getTidsInternal()[I

    move-result-object v3

    array-length v4, p3

    if-ne v4, v1, :cond_28

    aget v4, p3, v2

    array-length v5, v3

    add-int/2addr v4, v5

    aput v4, p3, v2

    :cond_28
    new-instance p3, Landroid/util/IntArray;

    array-length v4, v3

    invoke-direct {p3, v4}, Landroid/util/IntArray;-><init>(I)V

    move v4, v2

    :goto_2f
    array-length v5, v3

    if-ge v4, v5, :cond_96

    aget v5, v3, v4

    invoke-virtual {p2, v5, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-eqz v6, :cond_44

    invoke-virtual {p2, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-ne v6, v1, :cond_90

    invoke-virtual {p3, v5}, Landroid/util/IntArray;->add(I)V

    goto :goto_90

    :cond_44
    iget-object v6, p0, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v6, v6, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTidsLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_49
    iget-object v7, p0, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v7, v7, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    monitor-exit v6
    :try_end_58
    .catchall {:try_start_49 .. :try_end_58} :catchall_93

    if-eqz v7, :cond_60

    :try_start_5a
    invoke-static {v0, v5}, Landroid/os/Process;->checkTid(II)V

    goto :goto_63

    :catch_5e
    move-exception v6

    goto :goto_6a

    :cond_60
    invoke-static {v5}, Landroid/os/Process;->checkPid(I)V

    :goto_63
    invoke-virtual {p2, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {p3, v5}, Landroid/util/IntArray;->add(I)V
    :try_end_69
    .catch Ljava/util/NoSuchElementException; {:try_start_5a .. :try_end_69} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_69} :catch_5e

    goto :goto_90

    :goto_6a
    const-string v8, "HintManagerService"

    const-string/jumbo v9, "Unexpected exception when checking TID "

    const-string v10, " under PID "

    const-string v11, "(isolated: "

    invoke-static {v5, v0, v9, v10, v11}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    xor-int/lit8 v7, v7, 0x1

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p3, v5}, Landroid/util/IntArray;->add(I)V

    goto :goto_90

    :catch_8c
    const/4 v6, 0x2

    invoke-virtual {p2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    :cond_90
    :goto_90
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    :catchall_93
    move-exception p0

    :try_start_94
    monitor-exit v6
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw p0

    :cond_96
    array-length p0, v3

    invoke-virtual {p3}, Landroid/util/IntArray;->size()I

    move-result p2

    sub-int/2addr p0, p2

    if-lez p0, :cond_11f

    monitor-enter p1

    :try_start_9f
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getTidsInternal()[I

    move-result-object p2

    array-length v0, p2

    array-length v4, v3

    if-eq v0, v4, :cond_b3

    const-string p2, "HintManagerService"

    const-string/jumbo p3, "Skipped cleaning up the session as new tids are added"

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    goto :goto_11f

    :catchall_b1
    move-exception p0

    goto :goto_11d

    :cond_b3
    invoke-static {p2}, Ljava/util/Arrays;->sort([I)V

    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    invoke-static {p2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p2

    if-nez p2, :cond_c9

    const-string p2, "HintManagerService"

    const-string/jumbo p3, "Skipped cleaning up the session as new tids are updated"

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    goto :goto_11f

    :cond_c9
    const-string p2, "HintManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaned up "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " invalid tids for session "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " with UID "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n\tbefore: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\tafter: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Landroid/util/IntArray;->toArray()[I

    move-result-object p2

    array-length p3, p2

    if-nez p3, :cond_118

    iput-boolean v1, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    iget-boolean p2, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    if-eqz p2, :cond_11b

    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->pause()V

    goto :goto_11b

    :cond_118
    invoke-virtual {p1, p2, v2}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->setThreadsInternal([IZ)V

    :cond_11b
    :goto_11b
    monitor-exit p1

    goto :goto_11f

    :goto_11d
    monitor-exit p1
    :try_end_11e
    .catchall {:try_start_9f .. :try_end_11e} :catchall_b1

    throw p0

    :cond_11f
    :goto_11f
    return p0

    :catchall_120
    move-exception p0

    :try_start_121
    monitor-exit p1
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_120

    throw p0

    :cond_123
    :goto_123
    return v2

    :catchall_124
    move-exception p0

    :try_start_125
    monitor-exit p1
    :try_end_126
    .catchall {:try_start_125 .. :try_end_126} :catchall_124

    throw p0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_196

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->hasEqualMessages(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget v2, v1, Landroid/os/Message;->what:I

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    iget v2, v1, Landroid/os/Message;->what:I

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v0, "HintManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Duplicate messages for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3b
    const-string v2, "HintManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Starts cleaning for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v0, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->isUidForeground(I)Z

    move-result v10

    iget-object v2, v0, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_66
    iget-object v4, v0, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v4, v4, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-eqz v1, :cond_192

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7a

    goto/16 :goto_192

    :cond_7a
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_89
    if-ltz v5, :cond_aa

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_96
    if-ltz v8, :cond_a7

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, -0x1

    goto :goto_96

    :catchall_a4
    move-exception v0

    goto/16 :goto_194

    :cond_a7
    add-int/lit8 v5, v5, -0x1

    goto :goto_89

    :cond_aa
    monitor-exit v2
    :try_end_ab
    .catchall {:try_start_66 .. :try_end_ab} :catchall_a4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [J

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v7, v5, [I

    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    new-array v9, v6, [I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v6

    :goto_c3
    if-ltz v11, :cond_f8

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    :try_start_cf
    invoke-virtual {v0, v6, v8, v9}, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->cleanUpSession(Lcom/android/server/power/hint/HintManagerService$AppHintSession;Landroid/util/SparseIntArray;[I)I

    move-result v14

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    sub-long/2addr v15, v12

    aput v14, v7, v11

    aput-wide v15, v2, v11
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_dc} :catch_dd

    goto :goto_f5

    :catch_dd
    const-string v12, "HintManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Failed to clean up session "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v14, v6, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " for UID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {v13, v6, v12}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :goto_f5
    add-int/lit8 v11, v11, -0x1

    goto :goto_c3

    :cond_f8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    aget v6, v9, v4

    const/high16 v8, -0x80000000

    move v9, v4

    move-object v11, v7

    move v7, v9

    :goto_104
    if-ge v9, v5, :cond_110

    aget v12, v11, v9

    add-int/2addr v7, v12

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_104

    :cond_110
    if-lez v7, :cond_196

    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    const-wide/16 v11, 0x0

    move v5, v4

    :goto_118
    if-ge v5, v1, :cond_120

    aget-wide v13, v2, v5

    add-long/2addr v11, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_118

    :cond_120
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v13

    long-to-int v9, v13

    add-int/lit8 v13, v1, -0x1

    aget-wide v13, v2, v13

    invoke-virtual {v5, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v13

    long-to-int v13, v13

    aget-wide v14, v2, v4

    invoke-virtual {v5, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v14

    long-to-int v14, v14

    move-object v4, v2

    move/from16 p1, v3

    int-to-long v2, v1

    div-long/2addr v11, v2

    invoke-virtual {v5, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v2

    long-to-int v11, v2

    int-to-double v1, v1

    const-wide v15, 0x3feccccccccccccdL  # 0.9

    mul-double/2addr v1, v15

    double-to-int v1, v1

    aget-wide v1, v4, v1

    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v1

    long-to-int v1, v1

    const/16 v2, 0x347

    move/from16 v3, p1

    move v4, v9

    move v5, v13

    move v9, v0

    invoke-static/range {v2 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIIZ)V

    const-string v0, "Invalid tid found for UID"

    const-string v2, " in "

    const-string/jumbo v12, "us:\n\tcount( session: "

    invoke-static {v3, v4, v0, v2, v12}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " totalTid: "

    const-string v3, " maxInvalidTid: "

    invoke-static {v9, v6, v2, v3, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v2, " totalInvalidTid: "

    const-string v3, ")\n\ttime per session( min: "

    invoke-static {v8, v7, v2, v3, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string/jumbo v2, "us max: "

    const-string/jumbo v3, "us avg: "

    invoke-static {v14, v5, v2, v3, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string/jumbo v2, "us 90%: "

    const-string/jumbo v3, "us)\n\tisForeground: "

    invoke-static {v11, v1, v2, v3, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HintManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_196

    :cond_192
    :goto_192
    :try_start_192
    monitor-exit v2

    return-void

    :goto_194
    monitor-exit v2
    :try_end_195
    .catchall {:try_start_192 .. :try_end_195} :catchall_a4

    throw v0

    :cond_196
    :goto_196
    return-void
.end method
