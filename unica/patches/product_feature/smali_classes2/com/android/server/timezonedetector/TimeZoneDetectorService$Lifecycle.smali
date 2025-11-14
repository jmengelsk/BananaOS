.class public final Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onStart()V
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v2}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getInstance(Landroid/content/Context;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    move-result-object v3

    new-instance v5, Lcom/android/server/timezonedetector/EnvironmentImpl;

    invoke-direct {v5, v1}, Lcom/android/server/timezonedetector/EnvironmentImpl;-><init>(Landroid/os/Handler;)V

    new-instance v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Landroid/app/NotificationManager;Lcom/android/server/timezonedetector/Environment;)V

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->handleConfigurationUpdate()V

    new-instance v4, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    invoke-direct {v4, v3, v5, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/Environment;Lcom/android/server/timezonedetector/TimeZoneChangeListener;)V

    new-instance v3, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;

    invoke-direct {v3, v2, v1}, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    new-instance v0, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle$1;

    invoke-direct {v0, v4}, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle$1;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;)V

    monitor-enter v3

    :try_start_31
    iget-object v5, v3, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->mListeners:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_60

    monitor-exit v3

    new-instance v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;

    invoke-direct {v0, v2, v1, v4}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;)V

    const-class v5, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;

    invoke-virtual {p0, v5, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/server/timezonedetector/CallerIdentityInjector;->REAL:Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    new-instance v5, Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-direct {v5, v2, v1, v0, v4}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/CallerIdentityInjector;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)V

    iget-object v1, v5, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mDumpables:Ljava/util/List;

    monitor-enter v1

    :try_start_4d
    iget-object v0, v5, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mDumpables:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_5c

    const-string/jumbo v0, "time_zone_detector"

    invoke-virtual {p0, v0, v5}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void

    :catchall_5c
    move-exception v0

    move-object p0, v0

    :try_start_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5c

    throw p0

    :catchall_60
    move-exception v0

    move-object p0, v0

    :try_start_62
    monitor-exit v3
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_60

    throw p0
.end method
