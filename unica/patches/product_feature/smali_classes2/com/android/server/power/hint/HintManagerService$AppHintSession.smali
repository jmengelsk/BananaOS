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
    .locals 9

    const-string v0, "    GraphicsPipeline: "

    const-string v1, "    PowerEfficient: "

    const-string v2, "    SessionForcePaused: "

    const-string v3, "    SessionAllowedByProcState: "

    const-string v4, "    SessionTargetDurationNanos: "

    const-string v5, "    SessionTIDs: "

    const-string v6, "    SessionUID: "

    const-string v7, "    SessionPID: "

    monitor-enter p0

    :try_start_0
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

    if-eqz v2, :cond_0

    const-string/jumbo v2, "true"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const-string/jumbo v2, "false"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mGraphicsPipeline:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "true"

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "false"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public constructor <init>(Lcom/android/server/power/hint/HintManagerService;III[ILandroid/os/IBinder;JJLjava/lang/Integer;)V
    .locals 1

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

    :try_start_0
    invoke-interface {p6, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget p1, p1, Lcom/android/server/power/hint/HintManagerService;->mSystemUiUid:I

    if-lez p1, :cond_0

    if-ne p1, p2, :cond_0

    const-string p1, "HintManagerService"

    const-string/jumbo p2, "SystemUI make new AppHintSession but force pause"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePauseBySPL:Z

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->pause()V

    :cond_0
    return-void

    :catch_0
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
    .locals 7

    iget-wide v0, p0, Landroid/hardware/power/WorkDuration;->durationNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-wide v0, p0, Landroid/hardware/power/WorkDuration;->workPeriodStartTimestampNanos:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-wide v0, p0, Landroid/hardware/power/WorkDuration;->cpuDurationNanos:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    iget-wide v4, p0, Landroid/hardware/power/WorkDuration;->gpuDurationNanos:J

    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    add-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    return-void

    :cond_0
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

    :cond_1
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

    :cond_2
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

    :cond_3
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

    :cond_4
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
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mSessionManager:Landroid/adpf/ISessionManager$Stub$Proxy;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mSessionId:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTrackedBySF:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/adpf/ISessionManager$Stub$Proxy;->associateSessionToLayers(II[Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not communicate with SessionManager"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final binderDied()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->close()V

    return-void
.end method

.method public final close()V
    .locals 10

    const-string/jumbo v0, "Threads Set is null for uid "

    const-string/jumbo v1, "Session snapshot is null for uid "

    const-string/jumbo v2, "Session snapshot map is null for uid "

    const-string v3, "Death link does not exist for session with UID "

    monitor-enter p0

    :try_start_0
    iget-wide v4, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_0
    iget-object v8, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v8, v8, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    invoke-virtual {v8, v4, v5}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halCloseHintSession(J)V

    iput-wide v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    invoke-interface {v5, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v5, "HintManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTrackedBySF:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v3, v3, Lcom/android/server/power/hint/HintManagerService;->mSessionManager:Landroid/adpf/ISessionManager$Stub$Proxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    :try_start_3
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mSessionId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/adpf/ISessionManager$Stub$Proxy;->trackedSessionsDied([I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iput-boolean v4, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTrackedBySF:Z

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not communicate with SessionManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const-string v3, "HintManagerService"

    const-string/jumbo v5, "SessionManager is null but there are tracked sessions"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v3, v3, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v5, v5, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    iget v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    if-nez v5, :cond_3

    const-string v0, "HintManagerService"

    const-string/jumbo v1, "UID %d is not present in active session map"

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v3

    goto/16 :goto_9

    :catchall_1
    move-exception p0

    goto/16 :goto_c

    :cond_3
    iget-object v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    if-nez v6, :cond_4

    const-string v0, "HintManagerService"

    const-string/jumbo v1, "Token %s is not present in token map"

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    invoke-interface {p0}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v3

    goto/16 :goto_9

    :cond_4
    invoke-virtual {v6, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v5, v5, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    iget v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v5, v3, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_6
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v3, v3, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    iget v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_7

    const-string v0, "HintManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto/16 :goto_9

    :catchall_2
    move-exception p0

    goto/16 :goto_b

    :cond_7
    iget v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    if-nez v2, :cond_8

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

    goto/16 :goto_9

    :cond_8
    iget v1, v2, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    iput v1, v2, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    iget-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mGraphicsPipeline:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageMap:Landroid/util/ArrayMap;

    iget v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-nez v2, :cond_9

    const-string v2, "HintManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto/16 :goto_9

    :catchall_3
    move-exception p0

    goto :goto_5

    :cond_9
    move v0, v4

    :goto_2
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v0, v5, :cond_d

    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;

    iget v6, v6, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;->mTid:I

    array-length v7, v5

    move v8, v4

    :goto_3
    if-ge v8, v7, :cond_b

    aget v9, v5, v8

    if-ne v9, v6, :cond_a

    move v5, v3

    goto :goto_4

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_b
    move v5, v4

    :goto_4
    if-eqz v5, :cond_c

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageMap:Landroid/util/ArrayMap;

    iget v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    monitor-exit v1

    goto :goto_6

    :goto_5
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :cond_f
    :goto_6
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTidsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getTidsInternal()[I

    move-result-object v1

    array-length v2, v1

    :goto_7
    if-ge v4, v2, :cond_11

    aget v3, v1, v4

    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v5, v5, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

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

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v5, v5, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :catchall_4
    move-exception p0

    goto :goto_a

    :cond_10
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_11
    monitor-exit v0

    :goto_9
    return-void

    :goto_a
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p0

    :goto_b
    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p0

    :goto_c
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw p0

    :goto_d
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0
.end method

.method public getTidsInternal()[I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isHintAllowed()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePauseBySPL:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final pause()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halPauseHintSession(J)V

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final reportActualWorkDuration([J[J)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isHintAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-string/jumbo v3, "the count of hint durations shouldn\'t be 0."

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    array-length v0, p1

    array-length v3, p2

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    const-string/jumbo v0, "The length of durations and timestamps should be the same."

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :goto_2
    array-length v0, p1

    if-ge v1, v0, :cond_4

    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
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

    :cond_4
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halReportActualWorkDuration(J[J[J)V

    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final reportActualWorkDuration2([Landroid/hardware/power/WorkDuration;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isHintAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-string/jumbo v2, "the count of work durations shouldn\'t be 0."

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_2

    aget-object v0, p1, v1

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->validateWorkDuration(Landroid/hardware/power/WorkDuration;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halReportActualWorkDuration(J[Landroid/hardware/power/WorkDuration;)V

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final resume()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halResumeHintSession(J)V

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    iget-wide v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halSetThreads(J[I)V

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final sendHint(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isHintAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "the hint ID value should be greater than zero."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halSendHint(JI)V

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setMode(IZ)V
    .locals 8

    const-string/jumbo v0, "Session snapshot is null for uid "

    const-string/jumbo v1, "Session snapshot map is null for uid "

    const-string/jumbo v2, "Session snapshot is null for uid "

    const-string/jumbo v3, "Session snapshot map is null for uid "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isHintAllowed()Z

    move-result v4

    if-nez v4, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    const/4 v4, 0x1

    if-ltz p1, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const-string/jumbo v6, "the mode Id value should be greater than zero."

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-nez p1, :cond_2

    iput-boolean p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mPowerEfficient:Z

    goto :goto_1

    :cond_2
    if-ne p1, v4, :cond_3

    iput-boolean p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mGraphicsPipeline:Z

    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v5, v5, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    iget-wide v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v5, v6, v7, p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halSetMode(JIZ)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_9

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHasBeenPowerEfficient:Z

    if-nez p1, :cond_9

    iput-boolean v4, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHasBeenPowerEfficient:Z

    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p1, p1, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p2, p2, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    if-nez p2, :cond_4

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

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    if-nez p2, :cond_5

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

    :cond_5
    iget p0, p2, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mPowerEfficientSessionCount:I

    add-int/2addr p0, v4

    iput p0, p2, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mPowerEfficientSessionCount:I

    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_6
    if-ne p1, v4, :cond_9

    iget-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHasBeenGraphicsPipeline:Z

    if-nez p1, :cond_9

    iput-boolean v4, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHasBeenGraphicsPipeline:Z

    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p1, p1, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p2, p2, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    iget v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    if-nez p2, :cond_7

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

    :catchall_2
    move-exception p0

    goto :goto_3

    :cond_7
    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    if-nez p2, :cond_8

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

    :cond_8
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :cond_9
    return-void

    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final setThreadsInternal([IZ)V
    .locals 10

    array-length v0, p1

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_e

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string p2, "HintManagerService"

    const-string/jumbo v0, "update hint not allowed, storing tids."

    invoke-static {p2, v0}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    iput-boolean v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x1

    if-eqz p2, :cond_6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-static {p2}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result p2

    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v6, v0, p2, p1, v3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$mcheckTidValid(Lcom/android/server/power/hint/HintManagerService;II[ILandroid/util/IntArray;)Ljava/lang/Integer;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p2, :cond_5

    :try_start_2
    array-length p2, p1

    move v6, v2

    :goto_0
    if-ge v6, p2, :cond_3

    aget v7, p1, v6

    invoke-static {v7}, Landroid/os/Process;->getThreadScheduler(I)I

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v7}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v9, v2}, Landroid/os/Process;->setThreadScheduler(III)V

    invoke-static {v7, v8}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p2

    :try_start_3
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

    :cond_3
    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p2, p2, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTidsLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_2
    if-ltz v6, :cond_4

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

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :cond_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :goto_3
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw p1

    :cond_5
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1, v0, p1, p2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$mformatTidCheckErrMsg(Lcom/android/server/power/hint/HintManagerService;I[ILjava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "HintManagerService"

    invoke-static {p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_4
    :try_start_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :cond_6
    :goto_5
    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p2, p2, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    iget-wide v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {p2, v3, v4, p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halSetThreads(J[I)V

    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p2, p2, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageObject:Ljava/lang/Object;

    monitor-enter p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v3, v3, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageMap:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-nez v3, :cond_7

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

    goto :goto_6

    :catchall_3
    move-exception p1

    goto/16 :goto_d

    :cond_7
    :goto_6
    move v0, v2

    :goto_7
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v0, v4, :cond_b

    iget-object v4, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;

    iget v5, v5, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;->mTid:I

    array-length v6, v4

    move v7, v2

    :goto_8
    if-ge v7, v6, :cond_9

    aget v8, v4, v7

    if-ne v8, v5, :cond_8

    move v4, v1

    goto :goto_9

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_9
    move v4, v2

    :goto_9
    if-eqz v4, :cond_a

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    array-length v0, p1

    move v1, v2

    :goto_a
    if-ge v1, v0, :cond_c

    aget v4, p1, v1

    new-instance v5, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;

    iget-boolean v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mGraphicsPipeline:Z

    invoke-direct {v5, v4, v6}, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;-><init>(IZ)V

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_c
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    iget-boolean p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    if-eqz p2, :cond_e

    iget-boolean p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePauseBySPL:Z

    if-nez p2, :cond_d

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->resume()V

    :cond_d
    iput-boolean v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    :cond_e
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p2, p2, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_b
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_f

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

    goto :goto_b

    :catchall_4
    move-exception p0

    goto :goto_c

    :cond_f
    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    if-nez v0, :cond_10

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

    goto :goto_b

    :cond_10
    array-length p0, p1

    iget p1, v0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    monitor-exit p2

    :goto_b
    return-void

    :goto_c
    monitor-exit p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw p0

    :goto_d
    :try_start_c
    monitor-exit p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw p1

    :goto_e
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw p1

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Thread id list can\'t be empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateHintAllowedByProcState(Z)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePauseBySPL:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->resume()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->pause()V

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    monitor-exit p0

    return p1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final updateTargetWorkDuration(J)V
    .locals 5

    const-string/jumbo v0, "Session snapshot is null for uid "

    const-string/jumbo v1, "Session snapshot map is null for uid "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isHintAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Expected the target duration to be greater than or equal to 0."

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    iget-wide v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v2, v3, v4, p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halUpdateTargetWorkDuration(JJ)V

    iput-wide p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTargetDurationNanos:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p1, p1, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p2, p2, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    iget v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    if-nez p2, :cond_2

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

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    if-nez p2, :cond_3

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

    :cond_3
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTargetDurationNanos:J

    invoke-virtual {p2, v0, v1}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->updateTargetDurationNs(J)V

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
