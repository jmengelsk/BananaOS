.class final Lcom/android/server/power/hint/HintManagerService$AppHintSession;
.super Landroid/os/IHintSession$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mGraphicsPipeline:Z

.field public mHalSessionPtr:J

.field public mHasBeenGraphicsPipeline:Z

.field public mHasBeenPowerEfficient:Z

.field public mNewThreadIds:[I

.field public final mPid:I

.field public mPowerEfficient:Z

.field public final mSessionId:Ljava/lang/Integer;

.field public mShouldForcePause:Z

.field public final mShouldForcePauseBySPL:Z

.field public final mTag:I

.field public mTargetDurationNanos:J

.field public mThreadIds:[I

.field public final mToken:Landroid/os/IBinder;

.field public mTrackedBySF:Z

.field public final mUid:I

.field public mUpdateAllowedByProcState:Z

.field public final synthetic this$0:Lcom/android/server/power/hint/HintManagerService;


# direct methods
.method public static -$$Nest$mdump(Lcom/android/server/power/hint/HintManagerService$AppHintSession;Ljava/io/PrintWriter;)V
    .registers 11

    const-string v0, "    GraphicsPipeline: "

    const-string v1, "    PowerEfficient: "

    const-string v2, "    SessionForcePaused: "

    const-string v3, "    SessionAllowedByProcState: "

    const-string v4, "    SessionTargetDurationNanos: "

    const-string v5, "    SessionTIDs: "

    const-string v6, "    SessionUID: "

    const-string v7, "    SessionPID: "

    monitor-enter p0

    :try_start_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mPid:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTargetDurationNanos:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mPowerEfficient:Z

    if-eqz v2, :cond_85

    const-string/jumbo v2, "true"

    goto :goto_88

    :catchall_83
    move-exception p1

    goto :goto_a3

    :cond_85
    const-string/jumbo v2, "false"

    :goto_88
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mGraphicsPipeline:Z

    if-eqz v1, :cond_97

    const-string/jumbo v1, "true"

    goto :goto_9a

    :cond_97
    const-string/jumbo v1, "false"

    :goto_9a
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :goto_a3
    monitor-exit p0
    :try_end_a4
    .catchall {:try_start_11 .. :try_end_a4} :catchall_83

    throw p1
.end method

.method public constructor <init>(Lcom/android/server/power/hint/HintManagerService;III[ILandroid/os/IBinder;JJLjava/lang/Integer;)V
    .registers 13

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-direct {p0}, Landroid/os/IHintSession$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePauseBySPL:Z

    iput p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    iput p3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mPid:I

    iput p4, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    iput-object p6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    iput-object p5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    iput-wide p7, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    iput-wide p9, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTargetDurationNanos:J

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    iput-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mPowerEfficient:Z

    iput-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mGraphicsPipeline:Z

    iput-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHasBeenPowerEfficient:Z

    iput-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHasBeenGraphicsPipeline:Z

    iput-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    iput-object p11, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mSessionId:Ljava/lang/Integer;

    iput-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTrackedBySF:Z

    iget-object p4, p1, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    invoke-virtual {p4, p2}, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->isUidForeground(I)Z

    move-result p4

    invoke-virtual {p0, p4}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->updateHintAllowedByProcState(Z)Z

    :try_start_30
    invoke-interface {p6, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_47

    iget p1, p1, Lcom/android/server/power/hint/HintManagerService;->mSystemUiUid:I

    if-lez p1, :cond_46

    if-ne p1, p2, :cond_46

    const-string p1, "HintManagerService"

    const-string/jumbo p2, "SystemUI make new AppHintSession but force pause"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePauseBySPL:Z

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->pause()V

    :cond_46
    return-void

    :catch_47
    move-exception p2

    iget-wide p3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    iget-object p0, p1, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    invoke-virtual {p0, p3, p4}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halCloseHintSession(J)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Client already dead"

    invoke-direct {p0, p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static validateWorkDuration(Landroid/hardware/power/WorkDuration;)V
    .registers 8

    iget-wide v0, p0, Landroid/hardware/power/WorkDuration;->durationNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_80

    iget-wide v0, p0, Landroid/hardware/power/WorkDuration;->workPeriodStartTimestampNanos:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_69

    iget-wide v0, p0, Landroid/hardware/power/WorkDuration;->cpuDurationNanos:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_53

    iget-wide v4, p0, Landroid/hardware/power/WorkDuration;->gpuDurationNanos:J

    cmp-long v6, v4, v2

    if-ltz v6, :cond_3d

    add-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    return-void

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-wide v1, p0, Landroid/hardware/power/WorkDuration;->cpuDurationNanos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Landroid/hardware/power/WorkDuration;->gpuDurationNanos:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v1, "The actual CPU duration (%d) and the actual GPU duration (%d) should not both be 0"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-wide v1, p0, Landroid/hardware/power/WorkDuration;->gpuDurationNanos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Actual GPU duration (%d) should greater than or equal to 0"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-wide v1, p0, Landroid/hardware/power/WorkDuration;->cpuDurationNanos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Actual CPU duration (%d) should be greater than or equal to 0"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-wide v1, p0, Landroid/hardware/power/WorkDuration;->workPeriodStartTimestampNanos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v1, "Work period start timestamp (%d) should be greater than 0"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-wide v1, p0, Landroid/hardware/power/WorkDuration;->durationNanos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Actual total duration (%d) should be greater than 0"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final associateToLayers([Landroid/os/IBinder;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mSessionManager:Landroid/adpf/ISessionManager$Stub$Proxy;

    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mSessionId:Ljava/lang/Integer;

    if-eqz v1, :cond_29

    if-eqz p1, :cond_29

    array-length v2, p1

    if-lez v2, :cond_16

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTrackedBySF:Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_14

    goto :goto_16

    :catchall_14
    move-exception p1

    goto :goto_2b

    :cond_16
    :goto_16
    :try_start_16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/adpf/ISessionManager$Stub$Proxy;->associateSessionToLayers(II[Landroid/os/IBinder;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_20
    .catchall {:try_start_16 .. :try_end_1f} :catchall_14

    goto :goto_29

    :catch_20
    move-exception p1

    :try_start_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not communicate with SessionManager"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_29
    :goto_29
    monitor-exit p0

    return-void

    :goto_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_14

    throw p1
.end method

.method public final binderDied()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->close()V

    return-void
.end method

.method public final close()V
    .registers 11

    const-string/jumbo v0, "Threads Set is null for uid "

    const-string/jumbo v1, "Session snapshot is null for uid "

    const-string/jumbo v2, "Session snapshot map is null for uid "

    const-string v3, "Death link does not exist for session with UID "

    monitor-enter p0

    :try_start_c
    iget-wide v4, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_19

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    goto/16 :goto_216

    :cond_19
    iget-object v8, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v8, v8, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    invoke-virtual {v8, v4, v5}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halCloseHintSession(J)V

    iput-wide v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_16

    const/4 v4, 0x0

    :try_start_23
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    invoke-interface {v5, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_28
    .catch Ljava/util/NoSuchElementException; {:try_start_23 .. :try_end_28} :catch_29
    .catchall {:try_start_23 .. :try_end_28} :catchall_16

    goto :goto_3c

    :catch_29
    :try_start_29
    const-string v5, "HintManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3c
    iget-boolean v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTrackedBySF:Z

    if-eqz v3, :cond_67

    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v3, v3, Lcom/android/server/power/hint/HintManagerService;->mSessionManager:Landroid/adpf/ISessionManager$Stub$Proxy;
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_16

    if-eqz v3, :cond_5f

    :try_start_46
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mSessionId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/adpf/ISessionManager$Stub$Proxy;->trackedSessionsDied([I)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_53} :catch_56
    .catchall {:try_start_46 .. :try_end_53} :catchall_16

    :try_start_53
    iput-boolean v4, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTrackedBySF:Z

    goto :goto_67

    :catch_56
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not communicate with SessionManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5f
    const-string v3, "HintManagerService"

    const-string/jumbo v5, "SessionManager is null but there are tracked sessions"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    :goto_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_53 .. :try_end_68} :catchall_16

    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v3, v3, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6d
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v5, v5, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    iget v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    if-nez v5, :cond_97

    const-string v0, "HintManagerService"

    const-string/jumbo v1, "UID %d is not present in active session map"

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v3

    goto/16 :goto_20f

    :catchall_94
    move-exception p0

    goto/16 :goto_214

    :cond_97
    iget-object v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    if-nez v6, :cond_b6

    const-string v0, "HintManagerService"

    const-string/jumbo v1, "Token %s is not present in token map"

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    invoke-interface {p0}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v3

    goto/16 :goto_20f

    :cond_b6
    invoke-virtual {v6, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c4

    iget-object v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c4
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d7

    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v5, v5, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    iget v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d7
    monitor-exit v3
    :try_end_d8
    .catchall {:try_start_6d .. :try_end_d8} :catchall_94

    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v5, v3, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_dd
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v3, v3, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    iget v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_108

    const-string v0, "HintManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto/16 :goto_20f

    :catchall_105
    move-exception p0

    goto/16 :goto_212

    :cond_108
    iget v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    if-nez v2, :cond_136

    const-string v0, "HintManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and tag "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto/16 :goto_20f

    :cond_136
    iget v1, v2, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    iput v1, v2, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    monitor-exit v5
    :try_end_13d
    .catchall {:try_start_dd .. :try_end_13d} :catchall_105

    iget-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mGraphicsPipeline:Z

    if-eqz v1, :cond_1ae

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_146
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageMap:Landroid/util/ArrayMap;

    iget v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-nez v2, :cond_170

    const-string v2, "HintManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto/16 :goto_20f

    :catchall_16e
    move-exception p0

    goto :goto_1ac

    :cond_170
    move v0, v4

    :goto_171
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v0, v5, :cond_197

    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;

    iget v6, v6, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;->mTid:I

    array-length v7, v5

    move v8, v4

    :goto_183
    if-ge v8, v7, :cond_18e

    aget v9, v5, v8

    if-ne v9, v6, :cond_18b

    move v5, v3

    goto :goto_18f

    :cond_18b
    add-int/lit8 v8, v8, 0x1

    goto :goto_183

    :cond_18e
    move v5, v4

    :goto_18f
    if-eqz v5, :cond_194

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_194
    add-int/lit8 v0, v0, 0x1

    goto :goto_171

    :cond_197
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1aa

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageMap:Landroid/util/ArrayMap;

    iget v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1aa
    monitor-exit v1

    goto :goto_1ae

    :goto_1ac
    monitor-exit v1
    :try_end_1ad
    .catchall {:try_start_146 .. :try_end_1ad} :catchall_16e

    throw p0

    :cond_1ae
    :goto_1ae
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTidsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1b3
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getTidsInternal()[I

    move-result-object v1

    array-length v2, v1

    :goto_1b8
    if-ge v4, v2, :cond_20e

    aget v3, v1, v4

    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v5, v5, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20b

    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v5, v5, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    iget-wide v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v5, v5, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_20b

    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v5, v5, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20b

    :catchall_209
    move-exception p0

    goto :goto_210

    :cond_20b
    :goto_20b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b8

    :cond_20e
    monitor-exit v0

    :goto_20f
    return-void

    :goto_210
    monitor-exit v0
    :try_end_211
    .catchall {:try_start_1b3 .. :try_end_211} :catchall_209

    throw p0

    :goto_212
    :try_start_212
    monitor-exit v5
    :try_end_213
    .catchall {:try_start_212 .. :try_end_213} :catchall_105

    throw p0

    :goto_214
    :try_start_214
    monitor-exit v3
    :try_end_215
    .catchall {:try_start_214 .. :try_end_215} :catchall_94

    throw p0

    :goto_216
    :try_start_216
    monitor-exit p0
    :try_end_217
    .catchall {:try_start_216 .. :try_end_217} :catchall_16

    throw v0
.end method

.method public getTidsInternal()[I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    if-eqz v0, :cond_d

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_14

    :catchall_b
    move-exception v0

    goto :goto_16

    :cond_d
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :goto_14
    monitor-exit p0

    return-object v0

    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_b

    throw v0
.end method

.method public final isHintAllowed()Z
    .registers 5

    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    if-nez v0, :cond_16

    iget-boolean p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePauseBySPL:Z

    if-nez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public final pause()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    goto :goto_16

    :cond_d
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halPauseHintSession(J)V

    monitor-exit p0

    return-void

    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_b

    throw v0
.end method

.method public final reportActualWorkDuration([J[J)V
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isHintAllowed()Z

    move-result v0

    if-nez v0, :cond_b

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    goto :goto_59

    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    const-string/jumbo v3, "the count of hint durations shouldn\'t be 0."

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    array-length v0, p1

    array-length v3, p2

    if-ne v0, v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v1

    :goto_1f
    const-string/jumbo v0, "The length of durations and timestamps should be the same."

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :goto_25
    array-length v0, p1

    if-ge v1, v0, :cond_4e

    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_33

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_33
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "durations[%d]=%d should be greater than 0"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-wide v3, p1, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4e
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halReportActualWorkDuration(J[J[J)V

    monitor-exit p0

    return-void

    :goto_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_9

    throw p1
.end method

.method public final reportActualWorkDuration2([Landroid/hardware/power/WorkDuration;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isHintAllowed()Z

    move-result v0

    if-nez v0, :cond_b

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    goto :goto_2e

    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    const-string/jumbo v2, "the count of work durations shouldn\'t be 0."

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :goto_18
    array-length v0, p1

    if-ge v1, v0, :cond_23

    aget-object v0, p1, v1

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->validateWorkDuration(Landroid/hardware/power/WorkDuration;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_23
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halReportActualWorkDuration(J[Landroid/hardware/power/WorkDuration;)V

    monitor-exit p0

    return-void

    :goto_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_9

    throw p1
.end method

.method public final resume()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    goto :goto_2a

    :cond_d
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halResumeHintSession(J)V

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    iget-wide v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halSetThreads(J[I)V

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    :cond_28
    monitor-exit p0

    return-void

    :goto_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_b

    throw v0
.end method

.method public final sendHint(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isHintAllowed()Z

    move-result v0

    if-nez v0, :cond_b

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    goto :goto_21

    :cond_b
    if-ltz p1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string/jumbo v1, "the hint ID value should be greater than zero."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halSendHint(JI)V

    monitor-exit p0

    return-void

    :goto_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_9

    throw p1
.end method

.method public final setMode(IZ)V
    .registers 11

    const-string/jumbo v0, "Session snapshot is null for uid "

    const-string/jumbo v1, "Session snapshot map is null for uid "

    const-string/jumbo v2, "Session snapshot is null for uid "

    const-string/jumbo v3, "Session snapshot map is null for uid "

    monitor-enter p0

    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isHintAllowed()Z

    move-result v4

    if-nez v4, :cond_18

    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    goto/16 :goto_10d

    :cond_18
    const/4 v4, 0x1

    if-ltz p1, :cond_1d

    move v5, v4

    goto :goto_1e

    :cond_1d
    const/4 v5, 0x0

    :goto_1e
    const-string/jumbo v6, "the mode Id value should be greater than zero."

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-nez p1, :cond_29

    iput-boolean p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mPowerEfficient:Z

    goto :goto_2d

    :cond_29
    if-ne p1, v4, :cond_2d

    iput-boolean p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mGraphicsPipeline:Z

    :cond_2d
    :goto_2d
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v5, v5, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    iget-wide v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v5, v6, v7, p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halSetMode(JIZ)V

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_15

    if-eqz p2, :cond_10c

    if-nez p1, :cond_a5

    iget-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHasBeenPowerEfficient:Z

    if-nez p1, :cond_10c

    iput-boolean v4, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHasBeenPowerEfficient:Z

    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p1, p1, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_46
    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p2, p2, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    if-nez p2, :cond_6f

    const-string p2, "HintManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    return-void

    :catchall_6d
    move-exception p0

    goto :goto_a3

    :cond_6f
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    if-nez p2, :cond_9c

    const-string p2, "HintManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    return-void

    :cond_9c
    iget p0, p2, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mPowerEfficientSessionCount:I

    add-int/2addr p0, v4

    iput p0, p2, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mPowerEfficientSessionCount:I

    monitor-exit p1

    return-void

    :goto_a3
    monitor-exit p1
    :try_end_a4
    .catchall {:try_start_46 .. :try_end_a4} :catchall_6d

    throw p0

    :cond_a5
    if-ne p1, v4, :cond_10c

    iget-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHasBeenGraphicsPipeline:Z

    if-nez p1, :cond_10c

    iput-boolean v4, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHasBeenGraphicsPipeline:Z

    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p1, p1, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_b2
    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p2, p2, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    iget v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    if-nez p2, :cond_db

    const-string p2, "HintManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    return-void

    :catchall_d9
    move-exception p0

    goto :goto_10a

    :cond_db
    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    if-nez p2, :cond_108

    const-string p2, "HintManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and tag "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    return-void

    :cond_108
    monitor-exit p1

    return-void

    :goto_10a
    monitor-exit p1
    :try_end_10b
    .catchall {:try_start_b2 .. :try_end_10b} :catchall_d9

    throw p0

    :cond_10c
    return-void

    :goto_10d
    :try_start_10d
    monitor-exit p0
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_15

    throw p1
.end method

.method public final setThreadsInternal([IZ)V
    .registers 13

    array-length v0, p1

    if-eqz v0, :cond_1e5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    monitor-enter p0

    :try_start_8
    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_15

    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    goto/16 :goto_1e3

    :cond_15
    iget-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    const/4 v2, 0x0

    if-nez v1, :cond_28

    const-string p2, "HintManagerService"

    const-string/jumbo v0, "update hint not allowed, storing tids."

    invoke-static {p2, v0}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    iput-boolean v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    monitor-exit p0

    return-void

    :cond_28
    const/4 v1, 0x1

    if-eqz p2, :cond_de

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-static {p2}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result p2

    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_12

    :try_start_3c
    iget-object v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v6, v0, p2, p1, v3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$mcheckTidValid(Lcom/android/server/power/hint/HintManagerService;II[ILandroid/util/IntArray;)Ljava/lang/Integer;

    move-result-object p2
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_60

    if-nez p2, :cond_c9

    :try_start_44
    array-length p2, p1

    move v6, v2

    :goto_46
    if-ge v6, p2, :cond_7e

    aget v7, p1, v6

    invoke-static {v7}, Landroid/os/Process;->getThreadScheduler(I)I

    move-result v8

    if-eqz v8, :cond_51

    goto :goto_5d

    :cond_51
    invoke-static {v7}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v8

    const/high16 v9, 0x40000000  # 2.0f

    invoke-static {v7, v9, v2}, Landroid/os/Process;->setThreadScheduler(III)V

    invoke-static {v7, v8}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5d} :catch_63
    .catchall {:try_start_44 .. :try_end_5d} :catchall_60

    :goto_5d
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    :catchall_60
    move-exception p1

    goto/16 :goto_da

    :catch_63
    move-exception p2

    :try_start_64
    const-string v6, "HintManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to set SCHED_RESET_ON_FORK for tids "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7e
    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p2, p2, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTidsLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_83
    .catchall {:try_start_64 .. :try_end_83} :catchall_60

    :try_start_83
    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_88
    if-ltz v6, :cond_c2

    iget-object v7, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v7, v7, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    invoke-virtual {v3, v6}, Landroid/util/IntArray;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v7, v7, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    invoke-virtual {v3, v6}, Landroid/util/IntArray;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    iget-wide v8, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, -0x1

    goto :goto_88

    :catchall_c0
    move-exception p1

    goto :goto_c7

    :cond_c2
    monitor-exit p2
    :try_end_c3
    .catchall {:try_start_83 .. :try_end_c3} :catchall_c0

    :try_start_c3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_12

    goto :goto_de

    :goto_c7
    :try_start_c7
    monitor-exit p2
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c0

    :try_start_c8
    throw p1

    :cond_c9
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1, v0, p1, p2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$mformatTidCheckErrMsg(Lcom/android/server/power/hint/HintManagerService;I[ILjava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "HintManagerService"

    invoke-static {p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_da
    .catchall {:try_start_c8 .. :try_end_da} :catchall_60

    :goto_da
    :try_start_da
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :cond_de
    :goto_de
    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p2, p2, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    iget-wide v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {p2, v3, v4, p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halSetThreads(J[I)V

    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p2, p2, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageObject:Ljava/lang/Object;

    monitor-enter p2
    :try_end_ec
    .catchall {:try_start_da .. :try_end_ec} :catchall_12

    :try_start_ec
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v3, v3, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageMap:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-nez v3, :cond_11f

    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v3, v3, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageMap:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v3, v3, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageMap:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/util/ArraySet;

    goto :goto_11f

    :catchall_11c
    move-exception p1

    goto/16 :goto_1e1

    :cond_11f
    :goto_11f
    move v0, v2

    :goto_120
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v0, v4, :cond_146

    iget-object v4, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;

    iget v5, v5, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;->mTid:I

    array-length v6, v4

    move v7, v2

    :goto_132
    if-ge v7, v6, :cond_13d

    aget v8, v4, v7

    if-ne v8, v5, :cond_13a

    move v4, v1

    goto :goto_13e

    :cond_13a
    add-int/lit8 v7, v7, 0x1

    goto :goto_132

    :cond_13d
    move v4, v2

    :goto_13e
    if-eqz v4, :cond_143

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_143
    add-int/lit8 v0, v0, 0x1

    goto :goto_120

    :cond_146
    array-length v0, p1

    move v1, v2

    :goto_148
    if-ge v1, v0, :cond_159

    aget v4, p1, v1

    new-instance v5, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;

    iget-boolean v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mGraphicsPipeline:Z

    invoke-direct {v5, v4, v6}, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;-><init>(IZ)V

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_148

    :cond_159
    monitor-exit p2
    :try_end_15a
    .catchall {:try_start_ec .. :try_end_15a} :catchall_11c

    :try_start_15a
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    iget-boolean p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    if-eqz p2, :cond_16c

    iget-boolean p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePauseBySPL:Z

    if-nez p2, :cond_16a

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->resume()V

    :cond_16a
    iput-boolean v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    :cond_16c
    monitor-exit p0
    :try_end_16d
    .catchall {:try_start_15a .. :try_end_16d} :catchall_12

    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p2, p2, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_172
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_1a1

    const-string p1, "HintManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Session snapshot map is null for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p2

    goto :goto_1de

    :catchall_19f
    move-exception p0

    goto :goto_1df

    :cond_1a1
    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    if-nez v0, :cond_1d4

    const-string p1, "HintManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Session snapshot is null for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p2

    goto :goto_1de

    :cond_1d4
    array-length p0, p1

    iget p1, v0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    monitor-exit p2

    :goto_1de
    return-void

    :goto_1df
    monitor-exit p2
    :try_end_1e0
    .catchall {:try_start_172 .. :try_end_1e0} :catchall_19f

    throw p0

    :goto_1e1
    :try_start_1e1
    monitor-exit p2
    :try_end_1e2
    .catchall {:try_start_1e1 .. :try_end_1e2} :catchall_11c

    :try_start_1e2
    throw p1

    :goto_1e3
    monitor-exit p0
    :try_end_1e4
    .catchall {:try_start_1e2 .. :try_end_1e4} :catchall_12

    throw p1

    :cond_1e5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Thread id list can\'t be empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateHintAllowedByProcState(Z)Z
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_15

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePauseBySPL:Z

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->resume()V

    goto :goto_15

    :catchall_13
    move-exception p1

    goto :goto_22

    :cond_15
    :goto_15
    if-nez p1, :cond_1e

    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->pause()V

    :cond_1e
    iput-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    monitor-exit p0

    return p1

    :goto_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_13

    throw p1
.end method

.method public final updateTargetWorkDuration(J)V
    .registers 8

    const-string/jumbo v0, "Session snapshot is null for uid "

    const-string/jumbo v1, "Session snapshot map is null for uid "

    monitor-enter p0

    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isHintAllowed()Z

    move-result v2

    if-nez v2, :cond_12

    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    goto/16 :goto_90

    :cond_12
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    const-string v3, "Expected the target duration to be greater than or equal to 0."

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    iget-wide v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v2, v3, v4, p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halUpdateTargetWorkDuration(JJ)V

    iput-wide p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTargetDurationNanos:J

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_f

    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p1, p1, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_31
    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p2, p2, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    iget v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    if-nez p2, :cond_5a

    const-string p2, "HintManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    return-void

    :catchall_58
    move-exception p0

    goto :goto_8e

    :cond_5a
    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    if-nez p2, :cond_87

    const-string p2, "HintManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and tag "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    return-void

    :cond_87
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTargetDurationNanos:J

    invoke-virtual {p2, v0, v1}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->updateTargetDurationNs(J)V

    monitor-exit p1

    return-void

    :goto_8e
    monitor-exit p1
    :try_end_8f
    .catchall {:try_start_31 .. :try_end_8f} :catchall_58

    throw p0

    :goto_90
    :try_start_90
    monitor-exit p0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_f

    throw p1
.end method
