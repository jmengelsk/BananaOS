.class public Lcom/android/server/wm/CoreSaStatusLoggingService;
.super Landroid/app/job/JobService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final IDLE_LOGGING_PERIOD_MILLIS:J

.field public static final sCoreSaStatusLoggers:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/android/server/wm/CoreSaStatusLoggingService;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wm/CoreSaStatusLoggingService;->IDLE_LOGGING_PERIOD_MILLIS:J

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/wm/CoreSaStatusLoggingService;->sCoreSaStatusLoggers:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule()V
    .registers 4

    :try_start_0
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-static {v0}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-nez v0, :cond_b

    goto :goto_40

    :cond_b
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "android"

    const-class v3, Lcom/android/server/wm/CoreSaStatusLoggingService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const v3, 0x18c2283f

    invoke-direct {v2, v3, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    sget-wide v2, Lcom/android/server/wm/CoreSaStatusLoggingService;->IDLE_LOGGING_PERIOD_MILLIS:J

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_38

    return-void

    :catchall_38
    move-exception v0

    const-string v1, "CoreSaStatusLoggingService"

    const-string v2, "Failed to schedule."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_40
    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const v1, 0x18c2283f

    if-ne v0, v1, :cond_32

    sget-object v0, Lcom/android/server/wm/CoreSaStatusLoggingService;->sCoreSaStatusLoggers:Ljava/util/HashSet;

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_2a

    :try_start_c
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    new-instance v1, Lcom/android/server/wm/CoreSaStatusLoggingService$IdleLoggingThread;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/wm/CoreSaStatusLoggingService$IdleLoggingThread;-><init>(Lcom/android/server/wm/CoreSaStatusLoggingService;Landroid/app/job/JobParameters;Ljava/util/HashSet;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_1d
    move-exception p0

    goto :goto_28

    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_1d

    :try_start_20
    const-string p0, "CoreSaStatusLoggingService"

    const-string p1, "CoreSaStatusLoggers is empty"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2a

    goto :goto_32

    :goto_28
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_1d

    :try_start_29
    throw p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    const-string p1, "CoreSaStatusLoggingService"

    const-string v0, "Failed to onStartJob."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_32
    :goto_32
    const/4 p0, 0x0

    return p0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_b

    const p1, 0x18c2283f

    if-ne p0, p1, :cond_13

    const/4 p0, 0x1

    return p0

    :catchall_b
    move-exception p0

    const-string p1, "CoreSaStatusLoggingService"

    const-string v0, "Failed to onStopJob."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    const/4 p0, 0x0

    return p0
.end method
