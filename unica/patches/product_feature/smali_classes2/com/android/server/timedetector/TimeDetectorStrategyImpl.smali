.class public final Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/timedetector/TimeDetectorStrategy;


# static fields
.field static final MAX_SUGGESTION_TIME_AGE_MILLIS:J = 0x5265c00L

.field static final TELEPHONY_BUCKET_SIZE_MILLIS:I = 0x36ee80


# instance fields
.field public mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

.field public final mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

.field public mLastAutoSystemClockTimeSet:Landroid/app/time/UnixEpochTime;

.field public final mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

.field public final mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

.field public final mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

.field public final mNetworkTimeUpdateListeners:Landroid/util/ArraySet;

.field public final mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

.field public final mStateChangeListeners:Ljava/util/List;

.field public final mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;Lcom/android/server/timedetector/ServiceConfigAccessor;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mStateChangeListeners:Ljava/util/List;

    new-instance v0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mNetworkTimeUpdateListeners:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

    monitor-enter p0

    :try_start_38
    new-instance p1, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timedetector/TimeDetectorStrategyImpl;)V

    check-cast p2, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    monitor-enter p2
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_50

    :try_start_40
    iget-object v0, p2, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_52

    :try_start_47
    monitor-exit p2

    const-string/jumbo p1, "TimeDetectorStrategyImpl:"

    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->updateCurrentConfigurationInternalIfRequired(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_50

    return-void

    :catchall_50
    move-exception p1

    goto :goto_55

    :catchall_52
    move-exception p1

    :try_start_53
    monitor-exit p2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    :try_start_54
    throw p1

    :goto_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_54 .. :try_end_56} :catchall_50

    throw p1
.end method

.method public static isNtpSetByMdm()Z
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isNtpSetByMDM()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    return v0

    :catch_e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Remote Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "time_detector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public static validateSuggestionAgainstLowerBound(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;Ljava/time/Instant;)Z
    .registers 7

    invoke-virtual {p2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/time/UnixEpochTime;->getUnixEpochTimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_2b

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Suggestion points to time before lower bound, skipping it. suggestion="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", lower bound="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "time_detector"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2b
    const/4 p0, 0x1

    return p0
.end method

.method public static validateSuggestionUnixEpochTime(JLandroid/app/time/UnixEpochTime;)Z
    .registers 6

    invoke-virtual {p2}, Landroid/app/time/UnixEpochTime;->getElapsedRealtimeMillis()J

    move-result-wide v0

    cmp-long p2, v0, p0

    const/4 v2, 0x0

    if-lez p2, :cond_a

    return v2

    :cond_a
    sub-long/2addr p0, v0

    const-wide/32 v0, 0x5265c00

    cmp-long p0, p0, v0

    if-gtz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v2
.end method


# virtual methods
.method public final declared-synchronized clearLatestNetworkSuggestion()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/android/internal/os/ApplicationSharedMemory;->getInstance()Lcom/android/internal/os/ApplicationSharedMemory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/ApplicationSharedMemory;->clearLatestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis()V

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->notifyNetworkTimeUpdateListenersAsynchronously()V

    const-string/jumbo v0, "Network time cleared"

    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public final declared-synchronized confirmTime(Landroid/app/time/UnixEpochTime;)Z
    .registers 12

    const-string v0, " newTimeConfidence=100 currentElapsedRealtimeMillis="

    const-string v1, "Confirm system clock time. confirmationTime="

    monitor-enter p0

    :try_start_5
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast v2, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/android/server/timedetector/EnvironmentImpl;->acquireWakeLock()V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_84

    :try_start_c
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast v2, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast v4, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v2, v3}, Landroid/app/time/UnixEpochTime;->at(J)Landroid/app/time/UnixEpochTime;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/time/UnixEpochTime;->getUnixEpochTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    iget v8, v8, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockConfidenceThresholdMillis:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_3a

    const/4 v6, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v6, 0x0

    :goto_3b
    if-eqz v6, :cond_7b

    iget-object v7, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast v7, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {v7}, Lcom/android/server/timedetector/EnvironmentImpl;->systemClockConfidence()I

    move-result v7

    const/16 v8, 0x64

    if-ge v7, v8, :cond_7b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " currentSystemClockMillis="

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " (old) currentTimeConfidence="

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "time_detector"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast v0, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {v0, v8, p1}, Lcom/android/server/timedetector/EnvironmentImpl;->setSystemClockConfidence(ILjava/lang/String;)V
    :try_end_78
    .catchall {:try_start_c .. :try_end_78} :catchall_79

    goto :goto_7b

    :catchall_79
    move-exception p1

    goto :goto_86

    :cond_7b
    :goto_7b
    :try_start_7b
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast p1, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {p1}, Lcom/android/server/timedetector/EnvironmentImpl;->releaseWakeLock()V
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_84

    monitor-exit p0

    return v6

    :catchall_84
    move-exception p1

    goto :goto_8e

    :goto_86
    :try_start_86
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast v0, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/android/server/timedetector/EnvironmentImpl;->releaseWakeLock()V

    throw p1

    :goto_8e
    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_86 .. :try_end_8f} :catchall_84

    throw p1
.end method

.method public final doAutoTimeDetection(Ljava/lang/String;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    iget-object v2, v2, Lcom/android/server/timedetector/ConfigurationInternal;->mOriginPriorities:[I

    array-length v3, v2

    const/4 v5, 0x0

    :goto_a
    const-string/jumbo v6, "time_detector"

    const-string v7, ", detectionReason="

    if-ge v5, v3, :cond_15c

    aget v8, v2, v5

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v8, v9, :cond_37

    invoke-virtual {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findBestTelephonySuggestion()Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object v11

    if-eqz v11, :cond_b9

    invoke-virtual {v11}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Found good telephony suggestion., bestTelephonySuggestion="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_ba

    :cond_37
    const/4 v11, 0x3

    if-ne v8, v11, :cond_57

    invoke-virtual {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidNetworkSuggestion()Lcom/android/server/timedetector/NetworkTimeSuggestion;

    move-result-object v11

    if-eqz v11, :cond_b9

    iget-object v10, v11, Lcom/android/server/timedetector/NetworkTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Found good network suggestion., networkSuggestion="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_ba

    :cond_57
    const/4 v11, 0x4

    if-ne v8, v11, :cond_7b

    invoke-virtual {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidGnssSuggestion()Lcom/android/server/timedetector/GnssTimeSuggestion;

    move-result-object v11

    if-eqz v11, :cond_b9

    iget-object v10, v11, Lcom/android/server/timedetector/GnssTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v10}, Landroid/app/timedetector/TimeSuggestionHelper;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Found good gnss suggestion., gnssSuggestion="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_ba

    :cond_7b
    const/4 v11, 0x5

    if-ne v8, v11, :cond_9d

    invoke-virtual {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;

    move-result-object v11

    if-eqz v11, :cond_b9

    invoke-virtual {v11}, Landroid/app/time/ExternalTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Found good external suggestion., externalSuggestion="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_ba

    :cond_9d
    const-string/jumbo v7, "Unknown or unsupported origin="

    const-string v11, " in "

    invoke-static {v8, v7, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": Skipping"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b9
    move-object v7, v10

    :goto_ba
    if-eqz v10, :cond_158

    iget-object v1, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    invoke-virtual {v1}, Lcom/android/server/timedetector/ConfigurationInternal;->getAutoDetectionEnabledBehavior()Z

    move-result v1

    if-nez v1, :cond_154

    invoke-static {}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isNtpSetByMdm()Z

    move-result v1

    if-eqz v1, :cond_cc

    goto/16 :goto_154

    :cond_cc
    const-string v1, " newTimeConfidence=100 cause="

    const-string/jumbo v2, "Upgrade system clock confidence. autoDetectedUnixEpochTime="

    iget-object v3, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    move-object v5, v3

    check-cast v5, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {v5}, Lcom/android/server/timedetector/EnvironmentImpl;->systemClockConfidence()I

    move-result v8

    const/16 v11, 0x64

    if-ge v8, v11, :cond_153

    invoke-virtual {v5}, Lcom/android/server/timedetector/EnvironmentImpl;->acquireWakeLock()V

    :try_start_e1
    move-object v12, v3

    check-cast v12, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object v14, v3

    check-cast v14, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v10, v12, v13}, Landroid/app/time/UnixEpochTime;->at(J)Landroid/app/time/UnixEpochTime;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/time/UnixEpochTime;->getUnixEpochTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    iget-object v0, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    iget v0, v0, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockConfidenceThresholdMillis:I
    :try_end_107
    .catchall {:try_start_e1 .. :try_end_107} :catchall_14c

    move-object/from16 p1, v5

    int-to-long v4, v0

    cmp-long v0, v16, v4

    if-gtz v0, :cond_110

    move v4, v9

    goto :goto_111

    :cond_110
    const/4 v4, 0x0

    :goto_111
    if-eqz v4, :cond_148

    :try_start_113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " currentElapsedRealtimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " currentSystemClockMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " currentTimeConfidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v3, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {v3, v11, v0}, Lcom/android/server/timedetector/EnvironmentImpl;->setSystemClockConfidence(ILjava/lang/String;)V
    :try_end_145
    .catchall {:try_start_113 .. :try_end_145} :catchall_146

    goto :goto_148

    :catchall_146
    move-exception v0

    goto :goto_14f

    :cond_148
    :goto_148
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/timedetector/EnvironmentImpl;->releaseWakeLock()V

    return-void

    :catchall_14c
    move-exception v0

    move-object/from16 p1, v5

    :goto_14f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/timedetector/EnvironmentImpl;->releaseWakeLock()V

    throw v0

    :cond_153
    return-void

    :cond_154
    :goto_154
    invoke-virtual {v0, v8, v10, v7}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockAndConfidenceIfRequired(ILandroid/app/time/UnixEpochTime;Ljava/lang/String;)Z

    return-void

    :cond_158
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a

    :cond_15c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Could not determine time: No suggestion found in originPriorities="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final declared-synchronized dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string/jumbo p2, "[Capabilities="

    const-string/jumbo v0, "mCurrentConfigurationInternal="

    const-string/jumbo v1, "mLastAutoSystemClockTimeSet="

    monitor-enter p0

    :try_start_a
    const-string/jumbo v2, "TimeDetectorStrategy:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/app/time/UnixEpochTime;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    invoke-virtual {p2}, Lcom/android/server/timedetector/ConfigurationInternal;->createCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p2, "mEnvironment:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast p2, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {p2, p1}, Lcom/android/server/timedetector/EnvironmentImpl;->dumpDebugLog(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo p2, "Time change log:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    sget-object p2, Lcom/android/server/SystemClockTime;->sTimeDebugLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo p2, "Telephony suggestion history:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo p2, "Network suggestion history:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "Gnss suggestion history:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "External suggestion history:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_b9
    .catchall {:try_start_a .. :try_end_b9} :catchall_bb

    monitor-exit p0

    return-void

    :catchall_bb
    move-exception p1

    :try_start_bc
    monitor-exit p0
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw p1
.end method

.method public final findBestTelephonySuggestion()Landroid/app/timedetector/TelephonyTimeSuggestion;
    .registers 13

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast v0, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v5, v2

    move v6, v3

    :goto_10
    iget-object v7, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    iget-object v8, v7, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->mMap:Landroid/util/ArrayMap;

    if-nez v8, :cond_18

    move v8, v2

    goto :goto_1c

    :cond_18
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    :goto_1c
    if-ge v5, v8, :cond_b7

    iget-object v8, v7, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->mMap:Landroid/util/ArrayMap;

    if-eqz v8, :cond_b1

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v7, v5}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/timedetector/TelephonyTimeSuggestion;

    const-string/jumbo v9, "time_detector"

    if-nez v7, :cond_46

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "Latest suggestion unexpectedly null for slotIndex. slotIndex="

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ad

    :cond_46
    invoke-virtual {v7}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v8

    if-nez v8, :cond_5e

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Latest suggestion unexpectedly empty.  candidateSuggestion="

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    :cond_5e
    invoke-virtual {v7}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v8

    invoke-static {v0, v1, v8}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUnixEpochTime(JLandroid/app/time/UnixEpochTime;)Z

    move-result v10

    if-nez v10, :cond_83

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Existing suggestion found to be invalid elapsedRealtimeMillis="

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", suggestion="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_81
    move v8, v3

    goto :goto_95

    :cond_83
    invoke-virtual {v8}, Landroid/app/time/UnixEpochTime;->getElapsedRealtimeMillis()J

    move-result-wide v8

    sub-long v8, v0, v8

    const-wide/32 v10, 0x36ee80

    div-long/2addr v8, v10

    long-to-int v8, v8

    const/16 v9, 0x18

    if-lt v8, v9, :cond_93

    goto :goto_81

    :cond_93
    rsub-int/lit8 v8, v8, 0x18

    :goto_95
    if-ne v8, v3, :cond_98

    goto :goto_ad

    :cond_98
    if-eqz v4, :cond_ab

    if-ge v6, v8, :cond_9d

    goto :goto_ab

    :cond_9d
    if-ne v6, v8, :cond_ad

    invoke-virtual {v7}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getSlotIndex()I

    move-result v8

    invoke-virtual {v4}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getSlotIndex()I

    move-result v9

    if-ge v8, v9, :cond_ad

    move-object v4, v7

    goto :goto_ad

    :cond_ab
    :goto_ab
    move-object v4, v7

    move v6, v8

    :cond_ad
    :goto_ad
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_10

    :cond_b1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    :cond_b7
    return-object v4
.end method

.method public declared-synchronized findBestTelephonySuggestionForTests()Landroid/app/timedetector/TelephonyTimeSuggestion;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findBestTelephonySuggestion()Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final findLatestValidExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;
    .registers 6

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/ExternalTimeSuggestion;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    invoke-virtual {v0}, Landroid/app/time/ExternalTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast p0, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUnixEpochTime(JLandroid/app/time/UnixEpochTime;)Z

    move-result p0

    if-nez p0, :cond_22

    return-object v1

    :cond_22
    return-object v0
.end method

.method public declared-synchronized findLatestValidExternalSuggestionForTests()Landroid/app/time/ExternalTimeSuggestion;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final findLatestValidGnssSuggestion()Lcom/android/server/timedetector/GnssTimeSuggestion;
    .registers 6

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timedetector/GnssTimeSuggestion;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    iget-object v2, v0, Lcom/android/server/timedetector/GnssTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v2}, Landroid/app/timedetector/TimeSuggestionHelper;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast p0, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUnixEpochTime(JLandroid/app/time/UnixEpochTime;)Z

    move-result p0

    if-nez p0, :cond_24

    return-object v1

    :cond_24
    return-object v0
.end method

.method public declared-synchronized findLatestValidGnssSuggestionForTests()Lcom/android/server/timedetector/GnssTimeSuggestion;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidGnssSuggestion()Lcom/android/server/timedetector/GnssTimeSuggestion;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final findLatestValidNetworkSuggestion()Lcom/android/server/timedetector/NetworkTimeSuggestion;
    .registers 6

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timedetector/NetworkTimeSuggestion;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    iget-object v2, v0, Lcom/android/server/timedetector/NetworkTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast p0, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUnixEpochTime(JLandroid/app/time/UnixEpochTime;)Z

    move-result p0

    if-nez p0, :cond_20

    return-object v1

    :cond_20
    return-object v0
.end method

.method public declared-synchronized findLatestValidNetworkSuggestionForTests()Lcom/android/server/timedetector/NetworkTimeSuggestion;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidNetworkSuggestion()Lcom/android/server/timedetector/NetworkTimeSuggestion;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public declared-synchronized getCachedCapabilitiesAndConfigForTests()Lcom/android/server/timedetector/ConfigurationInternal;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized getLatestExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/ExternalTimeSuggestion;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public declared-synchronized getLatestGnssSuggestion()Lcom/android/server/timedetector/GnssTimeSuggestion;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timedetector/GnssTimeSuggestion;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public final declared-synchronized getLatestNetworkSuggestion()Lcom/android/server/timedetector/NetworkTimeSuggestion;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timedetector/NetworkTimeSuggestion;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public declared-synchronized getLatestTelephonySuggestion(I)Landroid/app/timedetector/TelephonyTimeSuggestion;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/timedetector/TelephonyTimeSuggestion;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public final declared-synchronized getTimeState()Landroid/app/time/TimeState;
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast v0, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/android/server/timedetector/EnvironmentImpl;->systemClockConfidence()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    new-instance v1, Landroid/app/time/UnixEpochTime;

    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast v2, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast v4, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    new-instance v2, Landroid/app/time/TimeState;

    invoke-direct {v2, v1, v0}, Landroid/app/time/TimeState;-><init>(Landroid/app/time/UnixEpochTime;Z)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    monitor-exit p0

    return-object v2

    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public final notifyNetworkTimeUpdateListenersAsynchronously()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mNetworkTimeUpdateListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/StateChangeListener;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/StateChangeListener;)V

    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast v1, Lcom/android/server/timedetector/EnvironmentImpl;

    iget-object v1, v1, Lcom/android/server/timedetector/EnvironmentImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_24
    return-void
.end method

.method public final setSystemClockAndConfidenceIfRequired(ILandroid/app/time/UnixEpochTime;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_7

    move v0, v2

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    const-string v3, ", cause="

    const-string v4, ", time="

    const-string/jumbo v5, "time_detector"

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timedetector/ConfigurationInternal;->getAutoDetectionEnabledBehavior()Z

    move-result v0

    if-nez v0, :cond_63

    invoke-static {}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isNtpSetByMdm()Z

    move-result v0

    if-nez v0, :cond_63

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Auto time detection is not enabled / no confidence update is needed. origin="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->originToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p3, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3a
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timedetector/ConfigurationInternal;->getAutoDetectionEnabledBehavior()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-static {}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isNtpSetByMdm()Z

    move-result v0

    if-nez v0, :cond_63

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Auto time detection is enabled. origin="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->originToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p3, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_63
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast v0, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/android/server/timedetector/EnvironmentImpl;->acquireWakeLock()V

    const/16 v1, 0x64

    :try_start_6c
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockAndConfidenceUnderWakeLock(ILandroid/app/time/UnixEpochTime;ILjava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_73

    invoke-virtual {v0}, Lcom/android/server/timedetector/EnvironmentImpl;->releaseWakeLock()V

    return v2

    :catchall_73
    move-exception p0

    invoke-virtual {v0}, Lcom/android/server/timedetector/EnvironmentImpl;->releaseWakeLock()V

    throw p0
.end method

.method public final setSystemClockAndConfidenceUnderWakeLock(ILandroid/app/time/UnixEpochTime;ILjava/lang/String;)V
    .registers 33

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast v5, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v10, 0x2

    if-eq v1, v10, :cond_1a

    const/4 v11, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v11, 0x0

    :goto_1b
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-string v14, " cause="

    const-string v15, " elapsedRealtimeMillis="

    const-string/jumbo v8, "time_detector"

    if-eqz v11, :cond_74

    iget-object v11, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/app/time/UnixEpochTime;

    if-eqz v11, :cond_74

    invoke-virtual {v11, v6, v7}, Landroid/app/time/UnixEpochTime;->at(J)Landroid/app/time/UnixEpochTime;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/time/UnixEpochTime;->getUnixEpochTimeMillis()J

    move-result-wide v9

    sub-long v18, v9, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    const-wide/16 v20, 0x7d0

    cmp-long v11, v18, v20

    if-lez v11, :cond_74

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v18, v5

    const-string/jumbo v5, "System clock has not tracked elapsed real time clock. A clock may be inaccurate or something unexpectedly set the system clock. origin="

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->originToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " expectedTimeMillis="

    move-object/from16 v19, v15

    const-string v15, " actualTimeMillis="

    invoke-static {v11, v5, v9, v10, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    :cond_74
    move-object/from16 v18, v5

    move-object/from16 v19, v15

    :goto_78
    invoke-virtual {v2, v6, v7}, Landroid/app/time/UnixEpochTime;->at(J)Landroid/app/time/UnixEpochTime;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/time/UnixEpochTime;->getUnixEpochTimeMillis()J

    move-result-wide v9

    sub-long v20, v9, v12

    move-wide/from16 v22, v9

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    iget-object v5, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    iget v5, v5, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockUpdateThresholdMillis:I

    move-wide/from16 v20, v9

    int-to-long v9, v5

    const/4 v5, 0x3

    if-ne v1, v5, :cond_a1

    iget-object v5, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/app/time/UnixEpochTime;

    invoke-virtual {v2, v5}, Landroid/app/time/UnixEpochTime;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a1

    const-string v5, "For more accuracy, systemClockUpdateThreshold changed to 500"

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v9, 0x1f4

    :cond_a1
    cmp-long v5, v20, v9

    if-ltz v5, :cond_a7

    const/4 v5, 0x1

    goto :goto_a8

    :cond_a7
    const/4 v5, 0x0

    :goto_a8
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/timedetector/EnvironmentImpl;->systemClockConfidence()I

    move-result v11

    if-eq v3, v11, :cond_b1

    const/16 v16, 0x1

    goto :goto_b3

    :cond_b1
    const/16 v16, 0x0

    :goto_b3
    const-string v15, " newSystemClockMillis="

    move/from16 v17, v5

    const-string v5, " (old) actualSystemClockMillis="

    move-wide/from16 v24, v9

    const-string v9, " currentTimeConfidence="

    const-string v10, " newTimeConfidence="

    const-string v0, " newTime="

    if-eqz v17, :cond_124

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v17, v8

    const-string/jumbo v8, "Set system clock & confidence. origin="

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->originToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v19

    invoke-static {v3, v14, v4, v8, v1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v1, v5, v12, v13, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    move-wide/from16 v4, v22

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/timedetector/EnvironmentImpl;->checkWakeLockHeld()V

    move-object/from16 v1, v18

    iget-object v1, v1, Lcom/android/server/timedetector/EnvironmentImpl;->mAlarmManagerInternal:Lcom/android/server/alarm/AlarmManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_103
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v0, v4, v5}, Lcom/android/server/SystemClockTime;->setTimeAndConfidence(ILjava/lang/String;J)V

    monitor-exit v6
    :try_end_10c
    .catchall {:try_start_103 .. :try_end_10c} :catchall_121

    move-object/from16 v1, v17

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11b

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/app/time/UnixEpochTime;

    return-void

    :cond_11b
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/app/time/UnixEpochTime;

    return-void

    :catchall_121
    move-exception v0

    :try_start_122
    monitor-exit v6
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_121

    throw v0

    :cond_124
    move-object v1, v8

    move-object/from16 v8, v19

    move-wide/from16 v26, v22

    if-eqz v16, :cond_16c

    move-object/from16 v17, v1

    new-instance v1, Ljava/lang/StringBuilder;

    move/from16 v16, v11

    const-string/jumbo v11, "Set system clock confidence. origin="

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->originToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v14, v4, v8, v1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v1, v5, v12, v13, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    move-wide/from16 v4, v26

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v16

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, v18

    invoke-virtual {v1, v3, v0}, Lcom/android/server/timedetector/EnvironmentImpl;->setSystemClockConfidence(ILjava/lang/String;)V

    return-void

    :cond_16c
    move v5, v11

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Not setting system clock or confidence. origin="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->originToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v14, v4, v8, v11}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " systemClockUpdateThreshold="

    const-string v2, " absTimeDifference="

    move-wide/from16 v3, v24

    invoke-static {v11, v0, v3, v4, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    move-wide/from16 v2, v20

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final declared-synchronized setTimeState(Landroid/app/time/TimeState;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/time/TimeState;->getUserShouldConfirmTime()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_e

    :cond_c
    const/16 v0, 0x64

    :goto_e
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast v1, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/android/server/timedetector/EnvironmentImpl;->acquireWakeLock()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_29

    :try_start_15
    invoke-virtual {p1}, Landroid/app/time/TimeState;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object p1

    const-string/jumbo v1, "setTimeState()"

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockAndConfidenceUnderWakeLock(ILandroid/app/time/UnixEpochTime;ILjava/lang/String;)V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_2b

    :try_start_20
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast p1, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {p1}, Lcom/android/server/timedetector/EnvironmentImpl;->releaseWakeLock()V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_29

    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    goto :goto_34

    :catchall_2b
    move-exception p1

    :try_start_2c
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast v0, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/android/server/timedetector/EnvironmentImpl;->releaseWakeLock()V

    throw p1

    :goto_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_29

    throw p1
.end method

.method public final storeTelephonySuggestion(Landroid/app/timedetector/TelephonyTimeSuggestion;)Z
    .registers 12

    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getSlotIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {p0, v2}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/timedetector/TelephonyTimeSuggestion;

    if-eqz v2, :cond_6c

    invoke-virtual {v2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "time_detector"

    if-nez v3, :cond_3b

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Previous suggestion is null or has a null time. previousSuggestion="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", suggestion="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3b
    invoke-virtual {v2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/app/time/UnixEpochTime;->elapsedRealtimeDifference(Landroid/app/time/UnixEpochTime;Landroid/app/time/UnixEpochTime;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_6c

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Out of order telephony suggestion received. referenceTimeDifference="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " previousSuggestion="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " suggestion="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_6c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final declared-synchronized suggestGnssTime(Lcom/android/server/timedetector/GnssTimeSuggestion;)V
    .registers 7

    const-string v0, "GNSS time suggestion received: suggestion="

    const-string v1, "GNSS suggestion received. currentUserConfig="

    monitor-enter p0

    :try_start_5
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    const-string/jumbo v3, "time_detector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " suggestion="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/server/timedetector/GnssTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v1}, Landroid/app/timedetector/TimeSuggestionHelper;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z

    move-result v1
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_48

    if-nez v1, :cond_32

    monitor-exit p0

    return-void

    :cond_32
    :try_start_32
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_32 .. :try_end_46} :catchall_48

    monitor-exit p0

    return-void

    :catchall_48
    move-exception p1

    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public final declared-synchronized suggestManualTime(ILandroid/app/timedetector/ManualTimeSuggestion;)Z
    .registers 9

    const-string/jumbo v0, "User does not have the capability needed to set the time manually: capabilities="

    const-string/jumbo v1, "Manual time suggestion received: suggestion="

    const-string/jumbo v2, "Manual suggestion received but user != current user, userId="

    monitor-enter p0

    :try_start_a
    iget-object v3, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    iget v4, v3, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    const/4 v5, 0x0

    if-eq v4, p1, :cond_2f

    const-string/jumbo v0, "time_detector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " suggestion="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return v5

    :catchall_2d
    move-exception p1

    goto :goto_8c

    :cond_2f
    :try_start_2f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3}, Lcom/android/server/timedetector/ConfigurationInternal;->createCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/time/TimeCapabilitiesAndConfig;->getCapabilities()Landroid/app/time/TimeCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/time/TimeCapabilities;->getSetManualTimeCapability()I

    move-result v2

    const/16 v3, 0x28

    if-eq v2, v3, :cond_6f

    const-string/jumbo v2, "time_detector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", suggestion="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", cause="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_2f .. :try_end_6d} :catchall_2d

    monitor-exit p0

    return v5

    :cond_6f
    :try_start_6f
    invoke-virtual {p2}, Landroid/app/timedetector/ManualTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    iget-object v1, v1, Lcom/android/server/timedetector/ConfigurationInternal;->mManualSuggestionLowerBound:Ljava/time/Instant;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionCommon(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-static {v0, p2, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionAgainstLowerBound(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;Ljava/time/Instant;)Z

    move-result p2

    if-eqz p2, :cond_8a

    const/4 p2, 0x2

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockAndConfidenceIfRequired(ILandroid/app/time/UnixEpochTime;Ljava/lang/String;)Z

    move-result p1
    :try_end_88
    .catchall {:try_start_6f .. :try_end_88} :catchall_2d

    monitor-exit p0

    return p1

    :cond_8a
    monitor-exit p0

    return v5

    :goto_8c
    :try_start_8c
    monitor-exit p0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_2d

    throw p1
.end method

.method public final declared-synchronized suggestNetworkTime(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V
    .registers 8

    const-string/jumbo v0, "New network time suggested. suggestion="

    const-string/jumbo v1, "Network suggestion received. currentUserConfig="

    monitor-enter p0

    :try_start_7
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    const-string/jumbo v3, "time_detector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " suggestion="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/server/timedetector/NetworkTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    invoke-static {}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isNtpSetByMdm()Z

    move-result v1
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_36

    if-nez v1, :cond_38

    monitor-exit p0

    return-void

    :catchall_36
    move-exception p1

    goto :goto_73

    :cond_38
    :try_start_38
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timedetector/NetworkTimeSuggestion;

    if-eqz v1, :cond_48

    invoke-virtual {v1, p1}, Lcom/android/server/timedetector/NetworkTimeSuggestion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    :cond_48
    iget-object v1, p1, Lcom/android/server/timedetector/NetworkTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    invoke-virtual {v1}, Landroid/app/time/UnixEpochTime;->getUnixEpochTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/app/time/UnixEpochTime;->getElapsedRealtimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Lcom/android/internal/os/ApplicationSharedMemory;->getInstance()Lcom/android/internal/os/ApplicationSharedMemory;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/ApplicationSharedMemory;->setLatestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis(J)V

    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->notifyNetworkTimeUpdateListenersAsynchronously()V

    :cond_62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_38 .. :try_end_71} :catchall_36

    monitor-exit p0

    return-void

    :goto_73
    :try_start_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_36

    throw p1
.end method

.method public final declared-synchronized updateConfiguration(ILandroid/app/time/TimeConfiguration;)Z
    .registers 7

    const-string v0, ", bypassUserPolicyChecks=false"

    const-string/jumbo v1, "updateConfiguration: userId="

    monitor-enter p0

    :try_start_6
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

    check-cast v2, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->updateConfiguration(ILandroid/app/time/TimeConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", configuration="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->updateCurrentConfigurationInternalIfRequired(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_2b

    goto :goto_2d

    :catchall_2b
    move-exception p1

    goto :goto_2f

    :cond_2d
    :goto_2d
    monitor-exit p0

    return v2

    :goto_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2b

    throw p1
.end method

.method public final updateCurrentConfigurationInternalIfRequired(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

    check-cast v0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    monitor-enter v0

    :try_start_5
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->getConfigurationInternal(I)Lcom/android/server/timedetector/ConfigurationInternal;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_88

    monitor-exit v0

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/timedetector/ConfigurationInternal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    iput-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " [oldConfiguration="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", newConfiguration="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "time_detector"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast v0, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/SystemClockTime;->sTimeDebugLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mStateChangeListeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5a
    if-ge v1, v0, :cond_76

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/timezonedetector/StateChangeListener;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/StateChangeListener;)V

    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast v2, Lcom/android/server/timedetector/EnvironmentImpl;

    iget-object v2, v2, Lcom/android/server/timedetector/EnvironmentImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5a

    :cond_76
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    invoke-virtual {p1}, Lcom/android/server/timedetector/ConfigurationInternal;->getAutoDetectionEnabledBehavior()Z

    move-result p1

    if-eqz p1, :cond_84

    const-string p1, "Auto time detection config changed."

    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V

    return-void

    :cond_84
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/app/time/UnixEpochTime;

    :cond_87
    return-void

    :catchall_88
    move-exception p0

    :try_start_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw p0
.end method

.method public final validateAutoSuggestionTime(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    iget-object v0, v0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoSuggestionLowerBound:Ljava/time/Instant;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionCommon(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    invoke-static {p1, p2, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionAgainstLowerBound(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;Ljava/time/Instant;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final validateSuggestionCommon(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    check-cast v0, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/time/UnixEpochTime;->getElapsedRealtimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const-string/jumbo v4, "time_detector"

    if-gez v2, :cond_32

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "New elapsed realtime is in the future? Ignoring. elapsedRealtimeMillis="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", suggestion="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_32
    invoke-virtual {p1}, Landroid/app/time/UnixEpochTime;->getUnixEpochTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    iget-object p0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSuggestionUpperBound:Ljava/time/Instant;

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_55

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Suggested value is above max time supported by this device. suggestion="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_55
    const/4 p0, 0x1

    return p0
.end method
