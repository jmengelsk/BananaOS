.class public final Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;
.super Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;Ljava/lang/String;Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;Z)V
    .locals 6

    new-instance v4, Lcom/android/server/timezonedetector/location/ZoneInfoDbTimeZoneProviderEventPreProcessor;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;-><init>(Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;Ljava/lang/String;Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;Z)V

    iput-object p4, v0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "mProxy="

    const-string/jumbo v1, "mCurrentState="

    const-string/jumbo v2, "mProviderName="

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v4, "{BinderLocationTimeZoneProvider}"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "State history:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "Proxy details:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onDestroy()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {p0}, Lcom/android/server/servicewatcher/ServiceWatcher;->unregister()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onInitialize()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    new-instance v1, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;-><init>(Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v2, v0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mListener:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;

    if-nez v2, :cond_2

    iput-object v1, v0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mListener:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;

    iget-object v1, v0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->register()V

    :cond_0
    if-eqz v1, :cond_1

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unable to register binder proxy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "listener already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onStartUpdates(Ljava/time/Duration;Ljava/time/Duration;)V
    .locals 2

    new-instance v0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;-><init>(ZLjava/time/Duration;Ljava/time/Duration;)V

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    iget-object p1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    iget-object p1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput-object v0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mRequest:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    iget-object p2, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mManagerProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v1, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p2}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;)V

    invoke-interface {p0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onStopUpdates()V
    .locals 4

    sget-object v0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->STOP_UPDATES:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object v0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mRequest:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mManagerProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v3, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v2}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;)V

    invoke-interface {p0, v3}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "BinderLocationTimeZoneProvider{mProviderName="

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mCurrentState="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mProxy="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
