.class public final Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;->mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 9

    const v0, 0x182771a

    const/4 v1, 0x0

    const-string/jumbo v2, "selinux_enable_audit_job"

    iget v3, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;->$r8$classId:I

    packed-switch v3, :pswitch_data_86

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v3

    const-string/jumbo v4, "selinux_audit_cap"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    sget-object v5, Lcom/android/server/selinux/SelinuxAuditLogsService;->QUOTA_LIMITER:Lcom/android/server/selinux/QuotaLimiter;

    const v6, 0xc350

    invoke-virtual {p1, v4, v6}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v5, Lcom/android/server/selinux/QuotaLimiter;->mMaxPermits:I

    :cond_24
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-virtual {p1, v2, v1}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3a

    sget p1, Lcom/android/server/selinux/SelinuxAuditLogsService;->AUDITD_TAG_CODE:I

    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;->mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto :goto_4e

    :cond_3a
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;->mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    invoke-virtual {p0}, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->schedule()V

    goto :goto_4e

    :cond_40
    const-string/jumbo p1, "selinux_audit_job_frequency_hours"

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;->mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    invoke-virtual {p0}, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->schedule()V

    :cond_4e
    :goto_4e
    return-void

    :pswitch_4f  #0x0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v3

    const-string/jumbo v4, "selinux_audit_job_enabled"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-virtual {p1, v4, v1}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_75

    sget p1, Lcom/android/server/selinux/SelinuxAuditLogsService;->AUDITD_TAG_CODE:I

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/Flags;->selinuxSdkSandboxAudit()Z

    move-result p1

    if-eqz p1, :cond_72

    const-string/jumbo p1, "adservices"

    invoke-static {p1, v2, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_73

    :cond_72
    move p1, v1

    :goto_73
    if-eqz p1, :cond_76

    :cond_75
    const/4 v1, 0x1

    :cond_76
    if-eqz v1, :cond_7e

    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;->mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    invoke-virtual {p0}, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->schedule()V

    goto :goto_85

    :cond_7e
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;->mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_85
    :goto_85
    return-void

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_4f  #00000000
    .end packed-switch
.end method
