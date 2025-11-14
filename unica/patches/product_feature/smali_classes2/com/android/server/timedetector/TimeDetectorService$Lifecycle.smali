.class public Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->SLOCK:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    invoke-direct {v0, v1}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-direct {v3, v1, v2}, Lcom/android/server/timedetector/EnvironmentImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    new-instance v4, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    invoke-direct {v4, v3, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;-><init>(Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;Lcom/android/server/timedetector/ServiceConfigAccessor;)V

    new-instance v3, Lcom/android/server/timedetector/TimeDetectorInternalImpl;

    invoke-direct {v3, v1, v2, v0, v4}, Lcom/android/server/timedetector/TimeDetectorInternalImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/ServiceConfigAccessorImpl;Lcom/android/server/timedetector/TimeDetectorStrategyImpl;)V

    const-class v0, Lcom/android/server/timedetector/TimeDetectorInternal;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    sget-object v3, Lcom/android/server/timezonedetector/CallerIdentityInjector;->REAL:Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    new-instance v0, Lcom/android/server/timedetector/TimeDetectorService;

    invoke-static {v1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timedetector/TimeDetectorService;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/CallerIdentityInjector;Lcom/android/server/timedetector/TimeDetectorStrategy;Landroid/util/NtpTrustedTime;)V

    const-string/jumbo v1, "time_detector"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
