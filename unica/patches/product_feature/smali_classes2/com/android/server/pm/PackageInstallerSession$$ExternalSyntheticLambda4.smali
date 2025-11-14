.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/FileUtils$ProgressListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerSession;

.field public final synthetic f$1:Landroid/system/Int64Ref;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/system/Int64Ref;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda4;->f$1:Landroid/system/Int64Ref;

    return-void
.end method


# virtual methods
.method public final onProgress(J)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda4;->f$1:Landroid/system/Int64Ref;

    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_29

    iget-wide v1, p0, Landroid/system/Int64Ref;->value:J

    sub-long v1, p1, v1

    iput-wide p1, p0, Landroid/system/Int64Ref;->value:J

    iget-object p0, v0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_17
    iget p1, v0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    long-to-float p2, v1

    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    long-to-float v1, v1

    div-float/2addr p2, v1

    add-float/2addr p2, p1

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgressLocked(F)V

    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_26

    throw p1

    :cond_29
    return-void
.end method
