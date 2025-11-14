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
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    iput p2, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda13;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda13;->f$1:I

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    iget-boolean v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_15

    monitor-exit v2

    goto :goto_22

    :catchall_11
    move-exception v0

    move-object p0, v0

    goto/16 :goto_ad

    :cond_15
    iput-boolean v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mPendingAbandonCallback:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;

    iput-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mPendingAbandonCallback:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_11

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;->run()V

    return-void

    :cond_22
    :goto_22
    const/4 v2, 0x1

    if-ne v0, v2, :cond_a9

    iget-object p0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_39

    iget-object p0, v1, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/StagingManager;->commitSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    const-string/jumbo p0, "Session staged"

    invoke-virtual {v1, v2, p0, v4, v5}, Lcom/android/server/pm/PackageInstallerSession;->sendUpdateToRemoteStatusReceiver(ILjava/lang/String;Landroid/os/Bundle;Z)V

    return-void

    :cond_39
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoInstallDependenciesEnabled:Z

    if-eqz v0, :cond_a5

    iget-boolean p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez p0, :cond_a5

    iget-object p0, v1, Lcom/android/server/pm/PackageInstallerSession;->mDependencyInstallerEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_58

    :try_start_4e
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallDependencyHelper:Lcom/android/server/pm/InstallDependencyHelper;

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/InstallDependencyHelper;->getMissingSharedLibraries(Landroid/content/pm/parsing/PackageLite;)Ljava/util/List;

    move-result-object v2
    :try_end_56
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4e .. :try_end_56} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_56} :catch_5a
    .catchall {:try_start_4e .. :try_end_56} :catchall_58

    :goto_56
    move-object v4, v2

    goto :goto_71

    :catchall_58
    move-exception v0

    goto :goto_a3

    :catch_5a
    move-exception v0

    goto :goto_5e

    :catch_5c
    move-exception v0

    goto :goto_6d

    :goto_5e
    :try_start_5e
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v4, -0x9

    invoke-direct {v3, v4, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->handleDependencyResolutionFailure(Lcom/android/server/pm/PackageManagerException;)V

    goto :goto_56

    :goto_6d
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->handleDependencyResolutionFailure(Lcom/android/server/pm/PackageManagerException;)V

    goto :goto_56

    :goto_71
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
    :try_end_95
    .catchall {:try_start_5e .. :try_end_95} :catchall_58

    :try_start_95
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/InstallDependencyHelper;->resolveLibraryDependenciesIfNeededInternal(Ljava/util/List;Landroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/Computer;ILandroid/os/Handler;Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_99
    .catchall {:try_start_95 .. :try_end_98} :catchall_58

    goto :goto_a1

    :catch_99
    move-exception v0

    :try_start_9a
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/server/pm/InstallDependencyHelper;->onError(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Ljava/lang/String;)V

    :goto_a1
    monitor-exit p0

    return-void

    :goto_a3
    monitor-exit p0
    :try_end_a4
    .catchall {:try_start_9a .. :try_end_a4} :catchall_58

    throw v0

    :cond_a5
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->install()Ljava/util/concurrent/CompletableFuture;

    return-void

    :cond_a9
    invoke-virtual {v1, v0, p0}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(ILjava/lang/String;)V

    return-void

    :goto_ad
    :try_start_ad
    monitor-exit v2
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_11

    throw p0
.end method
