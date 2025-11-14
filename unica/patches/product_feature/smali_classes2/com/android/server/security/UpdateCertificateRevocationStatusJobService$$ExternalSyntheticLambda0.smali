.class public final synthetic Lcom/android/server/security/UpdateCertificateRevocationStatusJobService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/security/UpdateCertificateRevocationStatusJobService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/security/UpdateCertificateRevocationStatusJobService;Landroid/app/job/JobParameters;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/security/UpdateCertificateRevocationStatusJobService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/security/UpdateCertificateRevocationStatusJobService;

    iput-object p2, p0, Lcom/android/server/security/UpdateCertificateRevocationStatusJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/security/UpdateCertificateRevocationStatusJobService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/security/UpdateCertificateRevocationStatusJobService;

    iget-object p0, p0, Lcom/android/server/security/UpdateCertificateRevocationStatusJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    sget v1, Lcom/android/server/security/UpdateCertificateRevocationStatusJobService;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "AVF_CRL"

    :try_start_b
    new-instance v2, Lcom/android/server/security/CertificateRevocationStatusManager;

    invoke-direct {v2, v0}, Lcom/android/server/security/CertificateRevocationStatusManager;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "Starting to fetch remote CRL from job service."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/server/security/CertificateRevocationStatusManager;->fetchRemoteRevocationListBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/security/CertificateRevocationStatusManager;->silentlyStoreRevocationList([B)V
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_1e

    goto :goto_25

    :catchall_1e
    move-exception v2

    const-string/jumbo v3, "Unable to update the stored revocation list."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
