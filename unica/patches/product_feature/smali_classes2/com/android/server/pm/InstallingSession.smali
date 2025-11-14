.class public final Lcom/android/server/pm/InstallingSession;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAllowlistedRestrictedPermissions:Ljava/util/List;

.field public final mApplicationEnabledSettingPersistent:Z

.field public final mAutoRevokePermissionsMode:I

.field public final mDataLoaderType:I

.field public final mDependencyInstallerEnabled:Z

.field public final mDevelopmentInstallFlags:I

.field public final mDexoptCompilerFilter:Ljava/lang/String;

.field public final mForceQueryableOverride:Z

.field public final mHasAppMetadataFile:Z

.field public mInstallFlags:I

.field public final mInstallReason:I

.field public final mInstallScenario:I

.field public final mInstallSource:Lcom/android/server/pm/InstallSource;

.field public final mIsInherit:Z

.field public final mMissingSharedLibraryCount:I

.field public final mMoveInfo:Lcom/android/server/pm/MoveInfo;

.field public final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field public final mOriginInfo:Lcom/android/server/pm/OriginInfo;

.field public final mPackageAbiOverride:Ljava/lang/String;

.field public final mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field public final mPackageSource:I

.field public mParentInstallingSession:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

.field public final mPermissionStates:Landroid/util/ArrayMap;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

.field public final mRequireUserAction:I

.field public final mRequiredInstalledVersionCode:J

.field public mRet:I

.field public final mSessionId:I

.field public final mSigningDetails:Landroid/content/pm/SigningDetails;

.field public mTraceCookie:I

.field public mTraceMethod:Ljava/lang/String;

.field public final mUser:Landroid/os/UserHandle;

.field public final mVolumeUuid:Ljava/lang/String;


# direct methods
.method public static $r8$lambda$gEcdI8cK9dzFagC4AcY_lMc7VaM(Lcom/android/server/pm/InstallingSession;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const-wide/32 v1, 0x40000

    const-string/jumbo v3, "queueInstall"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const-string/jumbo v0, "startInstall"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/InstallRequest;

    invoke-direct {v0, p0}, Lcom/android/server/pm/InstallRequest;-><init>(Lcom/android/server/pm/InstallingSession;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallingSession;->handleStartCopy(Lcom/android/server/pm/InstallRequest;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallingSession;->handleReturnCode(Lcom/android/server/pm/InstallRequest;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public constructor <init>(ILjava/io/File;Ljava/lang/String;Lcom/android/server/pm/PackageInstallerSession$7;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;Landroid/os/UserHandle;Landroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;Landroid/content/pm/verify/domain/DomainSet;Lcom/android/server/pm/PackageManagerService;ZZI)V
    .locals 6

    move-object/from16 v0, p12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object p7, p0, Lcom/android/server/pm/InstallingSession;->mUser:Landroid/os/UserHandle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    new-instance p3, Lcom/android/server/pm/OriginInfo;

    invoke-direct {p3, p2, v2, v1, v3}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZLjava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/server/pm/OriginInfo;

    invoke-direct {p2, v3, v2, v1, p3}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZLjava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    :goto_0
    iput-object v3, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object p2, p6, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iget p3, p5, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    const-string/jumbo v4, "android.permission.INSTALL_PACKAGES"

    move v5, p9

    invoke-interface {v3, v4, p9}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-static {p9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p3, v2

    goto :goto_1

    :cond_2
    if-ne p3, v2, :cond_3

    move p3, v1

    :cond_3
    :goto_1
    iput p3, p0, Lcom/android/server/pm/InstallingSession;->mInstallReason:I

    iget p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mInstallScenario:I

    iput-object p4, p0, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    iget p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    iget p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mDevelopmentInstallFlags:I

    iput-object p6, p0, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    iget-object p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    invoke-virtual {p5}, Landroid/content/pm/PackageInstaller$SessionParams;->getPermissionStates()Landroid/util/ArrayMap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mPermissionStates:Landroid/util/ArrayMap;

    iget-object p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    iget p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mAutoRevokePermissionsMode:I

    iput-object p8, p0, Lcom/android/server/pm/InstallingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iget-boolean p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    iput-boolean p2, p0, Lcom/android/server/pm/InstallingSession;->mForceQueryableOverride:Z

    iget-object p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result p2

    goto :goto_2

    :cond_4
    move p2, v1

    :goto_2
    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    iget-wide p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide p2, p0, Lcom/android/server/pm/InstallingSession;->mRequiredInstalledVersionCode:J

    iget p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mPackageSource:I

    move-object/from16 p2, p10

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_5

    move v1, v2

    :cond_5
    iput-boolean v1, p0, Lcom/android/server/pm/InstallingSession;->mIsInherit:Z

    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mSessionId:I

    iget p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mRequireUserAction:I

    iget-boolean p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    iput-boolean p1, p0, Lcom/android/server/pm/InstallingSession;->mApplicationEnabledSettingPersistent:Z

    move-object/from16 p1, p11

    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    move/from16 p1, p13

    iput-boolean p1, p0, Lcom/android/server/pm/InstallingSession;->mHasAppMetadataFile:Z

    iget-object p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mDexoptCompilerFilter:Ljava/lang/String;

    move/from16 p1, p14

    iput-boolean p1, p0, Lcom/android/server/pm/InstallingSession;->mDependencyInstallerEnabled:Z

    move/from16 p1, p15

    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mMissingSharedLibraryCount:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Lcom/android/server/pm/MovePackageHelper$1;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p10, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object p7, p0, Lcom/android/server/pm/InstallingSession;->mUser:Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iput-object p3, p0, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    iput p4, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mDevelopmentInstallFlags:I

    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/InstallSource;

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iput-object p6, p0, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mPermissionStates:Landroid/util/ArrayMap;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    const/4 p3, 0x3

    iput p3, p0, Lcom/android/server/pm/InstallingSession;->mAutoRevokePermissionsMode:I

    sget-object p3, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object p3, p0, Lcom/android/server/pm/InstallingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mInstallReason:I

    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mInstallScenario:I

    iput-boolean p1, p0, Lcom/android/server/pm/InstallingSession;->mForceQueryableOverride:Z

    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    const-wide/16 p3, -0x1

    iput-wide p3, p0, Lcom/android/server/pm/InstallingSession;->mRequiredInstalledVersionCode:J

    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mPackageSource:I

    iput-object p9, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iput-boolean p1, p0, Lcom/android/server/pm/InstallingSession;->mIsInherit:Z

    const/4 p3, -0x1

    iput p3, p0, Lcom/android/server/pm/InstallingSession;->mSessionId:I

    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mRequireUserAction:I

    iput-boolean p1, p0, Lcom/android/server/pm/InstallingSession;->mApplicationEnabledSettingPersistent:Z

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    iput-boolean p1, p0, Lcom/android/server/pm/InstallingSession;->mHasAppMetadataFile:Z

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mDexoptCompilerFilter:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/android/server/pm/InstallingSession;->mDependencyInstallerEnabled:Z

    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mMissingSharedLibraryCount:I

    return-void
.end method


# virtual methods
.method public final handleReturnCode(Lcom/android/server/pm/InstallRequest;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v1, Lcom/android/server/pm/InstallingSession;->mRet:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_17

    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    const/4 v4, 0x0

    const/16 v5, -0x6e

    const/4 v6, -0x2

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v0, v7, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v8, v1, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v10, v8, Lcom/android/server/pm/MoveInfo;->mFromUuid:Ljava/lang/String;

    iget-object v11, v8, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    iget-object v12, v8, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    iget v13, v8, Lcom/android/server/pm/MoveInfo;->mAppId:I

    iget-object v14, v8, Lcom/android/server/pm/MoveInfo;->mSeInfo:Ljava/lang/String;

    iget v15, v8, Lcom/android/server/pm/MoveInfo;->mTargetSdkVersion:I

    iget-object v8, v8, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v9, v0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object/from16 v16, v8

    invoke-interface/range {v9 .. v16}, Landroid/os/IInstalld;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_0

    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v4, v4, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v5, v5, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    move-object v8, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :goto_2
    :try_start_5
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v8
    :try_end_6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_4
    const-string v7, "Failed to move app"

    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v8, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4, v8}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    const-string/jumbo v4, "PackageManager"

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    :cond_1
    iget v0, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    invoke-static {v0}, Lcom/android/server/pm/AsecInstallHelper;->installOnExternalAsec(I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_2

    move-object v8, v4

    goto :goto_5

    :cond_2
    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    move-object v8, v0

    :goto_5
    iget-boolean v0, v8, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    if-eqz v0, :cond_3

    iget-object v0, v8, Lcom/android/server/pm/OriginInfo;->mCid:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/server/pm/AsecInstallHelper;->setMountPath(Ljava/lang/String;Lcom/android/server/pm/InstallRequest;)V

    :goto_6
    move v5, v3

    goto/16 :goto_1d

    :cond_3
    iget-object v0, v7, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    const-string/jumbo v9, "smdl"

    iget-object v10, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v10

    :try_start_7
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v11

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v11, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ".tmp"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    if-nez v0, :cond_4

    iget-object v0, v8, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v10, "/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v10, 0x4

    if-ne v0, v10, :cond_4

    move v10, v3

    goto :goto_7

    :cond_4
    move v10, v9

    :goto_7
    if-eqz v10, :cond_5

    :try_start_8
    iget-object v0, v8, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v11, 0x1fd

    invoke-static {v0, v11}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    const-string v7, "Failed to move app"

    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v8, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4, v8}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    const-string/jumbo v4, "PackageManager"

    const-string v6, "Failed to move app"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    :cond_5
    :goto_8
    sget-object v5, Lcom/android/server/pm/AsecInstallHelper;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    monitor-enter v6

    :try_start_9
    sget-object v0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->sInstance:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    if-nez v0, :cond_6

    new-instance v0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v9, v0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    sput-object v0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->sInstance:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    goto :goto_9

    :catchall_2
    move-exception v0

    goto/16 :goto_17

    :cond_6
    :goto_9
    sget-object v11, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->sInstance:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    iget-object v0, v7, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    iget-object v6, v11, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mUnbindingRunnable:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;

    if-nez v6, :cond_7

    goto :goto_a

    :cond_7
    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v4, v11, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mUnbindingRunnable:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;

    :goto_a
    iget-object v0, v11, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    if-eqz v0, :cond_8

    :goto_b
    move-object v3, v11

    goto :goto_d

    :cond_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v6, Lcom/android/server/pm/AsecInstallHelper;->CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    monitor-enter v11

    :try_start_a
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v11, v3, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, v11, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x1388

    add-long v14, v14, v16

    :goto_c
    iget-object v0, v11, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    if-nez v0, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    cmp-long v0, v16, v14

    if-gez v0, :cond_9

    const-wide/16 v3, 0x64

    :try_start_b
    invoke-virtual {v11, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catch_3
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object v3, v11

    goto/16 :goto_16

    :cond_9
    :try_start_c
    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    iget-boolean v0, v11, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    if-nez v0, :cond_a

    iget-object v0, v11, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    if-eqz v0, :cond_a

    goto :goto_b

    :cond_a
    monitor-enter v11

    :try_start_d
    invoke-virtual {v5, v11}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v9, v11, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    const/4 v3, 0x0

    iput-object v3, v11, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    monitor-exit v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_b

    :goto_d
    iget-object v11, v3, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    const/16 v4, -0x12

    if-nez v11, :cond_c

    :cond_b
    move v5, v4

    goto/16 :goto_13

    :cond_c
    :try_start_e
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    :goto_e
    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_e

    const/4 v15, 0x1

    goto :goto_f

    :cond_e
    move v15, v9

    :goto_f
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;

    :goto_10
    sget-boolean v6, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    const-string v6, "-"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/16 v16, 0x0

    goto :goto_11

    :cond_10
    move-object/from16 v16, v0

    :goto_11
    invoke-interface/range {v11 .. v16}, Lcom/samsung/android/core/pm/containerservice/IContainerService;->copyPackageToContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    iget-object v6, v7, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;

    invoke-direct {v9, v11}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/core/pm/containerservice/IContainerService;)V

    invoke-virtual {v6, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v6, v7, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v6}, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->scheduleAutoUnbound(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_12

    :catchall_4
    move-exception v0

    goto :goto_14

    :catch_4
    move-exception v0

    :try_start_f
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    iget-object v0, v7, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;

    invoke-direct {v6, v11}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/core/pm/containerservice/IContainerService;)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v7, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v0}, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->scheduleAutoUnbound(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_b

    invoke-static {v0, v2}, Lcom/android/server/pm/AsecInstallHelper;->setMountPath(Ljava/lang/String;Lcom/android/server/pm/InstallRequest;)V

    const/4 v5, 0x1

    :goto_13
    if-eqz v10, :cond_16

    :try_start_10
    iget-object v0, v8, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1f9

    invoke-static {v0, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_10
    .catch Landroid/system/ErrnoException; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_1d

    :goto_14
    iget-object v1, v7, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v11}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/core/pm/containerservice/IContainerService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v7, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v1}, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->scheduleAutoUnbound(Landroid/content/Context;Landroid/os/Handler;)V

    throw v0

    :catchall_5
    move-exception v0

    move-object v3, v11

    :goto_15
    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_15

    :goto_16
    :try_start_12
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_16

    :goto_17
    :try_start_13
    monitor-exit v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    throw v0

    :catchall_8
    move-exception v0

    :try_start_14
    monitor-exit v10
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    throw v0

    :cond_11
    const-string v3, "Copying native libraries failed"

    const-string v0, "Failed to copy package"

    iget-object v4, v1, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    const-string/jumbo v5, "PackageManager"

    const-string v6, "Failed to create copy file: "

    const-string/jumbo v7, "copyApk"

    const-wide/32 v8, 0x40000

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_15
    iget-boolean v7, v4, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    if-eqz v7, :cond_12

    iget-object v0, v4, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v5, 0x1

    goto/16 :goto_1d

    :catchall_9
    move-exception v0

    goto/16 :goto_1e

    :cond_12
    :try_start_16
    iget-object v7, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v10, v1, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/android/server/pm/PackageInstallerService;->allocateStageDirLegacy(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    :try_start_17
    iget-object v4, v4, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyPackage(Ljava/io/File;Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_13

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v4, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    :goto_18
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    move v5, v4

    goto/16 :goto_1d

    :cond_13
    :try_start_18
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v0

    new-instance v6, Ljava/io/File;

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v10, "lib"

    invoke-direct {v6, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    :try_start_19
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v7
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    :try_start_1a
    iget-object v10, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v10, :cond_14

    const/4 v10, 0x0

    goto :goto_19

    :cond_14
    iget-object v10, v10, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;

    :goto_19
    invoke-static {v7, v6, v10, v0}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_15

    const-string v0, "Failed to copy native libraries"

    invoke-virtual {v2, v4, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_5
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    goto :goto_1a

    :catchall_a
    move-exception v0

    move-object v4, v7

    goto :goto_1c

    :catch_5
    move-exception v0

    goto :goto_1b

    :cond_15
    :goto_1a
    :try_start_1b
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    goto :goto_18

    :catchall_b
    move-exception v0

    const/4 v4, 0x0

    goto :goto_1c

    :catch_6
    move-exception v0

    const/4 v7, 0x0

    :goto_1b
    :try_start_1c
    invoke-static {v5, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v5, -0x1

    invoke-direct {v0, v3, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    goto :goto_1a

    :goto_1c
    :try_start_1d
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :catch_7
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Failed to create copy file"

    const/4 v3, -0x4

    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_6

    :catch_8
    :cond_16
    :goto_1d
    iput v5, v1, Lcom/android/server/pm/InstallingSession;->mRet:I

    goto :goto_1f

    :goto_1e
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_17
    :goto_1f
    iget v0, v1, Lcom/android/server/pm/InstallingSession;->mRet:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_18

    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V

    :cond_18
    iget v0, v1, Lcom/android/server/pm/InstallingSession;->mRet:I

    iput v0, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mParentInstallingSession:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

    if-eqz v0, :cond_1e

    iget-object v1, v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_19

    goto :goto_22

    :cond_19
    iget-object v1, v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstallRequest;

    iget v2, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    if-nez v2, :cond_1b

    goto :goto_22

    :cond_1b
    const/4 v6, 0x1

    if-eq v2, v6, :cond_1a

    move v3, v2

    goto :goto_20

    :cond_1c
    const/4 v6, 0x1

    move v3, v6

    :goto_20
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/InstallRequest;

    iput v3, v4, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_1d
    iget-object v2, v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v3, v1}, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;ILjava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_22

    :cond_1e
    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v2, v4}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/InstallingSession;Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_22
    return-void
.end method

.method public final handleStartCopy(Lcom/android/server/pm/InstallRequest;)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    const/high16 v3, 0x20000

    and-int/2addr v3, v0

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iput v4, v1, Lcom/android/server/pm/InstallingSession;->mRet:I

    return-void

    :cond_0
    iget-object v3, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v7, v1, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v8, v7, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    invoke-static {v5, v6, v8, v0, v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v5

    iget v0, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    const/high16 v6, 0x200000

    and-int/2addr v6, v0

    if-eqz v6, :cond_1

    iget-wide v10, v1, Lcom/android/server/pm/InstallingSession;->mRequiredInstalledVersionCode:J

    invoke-virtual {v3, v5, v10, v11, v0}, Lcom/android/server/pm/PackageManagerService;->verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/android/server/pm/InstallingSession;->mRet:I

    if-eq v0, v4, :cond_1

    const-string v1, "Failed to verify version code"

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    return-void

    :cond_1
    iget v0, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    and-int/lit16 v0, v0, 0x800

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v6

    :goto_0
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    const-string/jumbo v10, "PackageManager"

    if-eqz v8, :cond_3

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "pkgLite for install: "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v8, v7, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    if-nez v8, :cond_7

    iget v12, v5, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_7

    iget-object v14, v1, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget v15, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mFreeStorageHelper:Lcom/android/server/pm/FreeStorageHelper;

    iget-object v13, v4, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v4, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v17

    new-instance v0, Ljava/io/File;

    iget-object v11, v7, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v19
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v20, v3

    :try_start_1
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v3

    invoke-static {v3, v0, v6}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/parsing/PackageLite;

    invoke-static {v0, v9}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J

    move-result-wide v21

    move-wide/from16 v23, v21

    move/from16 v22, v8

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_1
    move/from16 v22, v8

    goto :goto_2

    :cond_4
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v6

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v22, v8

    :try_start_2
    invoke-interface/range {v21 .. v21}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v8

    invoke-direct {v3, v6, v0, v8}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v20, v3

    goto :goto_1

    :goto_2
    const-string v3, "Failed to calculate installed size: "

    invoke-static {v0, v3, v10}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v23, -0x1

    :goto_3
    const-wide/16 v25, 0x0

    cmp-long v0, v23, v25

    if-ltz v0, :cond_6

    :try_start_3
    iget-object v3, v13, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v0, v3, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    iget-object v0, v13, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v6, v12

    add-long v12, v23, v17

    move-object/from16 v16, v3

    const/4 v3, 0x0

    const/4 v8, 0x0

    :try_start_5
    invoke-virtual {v0, v3, v12, v13, v8}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V

    iget-object v0, v4, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v14, v11, v15, v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0

    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v9, -0x6

    if-ne v4, v9, :cond_5

    const/4 v4, -0x1

    iput v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_5

    :catchall_0
    move-exception v0

    :goto_4
    move-object v4, v0

    goto :goto_6

    :cond_5
    :goto_5
    iget v0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_6 .. :try_end_6} :catch_3

    move v12, v0

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    move v6, v12

    const/4 v3, 0x0

    const/4 v8, 0x0

    goto :goto_4

    :goto_6
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    :try_start_8
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v4
    :try_end_8
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_4
    move-exception v0

    move v6, v12

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_8
    const-string v4, "Failed to free cache"

    invoke-static {v10, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :cond_6
    move v6, v12

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_9
    move v12, v6

    :goto_a
    iput v12, v5, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_b

    :cond_7
    move-object/from16 v20, v3

    move/from16 v22, v8

    const/4 v3, 0x0

    move v8, v6

    :goto_b
    iget-object v0, v5, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    iget v4, v5, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    iget v5, v5, Landroid/content/pm/PackageInfoLite;->installLocation:I

    if-eqz v22, :cond_a

    iget-object v6, v7, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    if-eqz v6, :cond_8

    iget v6, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    or-int/lit8 v6, v6, 0x10

    and-int/lit8 v6, v6, -0x9

    iput v6, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    goto :goto_c

    :cond_8
    iget-object v6, v7, Lcom/android/server/pm/OriginInfo;->mCid:Ljava/lang/String;

    if-eqz v6, :cond_9

    iget v6, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    or-int/lit8 v6, v6, 0x8

    and-int/lit8 v6, v6, -0x11

    iput v6, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    goto :goto_c

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid stage location"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_c
    if-gez v4, :cond_b

    invoke-static {v4}, Lcom/android/internal/content/InstallLocationUtils;->getInstallationErrorCode(I)I

    move-result v0

    goto/16 :goto_13

    :cond_b
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_c

    move-object v11, v3

    goto :goto_d

    :cond_c
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v11

    :goto_d
    if-eqz v11, :cond_d

    iget v3, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v6

    invoke-static {v5, v4, v3, v0, v6}, Lcom/android/internal/content/InstallLocationUtils;->installLocationPolicy(IIIZZ)I

    move-result v4

    :cond_d
    iget v0, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    goto :goto_e

    :cond_e
    move v3, v8

    :goto_e
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    goto :goto_f

    :cond_f
    move v5, v8

    :goto_f
    and-int/lit16 v6, v0, 0x800

    if-eqz v6, :cond_10

    const/4 v6, 0x1

    goto :goto_10

    :cond_10
    move v6, v8

    :goto_10
    const/16 v7, -0x13

    if-eqz v3, :cond_11

    if-eqz v5, :cond_11

    const-string v0, "Conflicting flags specified for installing on both internal and external"

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    move v0, v7

    goto :goto_13

    :cond_11
    if-eqz v5, :cond_12

    if-eqz v6, :cond_12

    const-string v0, "Conflicting flags specified for installing ephemeral on external"

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_12
    if-nez v3, :cond_14

    if-nez v5, :cond_14

    const/4 v3, 0x2

    if-ne v4, v3, :cond_13

    or-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, -0x11

    iput v0, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    goto :goto_12

    :cond_13
    or-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, -0x9

    iput v0, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    :cond_14
    :goto_12
    const/4 v0, 0x1

    :goto_13
    iput v0, v1, Lcom/android/server/pm/InstallingSession;->mRet:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const-string v1, "Failed to override installation location"

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    :cond_15
    return-void
.end method

.method public final installApexPackages(Ljava/util/List;)V
    .locals 9

    const-string v0, "Expected exactly one .apex file under "

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    iget-object v4, v1, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v4, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    iget v5, v4, Lcom/android/server/pm/InstallArgs;->mDevelopmentInstallFlags:I

    :goto_0
    and-int/2addr v5, v3

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    iget-object v6, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    :try_start_0
    iget-object v4, v4, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    :goto_2
    iget-object v4, v4, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_5

    array-length v8, v7

    if-ne v8, v3, :cond_4

    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mScanningPackageParserProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v4, v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;->produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/parsing/PackageParser2;
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, v6, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    aget-object v2, v7, v2

    check-cast v3, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v4, -0x6e

    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v5}, Landroid/apex/IApexService;->installAndActivatePackage(Ljava/lang/String;Z)Landroid/apex/ApexInfo;

    move-result-object v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-object v2, v1, Lcom/android/server/pm/InstallRequest;->mApexInfo:Landroid/apex/ApexInfo;

    iget-object v2, v2, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;

    const/4 v4, 0x1

    invoke-direct {v3, p0, p1, v4}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/InstallingSession;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :try_start_5
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v4, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_2
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "apexservice not available"

    invoke-direct {p0, v4, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    :try_start_6
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " got: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v7

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const/16 v0, -0x25

    invoke-direct {p1, p0, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a directory"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const/16 v0, -0x24

    invoke-direct {p1, p0, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_7
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_5
    const-string p1, "APEX installation failed"

    invoke-virtual {v1, p1, p0}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    invoke-virtual {v6, v1}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Only a non-staged install of a single APEX is supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final installStage()V
    .locals 5

    const-string/jumbo v0, "installStage"

    iput-object v0, p0, Lcom/android/server/pm/InstallingSession;->mTraceMethod:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/InstallingSession;->mTraceCookie:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-wide/32 v2, 0x40000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const-string/jumbo v0, "queueInstall"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "START INSTALL PACKAGE: observer{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    const-string/jumbo v2, "null"

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/pm/IPackageInstallObserver2;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\n          stagedDir{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v3, v1, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    if-eqz v4, :cond_1

    iget-object v1, v1, Lcom/android/server/pm/OriginInfo;->mCid:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v4, "          stagedCid{"

    invoke-static {v4, v1, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "          pkg{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\n          versionCode{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\n          Request from{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallingSession;I)V

    iget p0, p0, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    invoke-static {p0}, Lcom/samsung/android/server/pm/install/ThermalInstallThrottlingUtils;->getInstallDelayByThermal(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final installStage(Ljava/util/List;)V
    .locals 9

    new-instance v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;-><init>(Lcom/android/server/pm/InstallingSession;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    const-string/jumbo v2, "installStageMultiPackage"

    iput-object v2, p0, Lcom/android/server/pm/InstallingSession;->mTraceMethod:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/android/server/pm/InstallingSession;->mTraceCookie:I

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    const-wide/32 v4, 0x40000

    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const-string/jumbo v2, "queueInstall"

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "START INSTALL MULTI PACKAGE:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string/jumbo v5, "}\n"

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/InstallingSession;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "          observer{"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    const-string/jumbo v8, "null"

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/content/pm/IPackageInstallObserver2;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1

    :cond_0
    move-object v7, v8

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "          stagedDir{"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "          versionCode{"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/content/pm/parsing/PackageLite;->getVersionCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :cond_1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "          Request from{"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lcom/android/server/pm/InstallingSession;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "          pkg{"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v6, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v6}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;I)V

    iget p0, p0, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    invoke-static {p0}, Lcom/samsung/android/server/pm/install/ThermalInstallThrottlingUtils;->getInstallDelayByThermal(I)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final processApkInstallRequests(Ljava/util/List;Z)V
    .locals 13

    const/4 v1, 0x1

    if-nez p2, :cond_8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallRequest;

    iget v2, v0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    if-eq v2, v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    if-eqz v2, :cond_4

    iget-object v0, v0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz v5, :cond_2

    iget-object v5, v5, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v5, v2

    :goto_2
    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    :cond_3
    iget-object v0, v3, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v0, v4, v5, v2}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    invoke-static {v2}, Lcom/android/server/pm/AsecInstallHelper;->installOnExternalAsec(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v3, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/AsecInstallHelper;->extractCidFromCodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v0

    iget-object v2, v3, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    goto :goto_0

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/InstallRequest;

    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/InstallPackageHelper;->restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_3

    :cond_7
    return-void

    :cond_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/pm/AsecInstallHelper;->installOnExternalAsec(I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/AsecInstallHelper;->extractCidFromCodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    if-eq v3, v1, :cond_a

    invoke-static {v2}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    goto :goto_4

    :cond_a
    invoke-static {v2}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-static {v2, v0}, Lcom/android/server/pm/AsecInstallHelper;->setMountPath(Ljava/lang/String;Lcom/android/server/pm/InstallRequest;)V

    goto :goto_4

    :cond_b
    const/16 v2, -0x12

    const-string v3, "Error while mounting SdDir"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    goto :goto_4

    :cond_c
    iget-object p2, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v3, p2, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "installPackages"

    const-wide/32 v11, 0x40000

    invoke-static {v11, v12, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v6, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-direct {v6, p0}, Landroid/util/ArrayMap;-><init>(I)V

    new-instance p0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p0, p2}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    const-wide/16 v4, -0x1

    if-nez v0, :cond_d

    :goto_5
    move-wide v8, v4

    goto :goto_7

    :cond_d
    iget-object v2, v3, Lcom/android/server/pm/InstallPackageHelper;->mInternalLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_f

    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    const-class v8, Landroid/os/PowerManager;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_e

    const-string/jumbo v4, "installer:packages"

    invoke-virtual {v0, v1, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_c

    :cond_e
    const-string/jumbo p2, "PackageManager"

    const-string/jumbo v0, "Unable to obtain power manager while obtaining wake lock"

    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_5

    :cond_f
    :goto_6
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0xa1220

    int-to-long v8, p2

    mul-long/2addr v8, v4

    invoke-virtual {v0, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_7
    new-instance v10, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {v10, p2}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 p2, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {v2}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    new-instance v4, Lcom/android/server/criticalevents/nano/CriticalEventProto$InstallPackages;

    invoke-direct {v4}, Lcom/android/server/criticalevents/nano/CriticalEventProto$InstallPackages;-><init>()V

    invoke-virtual {v2, v4}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setInstallPackages(Lcom/android/server/criticalevents/nano/CriticalEventProto$InstallPackages;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-virtual {v0, v2}, Lcom/android/server/criticalevents/CriticalEventLog;->log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V

    invoke-virtual {v3, p1}, Lcom/android/server/pm/InstallPackageHelper;->prepareInstallPackages(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v3, p1, v6, p0, v10}, Lcom/android/server/pm/InstallPackageHelper;->scanInstallPackages(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v3, p1, p0}, Lcom/android/server/pm/InstallPackageHelper;->reconcileInstallPackages(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v4, :cond_10

    invoke-virtual {v3, p1, v6, p2, v10}, Lcom/android/server/pm/InstallPackageHelper;->completeInstallProcess(Ljava/util/List;Ljava/util/Map;ZLjava/util/Map;)V

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual {v3, p1, v7}, Lcom/android/server/pm/InstallPackageHelper;->doPostInstall(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    :goto_8
    invoke-virtual {v3, v8, v9}, Lcom/android/server/pm/InstallPackageHelper;->releaseWakeLock(J)V

    return-void

    :cond_10
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/pm/InstallPackageHelper;->renameAndUpdatePaths(Ljava/util/List;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz p0, :cond_11

    :try_start_3
    new-instance v2, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v5, p1

    :try_start_4
    invoke-direct/range {v2 .. v10}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/MoveInfo;JLjava/util/Map;)V

    invoke-virtual {v3, v4, v2}, Lcom/android/server/pm/InstallPackageHelper;->prepPerformDexoptIfNeeded(Ljava/util/List;Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    :goto_9
    move-object p0, v0

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v5, p1

    goto :goto_9

    :cond_11
    move-object v5, p1

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v5, p1

    move-object p0, v0

    move v1, p2

    goto :goto_b

    :goto_a
    invoke-virtual {v3, v5, v6, p2, v10}, Lcom/android/server/pm/InstallPackageHelper;->completeInstallProcess(Ljava/util/List;Ljava/util/Map;ZLjava/util/Map;)V

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual {v3, v5, v7}, Lcom/android/server/pm/InstallPackageHelper;->doPostInstall(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    goto :goto_8

    :goto_b
    if-nez v1, :cond_12

    invoke-virtual {v3, v5, v6, p2, v10}, Lcom/android/server/pm/InstallPackageHelper;->completeInstallProcess(Ljava/util/List;Ljava/util/Map;ZLjava/util/Map;)V

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual {v3, v5, v7}, Lcom/android/server/pm/InstallPackageHelper;->doPostInstall(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    invoke-virtual {v3, v8, v9}, Lcom/android/server/pm/InstallPackageHelper;->releaseWakeLock(J)V

    :cond_12
    throw p0

    :goto_c
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final processInstallRequests(Ljava/util/List;Z)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v4

    const/high16 v5, 0x20000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempted to do a multi package install of both APEXes and APKs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p2, :cond_4

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, v1}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/InstallingSession;Ljava/lang/Object;I)V

    const-string/jumbo p0, "installApexPackages"

    invoke-direct {p1, p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_4
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/InstallRequest;

    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    return-void

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstallingSession;->processApkInstallRequests(Ljava/util/List;Z)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InstallingSession{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object p0, p0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
