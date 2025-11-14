.class public Lcom/android/server/selinux/SelinuxAuditLogsService;
.super Landroid/app/job/JobService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final AUDITD_TAG_CODE:I

.field public static final EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

.field public static final LOGS_COLLECTOR_JOB:Lcom/android/server/selinux/SelinuxAuditLogsJob;

.field public static final QUOTA_LIMITER:Lcom/android/server/selinux/QuotaLimiter;

.field public static final SELINUX_AUDIT_JOB_COMPONENT:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string/jumbo v0, "auditd"

    invoke-static {v0}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/selinux/SelinuxAuditLogsService;->AUDITD_TAG_CODE:I

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/selinux/SelinuxAuditLogsService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/selinux/SelinuxAuditLogsService;->SELINUX_AUDIT_JOB_COMPONENT:Landroid/content/ComponentName;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/server/selinux/SelinuxAuditLogsService;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    new-instance v1, Lcom/android/server/selinux/QuotaLimiter;

    const v2, 0xc350

    const-string/jumbo v3, "adservices"

    const-string/jumbo v4, "selinux_audit_cap"

    invoke-static {v3, v4, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/android/server/selinux/QuotaLimiter;-><init>(Lcom/android/internal/os/Clock;Ljava/time/Duration;I)V

    sput-object v1, Lcom/android/server/selinux/SelinuxAuditLogsService;->QUOTA_LIMITER:Lcom/android/server/selinux/QuotaLimiter;

    new-instance v2, Lcom/android/server/selinux/SelinuxAuditLogsJob;

    new-instance v3, Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    new-instance v4, Lcom/android/server/selinux/RateLimiter;

    invoke-direct {v4, v0}, Lcom/android/server/selinux/RateLimiter;-><init>(Ljava/time/Duration;)V

    invoke-direct {v3, v4, v1}, Lcom/android/server/selinux/SelinuxAuditLogsCollector;-><init>(Lcom/android/server/selinux/RateLimiter;Lcom/android/server/selinux/QuotaLimiter;)V

    invoke-direct {v2, v3}, Lcom/android/server/selinux/SelinuxAuditLogsJob;-><init>(Lcom/android/server/selinux/SelinuxAuditLogsCollector;)V

    sput-object v2, Lcom/android/server/selinux/SelinuxAuditLogsService;->LOGS_COLLECTOR_JOB:Lcom/android/server/selinux/SelinuxAuditLogsJob;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .registers 5

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/Flags;->selinuxSdkSandboxAudit()Z

    move-result v0

    const-string/jumbo v1, "SelinuxAuditLogs"

    if-nez v0, :cond_10

    const-string/jumbo p0, "SelinuxAuditLogsService not enabled"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    sget v0, Lcom/android/server/selinux/SelinuxAuditLogsService;->AUDITD_TAG_CODE:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1c

    const-string/jumbo p0, "auditd is not a registered tag on this system"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    new-instance v0, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    const-string/jumbo v2, "SelinuxAuditLogsNamespace"

    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;-><init>(Landroid/app/job/JobScheduler;)V

    invoke-virtual {v0}, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->schedule()V

    new-instance v1, Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;-><init>(Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;I)V

    const-string/jumbo v2, "adservices"

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    new-instance v1, Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;-><init>(Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;I)V

    const-string/jumbo v0, "security"

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const v1, 0x182771a

    const/4 v2, 0x0

    const-string/jumbo v3, "SelinuxAuditLogs"

    if-eq v0, v1, :cond_14

    const-string/jumbo p0, "The job id does not match the expected selinux job id."

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_14
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/Flags;->selinuxSdkSandboxAudit()Z

    move-result v0

    if-nez v0, :cond_21

    const-string/jumbo p0, "Selinux audit job disabled."

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_21
    sget-object v0, Lcom/android/server/selinux/SelinuxAuditLogsService;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/selinux/SelinuxAuditLogsService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/selinux/SelinuxAuditLogsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/selinux/SelinuxAuditLogsService;Landroid/app/job/JobParameters;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p0

    const p1, 0x182771a

    const/4 v0, 0x0

    if-eq p0, p1, :cond_b

    return v0

    :cond_b
    sget-object p0, Lcom/android/server/selinux/SelinuxAuditLogsService;->LOGS_COLLECTOR_JOB:Lcom/android/server/selinux/SelinuxAuditLogsJob;

    iget-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsJob;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsJob;->mAuditLogsCollector:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mStopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return p1

    :cond_1e
    return v0
.end method
