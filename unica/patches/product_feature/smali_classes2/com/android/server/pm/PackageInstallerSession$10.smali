.class public final Lcom/android/server/pm/PackageInstallerSession$10;
.super Landroid/content/pm/IPackageLoadingProgressCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$10;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Landroid/content/pm/IPackageLoadingProgressCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageLoadingProgressChanged(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$10;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$10;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalProgress:F

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
