.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerSession;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    iput p2, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda13;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda13;->f$1:I

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_7

    :cond_0
    iput-boolean v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mPendingAbandonCallback:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;

    iput-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mPendingAbandonCallback:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;->run()V

    return-void

    :cond_1
    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object p0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_2

    iget-object p0, v1, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/StagingManager;->commitSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    const-string/jumbo p0, "Session staged"

    invoke-virtual {v1, v2, p0, v4, v5}, Lcom/android/server/pm/PackageInstallerSession;->sendUpdateToRemoteStatusReceiver(ILjava/lang/String;Landroid/os/Bundle;Z)V

    return-void

    :cond_2
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoInstallDependenciesEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez p0, :cond_3

    iget-object p0, v1, Lcom/android/server/pm/PackageInstallerSession;->mDependencyInstallerEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallDependencyHelper:Lcom/android/server/pm/InstallDependencyHelper;

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/InstallDependencyHelper;->getMissingSharedLibraries(Landroid/content/pm/parsing/PackageLite;)Ljava/util/List;

    move-result-object v2
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    move-object v4, v2

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :goto_2
    :try_start_3
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v4, -0x9

    invoke-direct {v3, v4, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->handleDependencyResolutionFailure(Lcom/android/server/pm/PackageManagerException;)V

    goto :goto_1

    :goto_3
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->handleDependencyResolutionFailure(Lcom/android/server/pm/PackageManagerException;)V

    goto :goto_1

    :goto_4
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mMissingSharedLibraryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallDependencyHelper:Lcom/android/server/pm/InstallDependencyHelper;

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v6

    iget v7, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iget-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$6;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageInstallerSession$6;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    invoke-direct {v9, v8, v0}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;-><init>(Landroid/os/Handler;Lcom/android/server/pm/PackageInstallerSession$6;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/InstallDependencyHelper;->resolveLibraryDependenciesIfNeededInternal(Ljava/util/List;Landroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/Computer;ILandroid/os/Handler;Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/server/pm/InstallDependencyHelper;->onError(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Ljava/lang/String;)V

    :goto_5
    monitor-exit p0

    return-void

    :goto_6
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->install()Ljava/util/concurrent/CompletableFuture;

    return-void

    :cond_4
    invoke-virtual {v1, v0, p0}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(ILjava/lang/String;)V

    return-void

    :goto_7
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method
