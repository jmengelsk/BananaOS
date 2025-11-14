.class public final Lcom/android/server/selinux/SelinuxAuditLogsCollector$DefaultDomainSupplier;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Supplier;


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    sget p0, Lcom/android/server/selinux/SelinuxAuditLogsService;->AUDITD_TAG_CODE:I

    const-string/jumbo p0, "no_match^"

    const-string/jumbo v0, "adservices"

    const-string/jumbo v1, "selinux_audit_domain"

    invoke-static {v0, v1, p0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
