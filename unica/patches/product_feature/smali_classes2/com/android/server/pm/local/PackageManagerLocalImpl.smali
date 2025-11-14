.class public final Lcom/android/server/pm/local/PackageManagerLocalImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/PackageManagerLocal;


# instance fields
.field public final mService:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public final addOverrideSigningDetails(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)V
    .locals 0

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Landroid/util/apk/ApkSignatureVerifier;->addOverrideSigningDetails(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "This test API is only available on debuggable builds"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final clearOverrideSigningDetails()V
    .locals 1

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/util/apk/ApkSignatureVerifier;->clearOverrideSigningDetails()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "This test API is only available on debuggable builds"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reconcileSdkData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIILjava/lang/String;I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/android/server/pm/Installer;->$r8$clinit:I

    new-instance v0, Landroid/os/ReconcileSdkDataArgs;

    invoke-direct {v0}, Landroid/os/ReconcileSdkDataArgs;-><init>()V

    iput-object p1, v0, Landroid/os/ReconcileSdkDataArgs;->uuid:Ljava/lang/String;

    iput-object p2, v0, Landroid/os/ReconcileSdkDataArgs;->packageName:Ljava/lang/String;

    iput-object p3, v0, Landroid/os/ReconcileSdkDataArgs;->subDirNames:Ljava/util/List;

    iput p4, v0, Landroid/os/ReconcileSdkDataArgs;->userId:I

    iput p5, v0, Landroid/os/ReconcileSdkDataArgs;->appId:I

    iput-object p7, v0, Landroid/os/ReconcileSdkDataArgs;->seInfo:Ljava/lang/String;

    iput p8, v0, Landroid/os/ReconcileSdkDataArgs;->flags:I

    iput p6, v0, Landroid/os/ReconcileSdkDataArgs;->previousAppId:I

    :try_start_0
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object p2, p1, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, v0}, Landroid/os/IInstalld;->reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_0
    move-exception p0

    :try_start_4
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    :try_start_5
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final removeOverrideSigningDetails(Landroid/content/pm/SigningDetails;)V
    .locals 0

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/util/apk/ApkSignatureVerifier;->removeOverrideSigningDetails(Landroid/content/pm/SigningDetails;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "This test API is only available on debuggable builds"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/local/PackageManagerLocalImpl;->withFilteredSnapshot(ILandroid/os/UserHandle;Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;

    move-result-object p0

    return-object p0
.end method

.method public final withFilteredSnapshot(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/local/PackageManagerLocalImpl;->withFilteredSnapshot(ILandroid/os/UserHandle;Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;

    move-result-object p0

    return-object p0
.end method

.method public final withFilteredSnapshot(ILandroid/os/UserHandle;Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;
    .locals 6

    new-instance v0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;

    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer(Z)Lcom/android/server/pm/Computer;

    move-result-object v3

    const/4 v4, 0x0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;-><init>(ILandroid/os/UserHandle;Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;Lcom/android/server/pm/PackageSetting;)V

    return-object v0
.end method

.method public final withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .locals 2

    new-instance v0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;

    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer(Z)Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;-><init>(Lcom/android/server/pm/snapshot/PackageDataSnapshot;)V

    return-object v0
.end method
