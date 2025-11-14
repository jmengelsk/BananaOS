.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerSession;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession;IJLandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    iput p2, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;->f$1:I

    iput-wide p3, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;->f$2:J

    iput-object p5, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;->f$3:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;->f$1:I

    iget-wide v5, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;->f$2:J

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;->f$3:Landroid/app/PendingIntent;

    iget-object p0, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p0

    iget-object v3, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iget-object p0, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget-object p0, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    new-instance v8, Landroid/util/ArraySet;

    iget-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mUnarchivalListeners:Ljava/util/Set;

    invoke-direct {v8, v9}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v9, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/PackageArchiver;->notifyUnarchivalListener(ILjava/lang/String;Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/util/Set;I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
