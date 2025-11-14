.class final Lcom/android/server/power/hint/HintManagerService$BinderService;
.super Landroid/os/IHintManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/hint/HintManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/hint/HintManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-direct {p0}, Landroid/os/IHintManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkPerUidUserModeCpuTimeElapsedLocked(I)Z
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-wide v3, v2, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeTimeCheckedMillis:J

    sub-long/2addr v0, v3

    iget v3, v2, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomProcStatMinMillis:I

    int-to-long v3, v3

    cmp-long v0, v0, v3

    const/4 v1, 0x0

    const-string v3, "HintManagerService"

    if-lez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$BinderService;->getUserModeJiffies()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeJiffies:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeTimeCheckedMillis:J

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to get user mode CPU time"

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mUidToLastUserModeJiffies:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mUidToLastUserModeJiffies:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-wide v6, v0, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeJiffies:J

    sub-long/2addr v6, v4

    long-to-float v2, v6

    iget v6, v0, Lcom/android/server/power/hint/HintManagerService;->mJiffyMillis:F

    mul-float/2addr v2, v6

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinIntervalMillis:I

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "UID "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is requesting CPU headroom too soon"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " last request at "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float p1, v4

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget v2, v2, Lcom/android/server/power/hint/HintManagerService;->mJiffyMillis:F

    mul-float/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms with device currently at "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-wide v6, p1, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeJiffies:J

    long-to-float v2, v6

    iget p1, p1, Lcom/android/server/power/hint/HintManagerService;->mJiffyMillis:F

    mul-float/2addr v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms, the interval: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-wide v6, p1, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeJiffies:J

    sub-long/2addr v6, v4

    long-to-float v2, v6

    iget p1, p1, Lcom/android/server/power/hint/HintManagerService;->mJiffyMillis:F

    mul-float/2addr v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms is less than require minimum interval "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p0, p0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p0, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinIntervalMillis:I

    const-string/jumbo p1, "ms"

    invoke-static {p0, p1, v3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final closeSessionChannel()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget v0, v0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/hint/HintManagerService;->removeChannelItem(Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public final createHintSessionWithConfig(Landroid/os/IBinder;ILandroid/os/SessionCreationConfig;Landroid/hardware/power/SessionConfig;)Landroid/os/IHintManager$SessionCreationReturn;
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v14, p3

    move-object/from16 v9, p4

    const/4 v15, 0x0

    const/4 v11, 0x1

    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    sget-object v2, Lcom/android/server/power/hint/HintManagerService;->PROC_STAT_CPU_TIME_TOTAL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Lcom/android/server/power/hint/HintManagerService;->isHintSessionSupported()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v14, Landroid/os/SessionCreationConfig;->tids:[I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v14, Landroid/os/SessionCreationConfig;->tids:[I

    array-length v0, v5

    if-eqz v0, :cond_0

    move v0, v11

    goto :goto_0

    :cond_0
    move v0, v15

    :goto_0
    const-string/jumbo v2, "tids should not be empty."

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    iget-wide v6, v14, Landroid/os/SessionCreationConfig;->targetWorkDurationNanos:J

    iget-object v0, v14, Landroid/os/SessionCreationConfig;->modesToEnable:[I

    const/4 v2, 0x3

    if-eqz v0, :cond_5

    array-length v8, v0

    move v12, v15

    move v13, v12

    move/from16 v16, v13

    :goto_1
    if-ge v12, v8, :cond_4

    aget v10, v0, v12

    if-ne v10, v11, :cond_1

    move v13, v11

    move/from16 v26, v13

    goto :goto_2

    :cond_1
    move/from16 v26, v11

    :goto_2
    const/4 v11, 0x2

    if-eq v10, v11, :cond_2

    if-ne v10, v2, :cond_3

    :cond_2
    move/from16 v16, v26

    :cond_3
    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v26

    goto :goto_1

    :cond_4
    move v10, v13

    :goto_3
    move/from16 v26, v11

    goto :goto_4

    :cond_5
    move v10, v15

    move/from16 v16, v10

    goto :goto_3

    :goto_4
    if-eqz v16, :cond_6

    const-string/jumbo v0, "graphics pipeline mode not enabled for an automatically timed session"

    invoke-static {v10, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :cond_6
    :try_start_0
    new-instance v11, Landroid/util/IntArray;

    array-length v0, v5

    invoke-direct {v11, v0}, Landroid/util/IntArray;-><init>(I)V

    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0, v4, v3, v5, v11}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$mcheckTidValid(Lcom/android/server/power/hint/HintManagerService;II[ILandroid/util/IntArray;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_18

    :try_start_1
    array-length v0, v5

    move v8, v15

    :goto_5
    if-ge v8, v0, :cond_8

    aget v12, v5, v8

    invoke-static {v12}, Landroid/os/Process;->getThreadScheduler(I)I

    move-result v13

    if-eqz v13, :cond_7

    goto :goto_6

    :cond_7
    invoke-static {v12}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v13

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v12, v2, v15}, Landroid/os/Process;->setThreadScheduler(III)V

    invoke-static {v12, v13}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x3

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_1d

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "HintManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to set SCHED_RESET_ON_FORK for tids "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    const/4 v0, 0x4

    move/from16 v2, p2

    if-ne v2, v0, :cond_b

    :try_start_3
    iget-object v2, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    iget-object v8, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v8, v8, Lcom/android/server/power/hint/HintManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v12, 0x20000

    invoke-virtual {v8, v2, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_7
    const/4 v8, -0x1

    goto :goto_8

    :catch_1
    const/4 v2, -0x1

    goto :goto_7

    :goto_8
    if-eq v2, v8, :cond_9

    if-eqz v2, :cond_a

    :cond_9
    move/from16 v23, v0

    goto :goto_9

    :cond_a
    const/16 v23, 0x3

    goto :goto_9

    :cond_b
    move/from16 v23, v2

    :goto_9
    const-wide/16 v12, -0x1

    :try_start_4
    iput-wide v12, v9, Landroid/hardware/power/SessionConfig;->id:J

    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mConfigCreationSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v27, 0x0

    if-eqz v0, :cond_c

    :try_start_5
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;
    :try_end_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move/from16 v8, v23

    :try_start_6
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halCreateHintSessionWithConfig(II[IJILandroid/hardware/power/SessionConfig;)J

    move-result-wide v18
    :try_end_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move/from16 v23, v8

    :try_start_7
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_c

    :catch_2
    move-exception v0

    goto :goto_a

    :catch_3
    move/from16 v23, v8

    goto :goto_b

    :goto_a
    :try_start_8
    const-string/jumbo v1, "createHintSessionWithConfig failed: "

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createHintSessionWithConfig failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_4
    :goto_b
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mConfigCreationSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_c
    move-object/from16 v0, v27

    :goto_c
    if-nez v0, :cond_d

    :try_start_9
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halCreateHintSession(II[IJ)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_f

    :catch_5
    move-exception v0

    goto :goto_d

    :catch_6
    move-exception v0

    goto :goto_e

    :goto_d
    :try_start_a
    const-string/jumbo v1, "createHintSession failed: "

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createHintSession failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_e
    const-string/jumbo v1, "createHintSession unsupported: "

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createHintSession unsupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :goto_f
    iget-object v2, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTidsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-virtual {v11}, Landroid/util/IntArray;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_10
    if-ltz v8, :cond_e

    move-wide/from16 v28, v12

    iget-object v12, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v12, v12, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    invoke-virtual {v11, v8}, Landroid/util/IntArray;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v12, v12, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    invoke-virtual {v11, v8}, Landroid/util/IntArray;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v17, -0x1

    add-int/lit8 v8, v8, -0x1

    move-wide/from16 v12, v28

    const/4 v15, 0x0

    goto :goto_10

    :catchall_1
    move-exception v0

    goto/16 :goto_1c

    :cond_e
    move-wide/from16 v28, v12

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    iget-wide v11, v9, Landroid/hardware/power/SessionConfig;->id:J

    cmp-long v2, v11, v28

    if-eqz v2, :cond_f

    :goto_11
    move-wide/from16 v18, v11

    goto :goto_12

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_11

    :goto_12
    array-length v2, v5

    const/16 v16, 0x23e

    move/from16 v22, v2

    move/from16 v17, v4

    move-wide/from16 v20, v6

    invoke-static/range {v16 .. v23}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJII)V

    iget-object v2, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v8, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v8, v8, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda0;

    const/4 v15, 0x0

    invoke-direct {v12, v15}, Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v8, v11, v12}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda1;

    invoke-direct {v12, v1}, Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/hint/HintManagerService$BinderService;)V

    invoke-virtual {v8, v11, v12}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    array-length v11, v5

    iget v12, v8, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v8, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    iget v13, v8, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxConcurrentSession:I

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, v8, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxConcurrentSession:I

    iget v12, v8, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v8, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    invoke-virtual {v8, v6, v7}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->updateTargetDurationNs(J)V

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :try_start_e
    iget-object v2, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    iget-wide v8, v9, Landroid/hardware/power/SessionConfig;->id:J

    cmp-long v11, v8, v28

    if-eqz v11, :cond_10

    new-instance v11, Ljava/lang/Integer;

    long-to-int v8, v8

    invoke-direct {v11, v8}, Ljava/lang/Integer;-><init>(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    move-object v13, v11

    :goto_13
    move-object v8, v2

    goto :goto_14

    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    goto/16 :goto_1b

    :cond_10
    move-object/from16 v13, v27

    goto :goto_13

    :goto_14
    :try_start_10
    new-instance v2, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    move-wide v11, v6

    move-object v7, v5

    move v5, v3

    iget-object v3, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v16
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    move/from16 v30, v10

    move-wide/from16 v9, v16

    move/from16 v6, v23

    move/from16 v15, v26

    move-object/from16 v16, v8

    move-object/from16 v8, p1

    :try_start_11
    invoke-direct/range {v2 .. v13}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;-><init>(Lcom/android/server/power/hint/HintManagerService;III[ILandroid/os/IBinder;JJLjava/lang/Integer;)V

    move v3, v5

    move-object v5, v7

    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_11

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v15}, Landroid/util/ArrayMap;-><init>(I)V

    iget-object v6, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v6, v6, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :catchall_3
    move-exception v0

    goto/16 :goto_1b

    :cond_11
    :goto_15
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    if-nez v6, :cond_12

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6, v15}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {v0, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-boolean v6, v0, Lcom/android/server/power/hint/HintManagerService;->mUsesFmq:Z

    if-nez v6, :cond_14

    invoke-virtual {v0, v3, v4}, Lcom/android/server/power/hint/HintManagerService;->hasChannel(II)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_16

    :cond_13
    const/4 v11, 0x0

    goto :goto_17

    :cond_14
    :goto_16
    move v11, v15

    :goto_17
    iput-boolean v11, v0, Lcom/android/server/power/hint/HintManagerService;->mUsesFmq:Z

    monitor-exit v16
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    iget-object v0, v14, Landroid/os/SessionCreationConfig;->modesToEnable:[I

    if-eqz v0, :cond_15

    array-length v3, v0

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v3, :cond_15

    aget v7, v0, v6

    invoke-virtual {v2, v7, v15}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->setMode(IZ)V

    add-int/2addr v6, v15

    goto :goto_18

    :cond_15
    iget-object v0, v14, Landroid/os/SessionCreationConfig;->layerTokens:[Landroid/os/IBinder;

    if-eqz v0, :cond_16

    array-length v3, v0

    if-lez v3, :cond_16

    invoke-virtual {v2, v0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->associateToLayers([Landroid/os/IBinder;)V

    :cond_16
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v3, v0, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageObject:Ljava/lang/Object;

    monitor-enter v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageMap:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda0;

    invoke-direct {v7, v15}, Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v6, v7}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageMap:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    const/4 v6, 0x0

    :goto_19
    array-length v7, v5

    if-ge v6, v7, :cond_17

    new-instance v7, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;

    aget v8, v5, v6

    move/from16 v13, v30

    invoke-direct {v7, v8, v13}, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;-><init>(IZ)V

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v15

    move/from16 v30, v13

    goto :goto_19

    :catchall_4
    move-exception v0

    goto :goto_1a

    :cond_17
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    new-instance v0, Landroid/os/IHintManager$SessionCreationReturn;

    invoke-direct {v0}, Landroid/os/IHintManager$SessionCreationReturn;-><init>()V

    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1, v4}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$mtooManyPipelineThreads(Lcom/android/server/power/hint/HintManagerService;I)Z

    move-result v1

    iput-boolean v1, v0, Landroid/os/IHintManager$SessionCreationReturn;->pipelineThreadLimitExceeded:Z

    iput-object v2, v0, Landroid/os/IHintManager$SessionCreationReturn;->session:Landroid/os/IHintSession;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :goto_1a
    :try_start_15
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :try_start_16
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :catchall_5
    move-exception v0

    move-object/from16 v16, v8

    :goto_1b
    :try_start_17
    monitor-exit v16
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :try_start_18
    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :catchall_6
    move-exception v0

    :try_start_19
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :try_start_1a
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    :goto_1c
    :try_start_1b
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :try_start_1c
    throw v0

    :cond_18
    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1, v4, v5, v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$mformatTidCheckErrMsg(Lcom/android/server/power/hint/HintManagerService;I[ILjava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HintManagerService"

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    :goto_1d
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "PowerHintSessions are not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "HintManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_8

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "HintSessionPreferredRate: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-wide v0, p3, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "MaxGraphicsPipelineThreadsCount: 5"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Hint Session Support: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-virtual {p3}, Lcom/android/server/power/hint/HintManagerService;->isHintSessionSupported()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "Active Sessions:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p1, p1, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    move v2, p3

    :goto_1
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    move v4, p3

    :goto_2
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    const-string v5, "  Session:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    invoke-static {v5, p2}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->-$$Nest$mdump(Lcom/android/server/power/hint/HintManagerService$AppHintSession;Ljava/io/PrintWriter;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "CPU Headroom Supported: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p3, p3, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p3, p3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean p3, p3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    invoke-static {p1, p3, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p1, p1, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p1, p1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean p1, p1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "CPU Headroom Interval: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p3, p3, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p3, p3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p3, p3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinIntervalMillis:I

    const-string v0, "CPU Headroom TID Max Count: "

    invoke-static {p1, p3, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget p3, p3, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomMaxTidCnt:I

    const-string v0, "CPU Headroom TID Max Count From HAL: "

    invoke-static {p1, p3, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p3, p3, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p3, p3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p3, p3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxTidCount:I

    const-string v0, "CPU Headroom Calculation Window Range: ["

    invoke-static {p1, p3, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p3, p3, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p3, p3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p3, p3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinCalculationWindowMillis:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p3, p3, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p3, p3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p3, p3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxCalculationWindowMillis:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "]"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_1
    new-instance p1, Landroid/os/CpuHeadroomParamsInternal;

    invoke-direct {p1}, Landroid/os/CpuHeadroomParamsInternal;-><init>()V

    const/4 p3, 0x1

    iput-boolean p3, p1, Landroid/os/CpuHeadroomParamsInternal;->usesDeviceHeadroom:Z

    invoke-virtual {p0, p1}, Lcom/android/server/power/hint/HintManagerService$BinderService;->getCpuHeadroom(Landroid/os/CpuHeadroomParamsInternal;)Landroid/hardware/power/CpuHeadroomResult;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CPU headroom: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_4

    const-string/jumbo p1, "N/A"

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/hardware/power/CpuHeadroomResult;->getGlobalHeadroom()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :goto_3
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :goto_4
    const-string p3, "HintManagerService"

    const-string v0, "Failed to dump CPU headroom"

    invoke-static {p3, v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "CPU headroom: N/A"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "GPU Headroom Supported: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p3, p3, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p3, p3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean p3, p3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    invoke-static {p1, p3, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p1, p1, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p1, p1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean p1, p1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    if-eqz p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "GPU Headroom Interval: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p3, p3, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p3, p3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p3, p3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinIntervalMillis:I

    const-string v0, "GPU Headroom Calculation Window Range: ["

    invoke-static {p1, p3, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p3, p3, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p3, p3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p3, p3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinCalculationWindowMillis:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p3, p3, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p3, p3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p3, p3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMaxCalculationWindowMillis:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "]"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_2
    new-instance p1, Landroid/os/GpuHeadroomParamsInternal;

    invoke-direct {p1}, Landroid/os/GpuHeadroomParamsInternal;-><init>()V

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget p3, p3, Lcom/android/server/power/hint/HintManagerService;->mDefaultGpuHeadroomCalculationWindowMillis:I

    iput p3, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    invoke-virtual {p0, p1}, Lcom/android/server/power/hint/HintManagerService$BinderService;->getGpuHeadroom(Landroid/os/GpuHeadroomParamsInternal;)Landroid/hardware/power/GpuHeadroomResult;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "GPU headroom: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_6

    const-string/jumbo p0, "N/A"

    goto :goto_6

    :catch_1
    move-exception p0

    goto :goto_7

    :cond_6
    invoke-virtual {p0}, Landroid/hardware/power/GpuHeadroomResult;->getGlobalHeadroom()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_6
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :goto_7
    const-string p1, "HintManagerService"

    const-string p3, "Failed to dump GPU headroom"

    invoke-static {p1, p3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, "GPU headroom: N/A"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    :goto_8
    return-void

    :goto_9
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final getClientData()Landroid/os/IHintManager$HintManagerClientData;
    .locals 3

    new-instance v0, Landroid/os/IHintManager$HintManagerClientData;

    invoke-direct {v0}, Landroid/os/IHintManager$HintManagerClientData;-><init>()V

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    iput-wide v1, v0, Landroid/os/IHintManager$HintManagerClientData;->preferredRateNanos:J

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/IHintManager$HintManagerClientData;->maxGraphicsPipelineThreads:I

    iput v1, v0, Landroid/os/IHintManager$HintManagerClientData;->maxCpuHeadroomThreads:I

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    iput v1, v0, Landroid/os/IHintManager$HintManagerClientData;->powerHalVersion:I

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iput-object p0, v0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    return-object v0
.end method

.method public final getCpuHeadroom(Landroid/os/CpuHeadroomParamsInternal;)Landroid/hardware/power/CpuHeadroomResult;
    .locals 14

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    if-eqz v0, :cond_13

    :try_start_0
    const-class v0, Landroid/hardware/power/CpuHeadroomParams$CalculationType;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_12

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_11

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v4

    iget-byte v6, p1, Landroid/os/CpuHeadroomParamsInternal;->calculationType:B
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v4, v6, :cond_11

    iget v0, p1, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v3, v1, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v3, v3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v4, v3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinCalculationWindowMillis:I

    if-lt v0, v4, :cond_10

    iget v3, v3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxCalculationWindowMillis:I

    if-gt v0, v3, :cond_10

    iget-boolean v0, p1, Landroid/os/CpuHeadroomParamsInternal;->usesDeviceHeadroom:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    iget v1, v1, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomMaxTidCnt:I

    if-gt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "More than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomMaxTidCnt:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " TIDs requested: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    new-instance v3, Landroid/hardware/power/CpuHeadroomParams;

    invoke-direct {v3}, Landroid/hardware/power/CpuHeadroomParams;-><init>()V

    filled-new-array {v1}, [I

    move-result-object v1

    iput-object v1, v3, Landroid/hardware/power/CpuHeadroomParams;->tids:[I

    iget-byte v1, p1, Landroid/os/CpuHeadroomParamsInternal;->calculationType:B

    iput-byte v1, v3, Landroid/hardware/power/CpuHeadroomParams;->calculationType:B

    iget v1, p1, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    iput v1, v3, Landroid/hardware/power/CpuHeadroomParams;->calculationWindowMillis:I

    iget-boolean v1, p1, Landroid/os/CpuHeadroomParamsInternal;->usesDeviceHeadroom:Z

    const/4 v4, 0x1

    const/16 v6, 0x3e8

    if-eqz v1, :cond_2

    new-array p1, v2, [I

    iput-object p1, v3, Landroid/hardware/power/CpuHeadroomParams;->tids:[I

    goto/16 :goto_5

    :cond_2
    iget-object v1, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    if-eqz v1, :cond_8

    array-length v1, v1

    if-lez v1, :cond_8

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-eq v1, v6, :cond_4

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-boolean v1, v1, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomTid:Z

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v1

    iget-object v7, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    array-length v8, v7

    move v9, v2

    :goto_2
    if-ge v9, v8, :cond_4

    aget v10, v7, v9

    invoke-static {v10}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v11

    if-ne v11, v1, :cond_3

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "TID "

    const-string v0, " doesn\'t belong to the calling process with pid "

    invoke-static {v10, v1, p1, v0}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-boolean v1, v1, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomAffinity:Z

    if-eqz v1, :cond_7

    iget-object v1, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    array-length v7, v1

    if-le v7, v4, :cond_7

    const-string v7, "HintManagerService"

    array-length v8, v1

    move v9, v2

    move-object v10, v5

    :goto_3
    if-ge v9, v8, :cond_7

    aget v11, v1, v9

    :try_start_1
    invoke-static {v11}, Landroid/os/Process;->getSchedAffinity(I)[J

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v10, :cond_5

    move-object v10, v12

    goto :goto_4

    :cond_5
    invoke-static {v10, v12}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v13

    if-eqz v13, :cond_6

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Thread affinity is different: tid "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget p1, v1, v2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tid "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Thread affinity is not the same for tids "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to get affinity "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not check affinity for tid "

    invoke-static {v11, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget-object p1, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    iput-object p1, v3, Landroid/hardware/power/CpuHeadroomParams;->tids:[I

    :cond_8
    :goto_5
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v1, p1, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p1, p1, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    invoke-virtual {p1, v3}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/power/CpuHeadroomResult;

    if-eqz p1, :cond_9

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_9
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmEnforceCpuHeadroomUserModeCpuTimeCheck(Lcom/android/server/power/hint/HintManagerService;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    if-eq p1, v6, :cond_b

    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p1, p1, Lcom/android/server/power/hint/HintManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_b

    :cond_a
    move v2, v4

    :cond_b
    if-eqz v2, :cond_d

    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p1, p1, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/android/server/power/hint/HintManagerService$BinderService;->checkPerUidUserModeCpuTimeElapsedLocked(I)Z

    move-result v1

    if-nez v1, :cond_c

    monitor-exit p1

    return-object v5

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_c
    monitor-exit p1

    goto :goto_7

    :goto_6
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_d
    :goto_7
    :try_start_4
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p1, p1, Lcom/android/server/power/hint/HintManagerService;->mPowerHal:Landroid/hardware/power/IPower;

    invoke-interface {p1, v3}, Landroid/hardware/power/IPower;->getCpuHeadroom(Landroid/hardware/power/CpuHeadroomParams;)Landroid/hardware/power/CpuHeadroomResult;

    move-result-object p1

    if-nez p1, :cond_e

    const-string p0, "HintManagerService"

    const-string p1, "CPU headroom from Power HAL is invalid"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :catch_1
    move-exception p0

    goto :goto_8

    :cond_e
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iget-object v4, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v4, v4, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_f

    :try_start_6
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mUidToLastUserModeJiffies:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-wide v3, p0, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeJiffies:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object p1

    :catchall_2
    move-exception p0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_f
    return-object p1

    :catchall_3
    move-exception p0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    :goto_8
    const-string p1, "HintManagerService"

    const-string v0, "Failed to get CPU headroom from Power HAL"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5

    :goto_9
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw p0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid CPU headroom calculation window, expected ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v2, v2, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v2, v2, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinCalculationWindowMillis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p0, p0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p0, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxCalculationWindowMillis:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "] but got "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_2
    const-string p0, "HintManagerService"

    const-string v0, "Checking the calculation type was unexpectedly not allowed"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unknown CPU headroom calculation type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte p1, p1, Landroid/os/CpuHeadroomParamsInternal;->calculationType:B

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final getCpuHeadroomMinIntervalMillis()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p0, p0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinIntervalMillis:I

    int-to-long v0, p0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final getGpuHeadroom(Landroid/os/GpuHeadroomParamsInternal;)Landroid/hardware/power/GpuHeadroomResult;
    .locals 6

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    if-eqz v0, :cond_5

    :try_start_0
    const-class v0, Landroid/hardware/power/GpuHeadroomParams$CalculationType;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v3

    iget-byte v5, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationType:B
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v3, v5, :cond_3

    iget v0, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v2, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinCalculationWindowMillis:I

    if-lt v0, v2, :cond_2

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMaxCalculationWindowMillis:I

    if-gt v0, v1, :cond_2

    new-instance v0, Landroid/hardware/power/GpuHeadroomParams;

    invoke-direct {v0}, Landroid/hardware/power/GpuHeadroomParams;-><init>()V

    iget-byte v1, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationType:B

    iput-byte v1, v0, Landroid/hardware/power/GpuHeadroomParams;->calculationType:B

    iget p1, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    iput p1, v0, Landroid/hardware/power/GpuHeadroomParams;->calculationWindowMillis:I

    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v1, p1, Lcom/android/server/power/hint/HintManagerService;->mGpuHeadroomLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p1, p1, Lcom/android/server/power/hint/HintManagerService;->mGpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    invoke-virtual {p1, v0}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/power/GpuHeadroomResult;

    if-eqz p1, :cond_0

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p1, p1, Lcom/android/server/power/hint/HintManagerService;->mPowerHal:Landroid/hardware/power/IPower;

    invoke-interface {p1, v0}, Landroid/hardware/power/IPower;->getGpuHeadroom(Landroid/hardware/power/GpuHeadroomParams;)Landroid/hardware/power/GpuHeadroomResult;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "HintManagerService"

    const-string p1, "GPU headroom from Power HAL is invalid"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService;->mGpuHeadroomLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mGpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1

    return-object p1

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    const-string p1, "HintManagerService"

    const-string v0, "Failed to get GPU headroom from Power HAL"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid GPU headroom calculation window, expected ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v2, v2, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v2, v2, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinCalculationWindowMillis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p0, p0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p0, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMaxCalculationWindowMillis:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "] but got "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_1
    const-string p0, "HintManagerService"

    const-string v0, "Checking the calculation type was unexpectedly not allowed"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unknown GPU headroom calculation type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte p1, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationType:B

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final getGpuHeadroomMinIntervalMillis()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p0, p0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinIntervalMillis:I

    int-to-long v0, p0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final getHintSessionThreadIds(Landroid/os/IHintSession;)[I
    .locals 1

    check-cast p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getSessionChannel(Landroid/os/IBinder;)Landroid/hardware/power/ChannelConfig;
    .locals 8

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget v1, v0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-lt v1, v2, :cond_4

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mFMQUsesIntegratedEventFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v4, v2, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v2, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v5, v2, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    invoke-direct {v6, v2, v0, v1, p1}, Lcom/android/server/power/hint/HintManagerService$ChannelItem;-><init>(Lcom/android/server/power/hint/HintManagerService;IILandroid/os/IBinder;)V

    invoke-virtual {v6}, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->openChannel()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, p1, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p1, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mConfig:Landroid/hardware/power/ChannelConfig;

    iget-object v0, p1, Landroid/hardware/power/ChannelConfig;->eventFlagDescriptor:Landroid/hardware/common/fmq/MQDescriptor;

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/android/server/power/hint/HintManagerService;->mFMQUsesIntegratedEventFlag:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$BinderService;->closeSessionChannel()V

    return-object v3

    :cond_3
    return-object p1

    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_2
    return-object v3
.end method

.method public final getUserModeJiffies()J
    .locals 7

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmProcStatFilePathOverride(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "/proc/stat"

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmProcStatFilePathOverride(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v2, Lcom/android/server/power/hint/HintManagerService;->PROC_STAT_CPU_TIME_TOTAL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo p0, "user"

    invoke-virtual {v1, p0}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo p0, "nice"

    invoke-virtual {v1, p0}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string p0, "HintManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " nice: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " total "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-wide v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t find cpu line in "

    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public final passSessionManagerBinder(Landroid/os/IBinder;)V
    .locals 2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "android.adpf.ISessionManager"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/adpf/ISessionManager$Stub$Proxy;

    if-eqz v1, :cond_2

    move-object p1, v0

    check-cast p1, Landroid/adpf/ISessionManager$Stub$Proxy;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/adpf/ISessionManager$Stub$Proxy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Landroid/adpf/ISessionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionManager:Landroid/adpf/ISessionManager$Stub$Proxy;

    return-void
.end method

.method public final registerClient(Landroid/os/IHintManager$IHintManagerClient;)Landroid/os/IHintManager$HintManagerClientData;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$BinderService;->getClientData()Landroid/os/IHintManager$HintManagerClientData;

    move-result-object p0

    return-object p0
.end method

.method public final setHintSessionThreads(Landroid/os/IHintSession;[I)V
    .locals 0

    check-cast p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    const/4 p0, 0x1

    invoke-virtual {p1, p2, p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->setThreadsInternal([IZ)V

    iget-object p0, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$mtooManyPipelineThreads(Lcom/android/server/power/hint/HintManagerService;I)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/4 p1, 0x5

    const-string/jumbo p2, "Not enough available graphics pipeline threads."

    invoke-direct {p0, p1, p2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
.end method
