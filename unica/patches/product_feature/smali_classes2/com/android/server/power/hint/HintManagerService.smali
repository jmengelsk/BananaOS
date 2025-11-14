.class public final Lcom/android/server/power/hint/HintManagerService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field static final CLEAN_UP_UID_DELAY_MILLIS:I = 0x3e8

.field static final MAX_GRAPHICS_PIPELINE_THREADS_COUNT:I = 0x5

.field public static final PROC_STAT_CPU_TIME_TOTAL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final mActiveSessions:Landroid/util/ArrayMap;

.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mChannelMap:Landroid/util/ArrayMap;

.field public final mChannelMapLock:Ljava/lang/Object;

.field public final mCheckHeadroomAffinity:Z

.field public final mCheckHeadroomProcStatMinMillis:I

.field public final mCheckHeadroomTid:Z

.field public final mCleanUpHandler:Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

.field public final mConfigCreationSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mContext:Landroid/content/Context;

.field public final mCpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

.field public final mCpuHeadroomLock:Ljava/lang/Object;

.field public final mCpuHeadroomMaxTidCnt:I

.field public final mDefaultGpuHeadroomCalculationWindowMillis:I

.field private mEnforceCpuHeadroomUserModeCpuTimeCheck:Z

.field public mFMQUsesIntegratedEventFlag:Ljava/lang/Boolean;

.field public final mGpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

.field public final mGpuHeadroomLock:Ljava/lang/Object;

.field final mHintSessionPreferredRate:J

.field final mJiffyMillis:F

.field public mLastCpuUserModeJiffies:J

.field public mLastCpuUserModeTimeCheckedMillis:J

.field public final mLock:Ljava/lang/Object;

.field public final mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

.field public final mNonIsolatedTids:Ljava/util/Map;

.field public final mNonIsolatedTidsLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPowerHal:Landroid/hardware/power/IPower;

.field public mPowerHalVersion:I

.field private mProcStatFilePathOverride:Ljava/lang/String;

.field final mService:Landroid/os/IHintManager$Stub;

.field public mSessionManager:Landroid/adpf/ISessionManager$Stub$Proxy;

.field public final mSessionSnapshotMap:Landroid/util/ArrayMap;

.field public final mSessionSnapshotMapLock:Ljava/lang/Object;

.field public final mSupportInfo:Landroid/hardware/power/SupportInfo;

.field public mSystemUiUid:I

.field public final mThreadsUsageMap:Landroid/util/ArrayMap;

.field public final mThreadsUsageObject:Ljava/lang/Object;

.field final mUidObserver:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

.field public final mUidToLastUserModeJiffies:Ljava/util/Map;

.field public mUsesFmq:Z


# direct methods
.method public static $r8$lambda$ekPydgvI2SqQJb7XQ9M2EthMnAQ(Lcom/android/server/power/hint/HintManagerService;ILjava/util/List;)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/16 v6, 0x27bd

    if-ne v1, v6, :cond_2e

    const-string/jumbo v7, "debug.sf.enable_adpf_cpu_hint"

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string/jumbo v8, "debug.hwui.use_hint_manager"

    invoke-static {v8, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iget-boolean v9, v0, Lcom/android/server/power/hint/HintManagerService;->mUsesFmq:Z

    if-eqz v9, :cond_20

    const/4 v9, 0x1

    goto :goto_27

    :cond_20
    iget v9, v0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    if-ge v9, v5, :cond_26

    const/4 v9, 0x3

    goto :goto_27

    :cond_26
    const/4 v9, 0x2

    :goto_27
    invoke-static {v6, v7, v8, v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IZZI)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    const/16 v6, 0x27ea

    if-ne v1, v6, :cond_177

    iget-object v1, v0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    monitor-enter v1

    move v6, v4

    :goto_36
    :try_start_36
    iget-object v7, v0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_c0

    iget-object v7, v0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v7, v0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    move v15, v4

    :goto_53
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v15, v8, :cond_b6

    invoke-virtual {v7, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v7, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    iget v11, v8, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxConcurrentSession:I

    iget v12, v8, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    iget v13, v8, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mPowerEfficientSessionCount:I

    new-array v14, v5, [J

    const/16 v16, 0x1

    :goto_73
    iget-object v3, v8, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    if-le v3, v5, :cond_81

    iget-object v3, v8, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    goto :goto_73

    :cond_81
    move v3, v4

    :goto_82
    if-ge v3, v5, :cond_a1

    iget-object v4, v8, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a1

    iget-object v4, v8, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;

    move/from16 p1, v6

    iget-wide v5, v4, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mTargetDurationNs:J

    aput-wide v5, v14, v3

    add-int/lit8 v3, v3, 0x1

    move/from16 v6, p1

    const/4 v4, 0x0

    const/4 v5, 0x5

    goto :goto_82

    :cond_a1
    move/from16 p1, v6

    const/16 v8, 0x27ea

    invoke-static/range {v8 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIII[J)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move/from16 v6, p1

    const/4 v4, 0x0

    const/4 v5, 0x5

    goto :goto_53

    :catchall_b3
    move-exception v0

    goto/16 :goto_175

    :cond_b6
    move/from16 p1, v6

    const/16 v16, 0x1

    add-int/lit8 v6, p1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    goto/16 :goto_36

    :cond_c0
    const/16 v16, 0x1

    monitor-exit v1
    :try_end_c3
    .catchall {:try_start_36 .. :try_end_c3} :catchall_b3

    iget-object v2, v0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_c6
    iget-object v1, v0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    iget-object v1, v0, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_ce
    .catchall {:try_start_c6 .. :try_end_ce} :catchall_16f

    const/4 v3, 0x0

    :goto_cf
    :try_start_cf
    iget-object v4, v0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_16c

    iget-object v4, v0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    const/4 v5, 0x0

    :goto_e0
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_168

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    const/4 v7, 0x0

    :goto_ed
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_164

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    iget v9, v8, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    iget v10, v8, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    monitor-enter v8
    :try_end_fe
    .catchall {:try_start_cf .. :try_end_fe} :catchall_128

    :try_start_fe
    iget-wide v11, v8, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTargetDurationNanos:J

    monitor-exit v8
    :try_end_101
    .catchall {:try_start_fe .. :try_end_101} :catchall_161

    :try_start_101
    monitor-enter v8
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_128

    :try_start_102
    iget-object v13, v8, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    array-length v14, v13

    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v13

    monitor-exit v8
    :try_end_10a
    .catchall {:try_start_102 .. :try_end_10a} :catchall_15e

    :try_start_10a
    array-length v8, v13

    iget-object v13, v0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArrayMap;

    if-nez v13, :cond_12a

    new-instance v13, Landroid/util/ArrayMap;

    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    iget-object v14, v0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v14, v10, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12a

    :catchall_128
    move-exception v0

    goto :goto_171

    :cond_12a
    :goto_12a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    if-nez v10, :cond_142

    new-instance v10, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    invoke-direct {v10}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;-><init>()V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_142
    iget v9, v10, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v10, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    iget v13, v10, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxConcurrentSession:I

    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v10, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxConcurrentSession:I

    iget v9, v10, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v10, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    invoke-virtual {v10, v11, v12}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->updateTargetDurationNs(J)V
    :try_end_15b
    .catchall {:try_start_10a .. :try_end_15b} :catchall_128

    add-int/lit8 v7, v7, 0x1

    goto :goto_ed

    :catchall_15e
    move-exception v0

    :try_start_15f
    monitor-exit v8
    :try_end_160
    .catchall {:try_start_15f .. :try_end_160} :catchall_15e

    :try_start_160
    throw v0
    :try_end_161
    .catchall {:try_start_160 .. :try_end_161} :catchall_128

    :catchall_161
    move-exception v0

    :try_start_162
    monitor-exit v8
    :try_end_163
    .catchall {:try_start_162 .. :try_end_163} :catchall_161

    :try_start_163
    throw v0

    :cond_164
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_e0

    :cond_168
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_cf

    :cond_16c
    monitor-exit v1
    :try_end_16d
    .catchall {:try_start_163 .. :try_end_16d} :catchall_128

    :try_start_16d
    monitor-exit v2
    :try_end_16e
    .catchall {:try_start_16d .. :try_end_16e} :catchall_16f

    return-void

    :catchall_16f
    move-exception v0

    goto :goto_173

    :goto_171
    :try_start_171
    monitor-exit v1
    :try_end_172
    .catchall {:try_start_171 .. :try_end_172} :catchall_128

    :try_start_172
    throw v0

    :goto_173
    monitor-exit v2
    :try_end_174
    .catchall {:try_start_172 .. :try_end_174} :catchall_16f

    throw v0

    :goto_175
    :try_start_175
    monitor-exit v1
    :try_end_176
    .catchall {:try_start_175 .. :try_end_176} :catchall_b3

    throw v0

    :cond_177
    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmEnforceCpuHeadroomUserModeCpuTimeCheck(Lcom/android/server/power/hint/HintManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/hint/HintManagerService;->mEnforceCpuHeadroomUserModeCpuTimeCheck:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcStatFilePathOverride(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mProcStatFilePathOverride:Ljava/lang/String;

    return-object p0
.end method

.method public static -$$Nest$mcheckTidValid(Lcom/android/server/power/hint/HintManagerService;II[ILandroid/util/IntArray;)Ljava/lang/Integer;
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v1

    :goto_4
    array-length v4, p3

    if-ge v2, v4, :cond_5f

    aget v4, p3, v2

    const-string/jumbo v5, "Uid:"

    const-string/jumbo v6, "Tgid:"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [J

    const-string v7, "/proc/"

    const-string v8, "/status"

    invoke-static {v4, v7, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5, v6}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    aget-wide v7, v6, v1

    long-to-int v5, v7

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    long-to-int v6, v6

    if-ne v6, p2, :cond_2e

    invoke-virtual {p4, v4}, Landroid/util/IntArray;->add(I)V

    goto :goto_57

    :cond_2e
    if-ne v5, p1, :cond_31

    goto :goto_57

    :cond_31
    if-nez v3, :cond_4d

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v5, 0x3e8

    if-ne v3, v5, :cond_40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_40
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, p1}, Landroid/app/ActivityManagerInternal;->getIsolatedProcesses(I)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_4d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_5f
    return-object v0
.end method

.method public static -$$Nest$mformatTidCheckErrMsg(Lcom/android/server/power/hint/HintManagerService;I[ILjava/lang/Integer;)Ljava/lang/String;
    .registers 5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Tid"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " from list "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " doesn\'t belong to the calling application "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static -$$Nest$mtooManyPipelineThreads(Lcom/android/server/power/hint/HintManagerService;I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    const/4 p1, 0x0

    if-eqz p0, :cond_32

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, p1

    :cond_17
    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;

    iget-boolean v2, v2, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;->mIsGraphicsPipeline:Z

    if-eqz v2, :cond_17

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :catchall_2a
    move-exception p0

    goto :goto_34

    :cond_2c
    const/4 p0, 0x5

    if-le v1, p0, :cond_32

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_32
    monitor-exit v0

    return p1

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_2a

    throw p0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "cpu\\s+(?<user>[0-9]+)\\s(?<nice>[0-9]+).+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/hint/HintManagerService;->PROC_STAT_CPU_TIME_TOTAL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/android/server/power/hint/HintManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/power/hint/HintManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/hint/HintManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/hint/HintManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/hint/HintManagerService$Injector;)V
    .registers 10

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageObject:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTidsLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mConfigCreationSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/android/server/power/hint/HintManagerService;->mFMQUsesIntegratedEventFlag:Ljava/lang/Boolean;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeTimeCheckedMillis:J

    iput-wide v2, p0, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeJiffies:J

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mProcStatFilePathOverride:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/hint/HintManagerService;->mEnforceCpuHeadroomUserModeCpuTimeCheck:Z

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mGpuHeadroomLock:Ljava/lang/Object;

    new-instance v3, Lcom/android/server/power/hint/HintManagerService$BinderService;

    invoke-direct {v3, p0}, Lcom/android/server/power/hint/HintManagerService$BinderService;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/power/hint/HintManagerService;->mSystemUiUid:I

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

    new-instance v4, Lcom/android/server/ServiceThread;

    const/16 v5, 0x13

    const-string v6, "HintManagerService"

    invoke-direct {v4, v6, v5, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->start()V

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;-><init>(Lcom/android/server/power/hint/HintManagerService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mCleanUpHandler:Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageMap:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    invoke-direct {p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halInit()V

    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halGetHintSessionPreferredRate()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    new-instance p1, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    invoke-direct {p1, p0}, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Landroid/hardware/power/IPower;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/default"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/power/IPower$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/power/IPower;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHal:Landroid/hardware/power/IPower;

    iput v2, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    iput-boolean v2, p0, Lcom/android/server/power/hint/HintManagerService;->mUsesFmq:Z

    if-eqz p1, :cond_f4

    :try_start_e4
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService;->getSupportInfo()Landroid/hardware/power/SupportInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;
    :try_end_ea
    .catch Landroid/os/RemoteException; {:try_start_e4 .. :try_end_ea} :catch_eb

    goto :goto_f4

    :catch_eb
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not contact PowerHAL!"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_f4
    :goto_f4
    new-instance p1, Landroid/os/CpuHeadroomParamsInternal;

    invoke-direct {p1}, Landroid/os/CpuHeadroomParamsInternal;-><init>()V

    new-instance p1, Landroid/os/GpuHeadroomParamsInternal;

    invoke-direct {p1}, Landroid/os/GpuHeadroomParamsInternal;-><init>()V

    iget p1, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    iput p1, p0, Lcom/android/server/power/hint/HintManagerService;->mDefaultGpuHeadroomCalculationWindowMillis:I

    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p1, p1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean p2, p1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    if-eqz p2, :cond_159

    new-instance p2, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    iget p1, p1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinIntervalMillis:I

    int-to-long v2, p1

    invoke-direct {p2, v2, v3}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;-><init>(J)V

    iput-object p2, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mUidToLastUserModeJiffies:Ljava/util/Map;

    sget p1, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {p1}, Landroid/system/Os;->sysconf(I)J

    move-result-wide p1

    const/high16 v2, 0x447a0000  # 1000.0f

    long-to-float p1, p1

    div-float/2addr v2, p1

    iput v2, p0, Lcom/android/server/power/hint/HintManagerService;->mJiffyMillis:F

    const-string/jumbo p1, "persist.hms.check_headroom_tid"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomTid:Z

    const-string/jumbo p1, "persist.hms.check_headroom_affinity"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomAffinity:Z

    const-string/jumbo p1, "persist.hms.check_headroom_proc_stat_min_millis"

    const/16 p2, 0x32

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomProcStatMinMillis:I

    const-string/jumbo p1, "persist.hms.cpu_headroom_tid_max_cnt"

    const/4 p2, 0x5

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p2, p2, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p2, p2, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxTidCount:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomMaxTidCnt:I

    goto :goto_168

    :cond_159
    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mUidToLastUserModeJiffies:Ljava/util/Map;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/power/hint/HintManagerService;->mJiffyMillis:F

    iput-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomTid:Z

    iput-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomAffinity:Z

    iput v2, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomProcStatMinMillis:I

    iput v2, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomMaxTidCnt:I

    :goto_168
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p1, p1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean p2, p1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    if-eqz p2, :cond_17b

    new-instance p2, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    iget p1, p1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinIntervalMillis:I

    int-to-long v0, p1

    invoke-direct {p2, v0, v1}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;-><init>(J)V

    iput-object p2, p0, Lcom/android/server/power/hint/HintManagerService;->mGpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    return-void

    :cond_17b
    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mGpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    return-void
.end method


# virtual methods
.method public getBinderServiceInstance()Landroid/os/IHintManager$Stub;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    return-object p0
.end method

.method public final getSupportInfo()Landroid/hardware/power/SupportInfo;
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHal:Landroid/hardware/power/IPower;

    invoke-interface {v0}, Landroid/hardware/power/IPower;->getInterfaceVersion()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_12

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHal:Landroid/hardware/power/IPower;

    invoke-interface {p0}, Landroid/hardware/power/IPower;->getSupportInfo()Landroid/hardware/power/SupportInfo;

    move-result-object p0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_59

    return-object p0

    :cond_12
    new-instance v0, Landroid/hardware/power/SupportInfo;

    invoke-direct {v0}, Landroid/hardware/power/SupportInfo;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService;->isHintSessionSupported()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/power/SupportInfo;->usesSessions:Z

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hardware/power/SupportInfo;->boosts:J

    iput-wide v1, v0, Landroid/hardware/power/SupportInfo;->modes:J

    iput-wide v1, v0, Landroid/hardware/power/SupportInfo;->sessionHints:J

    iput-wide v1, v0, Landroid/hardware/power/SupportInfo;->sessionModes:J

    iput-wide v1, v0, Landroid/hardware/power/SupportInfo;->sessionTags:J

    new-instance v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    invoke-direct {v1}, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;-><init>()V

    iput-object v1, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    iput-boolean v2, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    new-instance v1, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;

    invoke-direct {v1}, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;-><init>()V

    iput-object v1, v0, Landroid/hardware/power/SupportInfo;->compositionData:Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService;->isHintSessionSupported()Z

    move-result v1

    if-eqz v1, :cond_58

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    const/4 v1, 0x4

    const-wide/16 v2, 0x1f

    if-ne p0, v1, :cond_4b

    iput-wide v2, v0, Landroid/hardware/power/SupportInfo;->sessionHints:J

    :cond_4b
    const/4 v1, 0x5

    if-ne p0, v1, :cond_58

    const-wide/16 v4, 0xff

    iput-wide v4, v0, Landroid/hardware/power/SupportInfo;->sessionHints:J

    const-wide/16 v4, 0x1

    iput-wide v4, v0, Landroid/hardware/power/SupportInfo;->sessionModes:J

    iput-wide v2, v0, Landroid/hardware/power/SupportInfo;->sessionTags:J

    :cond_58
    return-object v0

    :catch_59
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not contact PowerHAL!"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public hasChannel(II)Ljava/lang/Boolean;
    .registers 4

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/TreeMap;

    if-eqz p0, :cond_28

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_26
    move-exception p0

    goto :goto_2c

    :cond_28
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    monitor-exit v0

    return-object p0

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_26

    throw p0
.end method

.method public final isHintSessionSupported()Z
    .registers 5

    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final onBootPhase(I)V
    .registers 8

    const/4 v0, -0x1

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    if-ne p1, v1, :cond_17

    const-string v1, "HintManagerService"

    const-string v3, "Initializing HintManager service..."

    invoke-static {v1, v3}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    const/4 v4, 0x3

    invoke-interface {v1, v3, v4, v0, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_aa

    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/power/hint/HintManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/power/hint/HintManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    const/16 v4, 0x27bd

    invoke-virtual {p1, v4, v2, v1, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    new-instance v3, Lcom/android/server/power/hint/HintManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/power/hint/HintManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    const/16 v4, 0x27ea

    invoke-virtual {p1, v4, v2, v1, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string/jumbo v1, "com.android.systemui"

    if-eqz p1, :cond_56

    const/4 v2, 0x0

    :try_start_47
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/hint/HintManagerService;->mSystemUiUid:I
    :try_end_4d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_47 .. :try_end_4d} :catch_4e

    goto :goto_56

    :catch_4e
    const-string p1, "HintManagerService"

    const-string/jumbo v1, "com.android.systemui is not found in pm"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    :goto_56
    iget p1, p0, Lcom/android/server/power/hint/HintManagerService;->mSystemUiUid:I

    if-lez p1, :cond_aa

    :try_start_5a
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_a2

    :try_start_5d
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService;->mSystemUiUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_71

    monitor-exit p1

    goto :goto_aa

    :catchall_6f
    move-exception p0

    goto :goto_a0

    :cond_71
    const-string v1, "HintManagerService"

    const-string/jumbo v2, "SystemUI ADPF Force Pause"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_7f
    if-ltz v1, :cond_9e

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_8d
    if-ltz v3, :cond_9c

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    sget v5, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->$r8$clinit:I

    invoke-virtual {v4}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->pause()V

    add-int/2addr v3, v0

    goto :goto_8d

    :cond_9c
    add-int/2addr v1, v0

    goto :goto_7f

    :cond_9e
    monitor-exit p1

    goto :goto_aa

    :goto_a0
    monitor-exit p1
    :try_end_a1
    .catchall {:try_start_5d .. :try_end_a1} :catchall_6f

    :try_start_a1
    throw p0
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a2} :catch_a2

    :catch_a2
    const-string p0, "HintManagerService"

    const-string/jumbo p1, "com.android.systemui exception ADPF Force Pause"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    :goto_aa
    return-void
.end method

.method public final onStart()V
    .registers 3

    const-string/jumbo v0, "performance_hint"

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final removeChannelItem(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    if-eqz v1, :cond_29

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->closeChannel()V

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_2b

    :cond_1e
    :goto_1e
    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    monitor-exit v0

    return-void

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_1c

    throw p0
.end method

.method public setProcStatPathOverride(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mProcStatFilePathOverride:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService;->mEnforceCpuHeadroomUserModeCpuTimeCheck:Z

    return-void
.end method
