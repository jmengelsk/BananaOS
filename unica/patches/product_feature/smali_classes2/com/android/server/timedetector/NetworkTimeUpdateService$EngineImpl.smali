.class Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine;


# static fields
.field public static mForceNtpSetByMDM:Z

.field public static mNtpSetByMDM:Z


# instance fields
.field public final mElapsedRealtimeMillisSupplier:Ljava/util/function/Supplier;

.field public mLastExponent:I

.field public mLastRefreshAttemptElapsedRealtimeMillis:Ljava/lang/Long;

.field public final mLocalDebugLog:Landroid/util/LocalLog;

.field public mNormalPollingIntervalMillis:I

.field public final mNtpTrustedTime:Landroid/util/NtpTrustedTime;

.field public mShortPollingIntervalMillis:I

.field public mTryAgainCounter:I

.field public mTryAgainTimesMax:I


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;IIILandroid/util/NtpTrustedTime;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;III",
            "Landroid/util/NtpTrustedTime;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLocalDebugLog:Landroid/util/LocalLog;

    iput v2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLastExponent:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/function/Supplier;

    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mElapsedRealtimeMillisSupplier:Ljava/util/function/Supplier;

    if-gt p3, p2, :cond_0

    iput p2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNormalPollingIntervalMillis:I

    iput p3, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mShortPollingIntervalMillis:I

    iput p4, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainTimesMax:I

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p5

    check-cast p1, Landroid/util/NtpTrustedTime;

    iput-object p5, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "shortPollingIntervalMillis ("

    const-string p4, ") > normalPollingIntervalMillis ("

    const-string p5, ")"

    invoke-static {p3, p2, p1, p4, p5}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static formatElapsedRealtimeMillis(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-static {v0, p0, p1, v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeNetworkTimeSuggestion(Landroid/util/NtpTrustedTime$TimeResult;Ljava/lang/String;Lcom/android/server/timedetector/NetworkTimeUpdateService$1;)V
    .locals 5

    new-instance v0, Landroid/app/time/UnixEpochTime;

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime$TimeResult;->getTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    new-instance v1, Lcom/android/server/timedetector/NetworkTimeSuggestion;

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime$TimeResult;->getUncertaintyMillis()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/android/server/timedetector/NetworkTimeSuggestion;-><init>(Landroid/app/time/UnixEpochTime;I)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/timedetector/NetworkTimeSuggestion;->addDebugInfo([Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime$TimeResult;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/server/timedetector/NetworkTimeSuggestion;->addDebugInfo([Ljava/lang/String;)V

    iget-object p0, p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->val$timeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;

    check-cast p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v1, p2}, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/TimeDetectorInternalImpl;Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final logToDebugAndDumpsys(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLocalDebugLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final refreshAndRescheduleIfRequired(Landroid/net/Network;Ljava/lang/String;Lcom/android/server/timedetector/NetworkTimeUpdateService$1;)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string/jumbo v4, "refreshIfRequiredAndReschedule: network="

    const-string/jumbo v5, "set retry time to "

    if-nez v0, :cond_0

    const-string/jumbo v0, "refreshIfRequiredAndReschedule: reason="

    const-string v3, ": No default network available. No refresh attempted and no next attempt scheduled."

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->logToDebugAndDumpsys(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v6, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v6}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v6

    monitor-enter p0

    :try_start_0
    iget-object v7, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mElapsedRealtimeMillisSupplier:Ljava/util/function/Supplier;

    invoke-interface {v7}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    if-nez v6, :cond_1

    const-wide v11, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v7, v8}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis(J)J

    move-result-wide v11

    :goto_0
    iget v13, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNormalPollingIntervalMillis:I

    int-to-long v13, v13

    cmp-long v11, v11, v13

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-ltz v11, :cond_3

    iget-object v11, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLastRefreshAttemptElapsedRealtimeMillis:Ljava/lang/Long;

    if-nez v11, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iget v11, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mShortPollingIntervalMillis:I

    int-to-long v9, v11

    add-long/2addr v14, v9

    cmp-long v7, v7, v14

    if-ltz v7, :cond_3

    :goto_1
    move v7, v12

    goto :goto_2

    :cond_3
    move v7, v13

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v7, :cond_5

    const-string/jumbo v8, "NTP_PARAMETERS_UPDATED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    move v8, v13

    goto :goto_4

    :cond_5
    :goto_3
    sget-boolean v8, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpSetByMDM:Z

    if-eqz v8, :cond_6

    sput-boolean v12, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mForceNtpSetByMDM:Z

    :cond_6
    iget-object v8, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mElapsedRealtimeMillisSupplier:Ljava/util/function/Supplier;

    invoke-interface {v8}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    monitor-enter p0

    :try_start_1
    iput-object v8, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLastRefreshAttemptElapsedRealtimeMillis:Ljava/lang/Long;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v8, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v8, v0}, Landroid/util/NtpTrustedTime;->forceRefresh(Landroid/net/Network;)Z

    move-result v8

    :goto_4
    monitor-enter p0

    :try_start_2
    iget-object v9, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v9}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mElapsedRealtimeMillisSupplier:Ljava/util/function/Supplier;

    invoke-interface {v10}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    if-nez v9, :cond_7

    const-wide v14, 0x7fffffffffffffffL

    goto :goto_5

    :cond_7
    invoke-virtual {v9, v10, v11}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis(J)J

    move-result-wide v14

    :goto_5
    if-eqz v7, :cond_8

    if-eqz v8, :cond_9

    iput v13, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    :cond_8
    :goto_6
    move-wide/from16 v18, v10

    move/from16 v17, v12

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_9
    iget v13, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainTimesMax:I

    if-gez v13, :cond_a

    iput v12, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    goto :goto_6

    :cond_a
    move/from16 v17, v12

    iget v12, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    if-le v12, v13, :cond_b

    const/4 v12, 0x0

    iput v12, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    sget-boolean v12, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mBootCompleted:Z

    if-eqz v12, :cond_b

    sget-object v12, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mMDMContext:Landroid/content/Context;

    new-instance v13, Landroid/content/Intent;

    move-wide/from16 v18, v10

    const-string/jumbo v10, "com.samsung.android.knox.intent.action.EVENT_NTP_SERVER_UNREACHABLE"

    invoke-direct {v13, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v11, "com.samsung.android.knox.permission.KNOX_DATE_TIME"

    invoke-virtual {v12, v13, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    move-wide/from16 v18, v10

    :goto_7
    iget v10, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNormalPollingIntervalMillis:I

    int-to-long v10, v10

    cmp-long v10, v14, v10

    if-gez v10, :cond_c

    const/4 v12, 0x0

    iput v12, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    :cond_c
    if-gez v10, :cond_d

    invoke-static {v9, v2, v3}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->makeNetworkTimeSuggestion(Landroid/util/NtpTrustedTime$TimeResult;Ljava/lang/String;Lcom/android/server/timedetector/NetworkTimeUpdateService$1;)V

    :cond_d
    iget v10, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    if-lez v10, :cond_e

    iget v10, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mShortPollingIntervalMillis:I

    :goto_8
    int-to-long v10, v10

    goto :goto_9

    :cond_e
    iget v10, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNormalPollingIntervalMillis:I

    goto :goto_8

    :goto_9
    const-string v12, "CN"

    const-string/jumbo v13, "ro.csc.countryiso_code"

    move-wide/from16 v20, v10

    const-string v10, ""

    invoke-static {v13, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    if-nez v9, :cond_10

    iget v10, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNormalPollingIntervalMillis:I

    int-to-long v10, v10

    cmp-long v10, v20, v10

    if-nez v10, :cond_10

    const-string/jumbo v10, "labtest"

    const-string/jumbo v11, "ril.testmode"

    const-string v12, ""

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string/jumbo v10, "network available"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    const/4 v12, 0x0

    iput v12, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLastExponent:I

    const-string/jumbo v10, "NetworkTimeUpdateService"

    const-string/jumbo v11, "reset mLastExponent in new network"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget v10, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLastExponent:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-long v10, v10

    const-wide/32 v12, 0x493e0

    mul-long/2addr v10, v12

    iget v12, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNormalPollingIntervalMillis:I

    int-to-long v12, v12

    cmp-long v12, v10, v12

    if-gez v12, :cond_11

    const-string/jumbo v12, "NetworkTimeUpdateService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLastExponent:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLastExponent:I

    goto :goto_a

    :cond_10
    if-eqz v9, :cond_11

    const-string/jumbo v5, "NetworkTimeUpdateService"

    const-string/jumbo v10, "reset mLastExponent after ntp success"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    iput v12, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLastExponent:I

    :cond_11
    move-wide/from16 v10, v20

    :goto_a
    cmp-long v5, v14, v10

    if-gez v5, :cond_12

    invoke-virtual {v9}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v12

    :goto_b
    add-long/2addr v12, v10

    goto :goto_c

    :cond_12
    iget-object v5, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLastRefreshAttemptElapsedRealtimeMillis:Ljava/lang/Long;

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto :goto_b

    :cond_13
    const-string/jumbo v5, "mLastRefreshAttemptElapsedRealtimeMillis unexpectedly missing. Scheduling using currentElapsedRealtimeMillis"

    const-string/jumbo v12, "NetworkTimeUpdateService"

    invoke-static {v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->logToDebugAndDumpsys(Ljava/lang/String;)V

    add-long v12, v18, v10

    :goto_c
    cmp-long v5, v12, v18

    if-gtz v5, :cond_14

    const-string/jumbo v5, "nextRefreshElapsedRealtimeMillis is a time in the past. Scheduling using currentElapsedRealtimeMillis instead"

    const-string/jumbo v12, "NetworkTimeUpdateService"

    invoke-static {v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->logToDebugAndDumpsys(Ljava/lang/String;)V

    add-long v12, v18, v10

    :cond_14
    move-wide/from16 v22, v12

    iget-object v5, v3, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->val$alarmManager:Landroid/app/AlarmManager;

    iget-object v12, v3, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->mOnAlarmListener:Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;

    invoke-virtual {v5, v12}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iget-object v5, v3, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->val$alarmManager:Landroid/app/AlarmManager;

    iget-object v3, v3, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->mOnAlarmListener:Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;

    const-string/jumbo v24, "NetworkTimeUpdateService.POLL"

    const/16 v26, 0x0

    const/16 v21, 0x3

    move-object/from16 v25, v3

    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v26}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", reason="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", initialTimeResult="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", shouldAttemptRefresh="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", refreshSuccessful="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", currentElapsedRealtimeMillis="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->formatElapsedRealtimeMillis(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", latestTimeResult="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mTryAgainCounter="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", refreshAttemptDelayMillis="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", nextRefreshElapsedRealtimeMillis="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v23}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->formatElapsedRealtimeMillis(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->logToDebugAndDumpsys(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpSetByMDM:Z

    if-eqz v0, :cond_15

    const/16 v16, 0x0

    sput-boolean v16, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mForceNtpSetByMDM:Z

    :cond_15
    return-void

    :goto_d
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method
