.class public final Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/timezonedetector/Dumpable;


# instance fields
.field public mCallback:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerCallbackImpl;

.field public mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

.field public mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

.field public mLastEvent:Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

.field public final mMetricsLogger:Lcom/android/server/timezonedetector/location/RealControllerMetricsLogger;

.field public final mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

.field public final mRecordStateChanges:Z

.field public final mRecordedStates:Ljava/util/ArrayList;

.field public final mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

.field public final mSharedLock:Ljava/lang/Object;

.field public final mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

.field public final mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

.field public final mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;Lcom/android/server/timezonedetector/location/RealControllerMetricsLogger;Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mRecordedStates:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    iget-object v1, p1, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->mLockObject:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    new-instance v2, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-direct {v2, p1}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;-><init>(Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;)V

    iput-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    iput-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mMetricsLogger:Lcom/android/server/timezonedetector/location/RealControllerMetricsLogger;

    iput-object p3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    iput-object p4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    iput-boolean p5, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mRecordStateChanges:Z

    monitor-enter v1

    :try_start_0
    const-string/jumbo p0, "UNKNOWN"

    invoke-virtual {v0, p0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static stopProviderIfStarted(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v0

    iget v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown provider state: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unable to stop "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": it is terminated."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    return-void

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "No need to stop "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": already stopped"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    return-void

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Stopping "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    const-string/jumbo v3, "stopUpdates"

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v1, v1, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->cancelInitializationTimeoutIfSet()V

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->onStopUpdates()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Required a started state, but was "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final alterProvidersStartedStateIfRequired(Lcom/android/server/timezonedetector/ConfigurationInternal;Lcom/android/server/timezonedetector/ConfigurationInternal;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionExecutionEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionExecutionEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_3

    const-string p1, "INITIALIZING"

    const-string/jumbo v0, "initializing()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setStateAndReportStatusOnlyEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->tryStartProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->tryStartProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isStarted()Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Providers are failed: primary="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " secondary="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FAILED"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setStateAndReportStatusOnlyEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string p1, "Geo detection behavior disabled"

    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProviders(Ljava/lang/String;)V

    return-void
.end method

.method public final destroy()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "destroy()"

    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProviders(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->destroy()V

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->destroy()V

    const-string v1, "DESTROYED"

    const-string/jumbo v2, "destroy()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setStateAndReportStatusOnlyEvent(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "mLastEvent="

    const-string/jumbo v1, "mState="

    const-string/jumbo v2, "uncertaintyDelay="

    const-string/jumbo v3, "providerInitializationTimeoutFuzz="

    const-string/jumbo v4, "providerInitializationTimeout="

    const-string/jumbo v5, "mCurrentUserConfiguration="

    iget-object v6, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    const-string/jumbo v7, "LocationTimeZoneProviderController:"

    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    iget-object v4, v4, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    check-cast v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    sget-object v7, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT:Ljava/time/Duration;

    iget-object v4, v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "ltzp_init_timeout_millis"

    invoke-static {v4, v7}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    iget-object v3, v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    check-cast v3, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    sget-object v5, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT_FUZZ:Ljava/time/Duration;

    iget-object v3, v3, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "ltzp_init_timeout_fuzz_millis"

    invoke-static {v3, v5}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    iget-object v2, v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    check-cast v2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    sget-object v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_UNCERTAINTY_DELAY:Ljava/time/Duration;

    iget-object v2, v2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "location_time_zone_detection_uncertainty_delay_millis"

    invoke-static {v2, v4}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mLastEvent:Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "State history:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "Primary Provider:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-interface {v0, p1, p2}, Lcom/android/server/timezonedetector/Dumpable;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "Secondary Provider:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-interface {p0, p1, p2}, Lcom/android/server/timezonedetector/Dumpable;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    monitor-exit v6

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final generateCurrentAlgorithmStatus()Landroid/app/time/LocationTimeZoneAlgorithmStatus;
    .locals 12

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "FAILED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1
    const-string v2, "INITIALIZING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v2, "CERTAIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_3
    const-string/jumbo v2, "UNCERTAIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_4
    const-string v2, "DESTROYED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string/jumbo v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string/jumbo v2, "PROVIDERS_INITIALIZING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_7
    const-string/jumbo v2, "STOPPED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    move v7, v5

    goto :goto_2

    :cond_1
    move v7, v4

    :goto_2
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->getProviderStatus()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->getProviderStatus()I

    move-result v10

    new-instance v6, Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    iget-object v0, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->event:Landroid/service/timezone/TimeZoneProviderEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v9, v1

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderEvent;->getTimeZoneProviderStatus()Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object v0

    move-object v9, v0

    :goto_3
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->event:Landroid/service/timezone/TimeZoneProviderEvent;

    if-nez p0, :cond_3

    :goto_4
    move-object v11, v1

    goto :goto_5

    :cond_3
    invoke-virtual {p0}, Landroid/service/timezone/TimeZoneProviderEvent;->getTimeZoneProviderStatus()Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object v1

    goto :goto_4

    :goto_5
    invoke-direct/range {v6 .. v11}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;-><init>(IILandroid/service/timezone/TimeZoneProviderStatus;ILandroid/service/timezone/TimeZoneProviderStatus;)V

    return-object v6

    :sswitch_data_0
    .sparse-switch
        -0x4584e253 -> :sswitch_7
        -0x1be9cf16 -> :sswitch_6
        0x19d1382a -> :sswitch_5
        0x1c83a5f9 -> :sswitch_4
        0x33ff1fc9 -> :sswitch_3
        0x52aa9882 -> :sswitch_2
        0x72462c4d -> :sswitch_1
        0x7b29883d -> :sswitch_0
    .end sparse-switch
.end method

.method public final getStateForTests()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
    .locals 4

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mLastEvent:Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    if-eqz v2, :cond_0

    iput-object v2, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mLastEvent:Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    :cond_0
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mControllerState:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mRecordedStates:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mControllerStates:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getRecordedStates()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mPrimaryProviderStates:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getRecordedStates()Ljava/util/List;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mSecondaryProviderStates:Ljava/util/List;

    new-instance p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;

    invoke-direct {p0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUncertaintyTimeoutDelayMillis()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->this$0:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mIsQueued:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mDelayMillis:J

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "No item queued"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleProviderFailedStateChange(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v3

    iget-object p1, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->provider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    if-ne p1, v0, :cond_0

    invoke-virtual {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isTerminated()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->tryStartProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    iget v4, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isTerminated()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Secondary provider unexpected reported a failure: failed provider="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    invoke-virtual {v5}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    iget-object p1, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", primary provider="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", secondary provider="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isTerminated()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isTerminated()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->cancel()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Both providers are terminated: primary="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->provider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", secondary="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->provider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FAILED"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setStateAndReportStatusOnlyEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final handleProviderStartedStateChange(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V
    .locals 6

    iget-object v0, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->event:Landroid/service/timezone/TimeZoneProviderEvent;

    iget-object p1, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->provider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    const-string/jumbo v1, "provider="

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", implicit uncertainty, event=null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->handleProviderUncertainty(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionExecutionEnabled()Z

    move-result v2

    const-string/jumbo v3, "Provider="

    const/4 v4, 0x0

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is started, but currentUserConfiguration="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " suggests it shouldn\'t be."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderEvent;->getType()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Unknown eventType="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderEvent;->getType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderEvent;->getCreationElapsedMillis()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", explicit uncertainty. event="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->handleProviderUncertainty(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/lang/String;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->cancel()V

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProviderIfStarted(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V

    :cond_4
    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderEvent;->getSuggestion()Landroid/service/timezone/TimeZoneProviderSuggestion;

    move-result-object v1

    const-string v2, "CERTAIN"

    invoke-virtual {p0, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setState(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/service/timezone/TimeZoneProviderSuggestion;->getElapsedRealtimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/service/timezone/TimeZoneProviderSuggestion;->getTimeZoneIds()Ljava/util/List;

    move-result-object v1

    new-instance v4, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    invoke-direct {v4, v2, v3, v1}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;-><init>(JLjava/util/List;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Provider event received: provider="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", providerEvent="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", suggestionCreationTime="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->reportSuggestionEvent(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is started, but event suggests it shouldn\'t be"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final handleProviderUncertainty(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/lang/String;)V
    .locals 10

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    iget-object v1, v0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->this$0:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    iget-boolean v1, v0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mIsQueued:Z

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v4, "UNCERTAIN"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p4, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    const/4 v0, 0x0

    invoke-direct {p4, p2, p3, v0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;-><init>(JLjava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Uncertainty received from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    iget-object v1, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uncertaintyStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p4, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->reportSuggestionEvent(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;Ljava/lang/String;)V

    :cond_0
    move-object v5, p0

    move-object v6, p1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Starting uncertainty timeout: reason="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    iget-object p4, p4, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    check-cast p4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_UNCERTAINTY_DELAY:Ljava/time/Duration;

    iget-object p4, p4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p4, "location_time_zone_detection_uncertainty_delay_millis"

    invoke-static {p4, v1}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v9

    new-instance v4, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda1;

    move-object v5, p0

    move-object v6, p1

    move-wide v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/time/Duration;)V

    invoke-virtual {v9}, Ljava/time/Duration;->toMillis()J

    move-result-wide p0

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->cancel()V

    const/4 p2, 0x1

    iput-boolean p2, v0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mIsQueued:Z

    iput-wide p0, v0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mDelayMillis:J

    new-instance p2, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0, v4}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;Ljava/lang/Runnable;)V

    iget-object p3, v0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->this$0:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    iget-object p3, p3, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3, p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :goto_0
    if-ne v6, v3, :cond_2

    iget-object p0, v5, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v5, v2, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->tryStartProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    :cond_2
    return-void
.end method

.method public final initialize(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerCallbackImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "initialize()"

    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    iput-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCallback:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerCallbackImpl;

    iget-object p1, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    check-cast p1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    invoke-virtual {p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    new-instance p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V

    const-string/jumbo p2, "PROVIDERS_INITIALIZING"

    invoke-virtual {p0, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setState(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->initialize(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda0;)V

    iget-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->initialize(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda0;)V

    const-string/jumbo p1, "STOPPED"

    const-string/jumbo p2, "initialize()"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setStateAndReportStatusOnlyEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->alterProvidersStartedStateIfRequired(Lcom/android/server/timezonedetector/ConfigurationInternal;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isUncertaintyTimeoutSet()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->this$0:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mIsQueued:Z

    return p0
.end method

.method public final reportEvent(Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "makeSuggestion: suggestion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCallback:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerCallbackImpl;

    iget-object v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerCallbackImpl;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    const-class v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)V

    iget-object v0, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mLastEvent:Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    return-void
.end method

.method public final reportSuggestionEvent(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->generateCurrentAlgorithmStatus()Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    move-result-object v0

    new-instance v1, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    invoke-direct {v1, v0, p1}, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;-><init>(Landroid/app/time/LocationTimeZoneAlgorithmStatus;Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->addDebugInfo([Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->reportEvent(Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)V

    return-void
.end method

.method public final setState(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mRecordStateChanges:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mRecordedStates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mMetricsLogger:Lcom/android/server/timezonedetector/location/RealControllerMetricsLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x6

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "FAILED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v7

    goto :goto_1

    :sswitch_1
    const-string p0, "INITIALIZING"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v6

    goto :goto_1

    :sswitch_2
    const-string p0, "CERTAIN"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v5

    goto :goto_1

    :sswitch_3
    const-string/jumbo p0, "UNCERTAIN"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v4

    goto :goto_1

    :sswitch_4
    const-string p0, "DESTROYED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v3

    goto :goto_1

    :sswitch_5
    const-string/jumbo p0, "UNKNOWN"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_1

    :sswitch_6
    const-string/jumbo p0, "PROVIDERS_INITIALIZING"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_1

    :sswitch_7
    const-string/jumbo p0, "STOPPED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    move v0, v1

    goto :goto_2

    :pswitch_0
    move v0, v2

    goto :goto_2

    :pswitch_1
    move v0, v7

    goto :goto_2

    :pswitch_2
    move v0, v3

    goto :goto_2

    :pswitch_3
    move v0, v4

    goto :goto_2

    :pswitch_4
    move v0, v5

    goto :goto_2

    :pswitch_5
    move v0, v6

    :goto_2
    :pswitch_6
    const/16 p0, 0x19f

    invoke-static {p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4584e253 -> :sswitch_7
        -0x1be9cf16 -> :sswitch_6
        0x19d1382a -> :sswitch_5
        0x1c83a5f9 -> :sswitch_4
        0x33ff1fc9 -> :sswitch_3
        0x52aa9882 -> :sswitch_2
        0x72462c4d -> :sswitch_1
        0x7b29883d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setStateAndReportStatusOnlyEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setState(Ljava/lang/String;)V

    new-instance p1, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->generateCurrentAlgorithmStatus()Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;-><init>(Landroid/app/time/LocationTimeZoneAlgorithmStatus;Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->addDebugInfo([Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->reportEvent(Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)V

    return-void
.end method

.method public final stopProviders(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProviderIfStarted(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProviderIfStarted(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->cancel()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Providers stopped: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "STOPPED"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setStateAndReportStatusOnlyEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final tryStartProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/ConfigurationInternal;)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v0

    iget v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Unknown provider state: provider="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Unable to start "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": it is terminated"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    return-void

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enabling "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    iget-object v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    check-cast v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT:Ljava/time/Duration;

    iget-object v0, v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "ltzp_init_timeout_millis"

    invoke-static {v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    iget-object v1, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    check-cast v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    sget-object v2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT_FUZZ:Ljava/time/Duration;

    iget-object v1, v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "ltzp_init_timeout_fuzz_millis"

    invoke-static {v1, v2}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    check-cast p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    sget-object v2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_EVENT_FILTER_AGE_THRESHOLD:Ljava/time/Duration;

    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string/jumbo v3, "ltzp_event_filtering_age_threshold_millis"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p0

    iget-object v2, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    iget-object v2, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v3}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    iget v4, v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-object v3, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v3}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    const-string/jumbo v4, "startUpdates"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v5, p2, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object p2

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    invoke-virtual {v0, v1}, Ljava/time/Duration;->plus(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p2

    iget-object v1, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    new-instance v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V

    invoke-virtual {p2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->cancel()V

    iput-boolean v6, v1, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mIsQueued:Z

    iput-wide v4, v1, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mDelayMillis:J

    new-instance p2, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue$$ExternalSyntheticLambda0;

    invoke-direct {p2, v1, v3}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;Ljava/lang/Runnable;)V

    iget-object v3, v1, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->this$0:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    iget-object v3, v3, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, p2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    invoke-virtual {p1, v0, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->onStartUpdates(Ljava/time/Duration;Ljava/time/Duration;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Required stateEnum=4, but was "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "No need to start "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": already started"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
