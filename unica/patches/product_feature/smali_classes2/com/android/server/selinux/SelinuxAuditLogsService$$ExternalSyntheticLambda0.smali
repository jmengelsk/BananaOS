.class public final synthetic Lcom/android/server/selinux/SelinuxAuditLogsService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/selinux/SelinuxAuditLogsService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/selinux/SelinuxAuditLogsService;Landroid/app/job/JobParameters;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/selinux/SelinuxAuditLogsService;

    iput-object p2, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/selinux/SelinuxAuditLogsService;

    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    sget-object v1, Lcom/android/server/selinux/SelinuxAuditLogsService;->LOGS_COLLECTOR_JOB:Lcom/android/server/selinux/SelinuxAuditLogsJob;

    iget-object v2, v1, Lcom/android/server/selinux/SelinuxAuditLogsJob;->mAuditLogsCollector:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    iget-object v3, v2, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mStopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v3, v1, Lcom/android/server/selinux/SelinuxAuditLogsJob;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_20

    const-string/jumbo p0, "SelinuxAuditLogs"

    const-string/jumbo v0, "Selinux audit job is already running, ignore start request."

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    iget-object v3, v1, Lcom/android/server/selinux/SelinuxAuditLogsJob;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_26
    sget v3, Lcom/android/server/selinux/SelinuxAuditLogsService;->AUDITD_TAG_CODE:I

    invoke-virtual {v2, v3}, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->collect(I)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {v0, p0, v4}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V
    :try_end_31
    .catch Lcom/android/server/selinux/QuotaExceededException; {:try_start_26 .. :try_end_31} :catch_32

    goto :goto_35

    :catch_32
    invoke-virtual {v0, p0, v4}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_35
    :goto_35
    iget-object p0, v1, Lcom/android/server/selinux/SelinuxAuditLogsJob;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
