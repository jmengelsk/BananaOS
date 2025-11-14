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
    .registers 5

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
    .registers 22

    move-object/from16 v0, p12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object p7, p0, Lcom/android/server/pm/InstallingSession;->mUser:Landroid/os/UserHandle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_16

    new-instance p3, Lcom/android/server/pm/OriginInfo;

    invoke-direct {p3, p2, v2, v1, v3}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZLjava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    goto :goto_1d

    :cond_16
    new-instance p2, Lcom/android/server/pm/OriginInfo;

    invoke-direct {p2, v3, v2, v1, p3}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZLjava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    :goto_1d
    iput-object v3, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object p2, p6, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iget p3, p5, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    const-string/jumbo v4, "android.permission.INSTALL_PACKAGES"

    move v5, p9

    invoke-interface {v3, v4, p9}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_32

    goto :goto_49

    :cond_32
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-static {p9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_46

    move p3, v2

    goto :goto_49

    :cond_46
    if-ne p3, v2, :cond_49

    move p3, v1

    :cond_49
    :goto_49
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

    if-eqz p2, :cond_80

    invoke-virtual {p2}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result p2

    goto :goto_81

    :cond_80
    move p2, v1

    :goto_81
    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    iget-wide p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide p2, p0, Lcom/android/server/pm/InstallingSession;->mRequiredInstalledVersionCode:J

    iget p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mPackageSource:I

    move-object/from16 p2, p10

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_95

    move v1, v2

    :cond_95
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
    .registers 11

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
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v1, Lcom/android/server/pm/InstallingSession;->mRet:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2fb

    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    const/4 v4, 0x0

    const/16 v5, -0x6e

    const/4 v6, -0x2

    if-eqz v0, :cond_83

    :try_start_11
    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v0, v7, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1a
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_11 .. :try_end_1a} :catch_5d

    :try_start_1a
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
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_66

    if-nez v9, :cond_35

    goto :goto_3c

    :cond_35
    :try_start_35
    iget-object v9, v0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object/from16 v16, v8

    invoke-interface/range {v9 .. v16}, Landroid/os/IInstalld;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3c} :catch_5f
    .catchall {:try_start_35 .. :try_end_3c} :catchall_66

    :goto_3c
    :try_start_3c
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3f
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3c .. :try_end_3f} :catch_5d

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

    goto :goto_ae

    :catch_5d
    move-exception v0

    goto :goto_71

    :catch_5f
    move-exception v0

    :try_start_60
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    throw v4
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_66

    :goto_64
    move-object v8, v0

    goto :goto_68

    :catchall_66
    move-exception v0

    goto :goto_64

    :goto_68
    :try_start_68
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    goto :goto_70

    :catchall_6c
    move-exception v0

    :try_start_6d
    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_70
    throw v8
    :try_end_71
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_6d .. :try_end_71} :catch_5d

    :goto_71
    const-string v7, "Failed to move app"

    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v8, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4, v8}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    const-string/jumbo v4, "PackageManager"

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f4

    :cond_83
    iget v0, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    invoke-static {v0}, Lcom/android/server/pm/AsecInstallHelper;->installOnExternalAsec(I)Z

    move-result v0

    if-eqz v0, :cond_234

    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_9c

    move-object v8, v4

    goto :goto_9f

    :cond_9c
    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    move-object v8, v0

    :goto_9f
    iget-boolean v0, v8, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    if-eqz v0, :cond_b1

    iget-object v0, v8, Lcom/android/server/pm/OriginInfo;->mCid:Ljava/lang/String;

    if-eqz v0, :cond_b1

    invoke-static {v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/server/pm/AsecInstallHelper;->setMountPath(Ljava/lang/String;Lcom/android/server/pm/InstallRequest;)V

    :goto_ae
    move v5, v3

    goto/16 :goto_2f4

    :cond_b1
    iget-object v0, v7, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    const-string/jumbo v9, "smdl"

    iget-object v10, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v10

    :try_start_bb
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
    :try_end_d6
    .catchall {:try_start_bb .. :try_end_d6} :catchall_231

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    if-nez v0, :cond_f1

    iget-object v0, v8, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f1

    const-string v10, "/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v10, 0x4

    if-ne v0, v10, :cond_f1

    move v10, v3

    goto :goto_f2

    :cond_f1
    move v10, v9

    :goto_f2
    if-eqz v10, :cond_115

    :try_start_f4
    iget-object v0, v8, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v11, 0x1fd

    invoke-static {v0, v11}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_ff
    .catch Landroid/system/ErrnoException; {:try_start_f4 .. :try_end_ff} :catch_100

    goto :goto_115

    :catch_100
    move-exception v0

    const-string v7, "Failed to move app"

    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v8, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4, v8}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    const-string/jumbo v4, "PackageManager"

    const-string v6, "Failed to move app"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f4

    :cond_115
    :goto_115
    sget-object v5, Lcom/android/server/pm/AsecInstallHelper;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    monitor-enter v6

    :try_start_11a
    sget-object v0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->sInstance:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    if-nez v0, :cond_12b

    new-instance v0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v9, v0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    sput-object v0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->sInstance:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    goto :goto_12b

    :catchall_128
    move-exception v0

    goto/16 :goto_22f

    :cond_12b
    :goto_12b
    sget-object v11, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->sInstance:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    monitor-exit v6
    :try_end_12e
    .catchall {:try_start_11a .. :try_end_12e} :catchall_128

    iget-object v0, v7, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    iget-object v6, v11, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mUnbindingRunnable:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;

    if-nez v6, :cond_137

    goto :goto_13c

    :cond_137
    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v4, v11, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mUnbindingRunnable:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;

    :goto_13c
    iget-object v0, v11, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    if-eqz v0, :cond_142

    :goto_140
    move-object v3, v11

    goto :goto_18d

    :cond_142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v6, Lcom/android/server/pm/AsecInstallHelper;->CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    monitor-enter v11

    :try_start_14e
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v11, v3, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, v11, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    if-eqz v0, :cond_178

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x1388

    add-long v14, v14, v16

    :goto_160
    iget-object v0, v11, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    if-nez v0, :cond_178

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16
    :try_end_168
    .catchall {:try_start_14e .. :try_end_168} :catchall_174

    cmp-long v0, v16, v14

    if-gez v0, :cond_178

    const-wide/16 v3, 0x64

    :try_start_16e
    invoke-virtual {v11, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_171
    .catch Ljava/lang/InterruptedException; {:try_start_16e .. :try_end_171} :catch_171
    .catchall {:try_start_16e .. :try_end_171} :catchall_174

    :catch_171
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_160

    :catchall_174
    move-exception v0

    move-object v3, v11

    goto/16 :goto_22b

    :cond_178
    :try_start_178
    monitor-exit v11
    :try_end_179
    .catchall {:try_start_178 .. :try_end_179} :catchall_174

    iget-boolean v0, v11, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    if-nez v0, :cond_182

    iget-object v0, v11, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    if-eqz v0, :cond_182

    goto :goto_140

    :cond_182
    monitor-enter v11

    :try_start_183
    invoke-virtual {v5, v11}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v9, v11, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    const/4 v3, 0x0

    iput-object v3, v11, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    monitor-exit v11
    :try_end_18c
    .catchall {:try_start_183 .. :try_end_18c} :catchall_225

    goto :goto_140

    :goto_18d
    iget-object v11, v3, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    const/16 v4, -0x12

    if-nez v11, :cond_196

    :cond_193
    move v5, v4

    goto/16 :goto_202

    :cond_196
    :try_start_196
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_19c

    const/4 v0, 0x0

    goto :goto_19e

    :cond_19c
    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    :goto_19e
    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1b2

    const/4 v15, 0x1

    goto :goto_1b3

    :cond_1b2
    move v15, v9

    :goto_1b3
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_1b9

    const/4 v0, 0x0

    goto :goto_1bb

    :cond_1b9
    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;

    :goto_1bb
    sget-boolean v6, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    const-string v6, "-"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c8

    const/16 v16, 0x0

    goto :goto_1ca

    :cond_1c8
    move-object/from16 v16, v0

    :goto_1ca
    invoke-interface/range {v11 .. v16}, Lcom/samsung/android/core/pm/containerservice/IContainerService;->copyPackageToContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1ce
    .catch Landroid/os/RemoteException; {:try_start_196 .. :try_end_1ce} :catch_1e4
    .catchall {:try_start_196 .. :try_end_1ce} :catchall_1e2

    iget-object v6, v7, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;

    invoke-direct {v9, v11}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/core/pm/containerservice/IContainerService;)V

    invoke-virtual {v6, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v6, v7, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v6}, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->scheduleAutoUnbound(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_1fc

    :catchall_1e2
    move-exception v0

    goto :goto_211

    :catch_1e4
    move-exception v0

    :try_start_1e5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1e8
    .catchall {:try_start_1e5 .. :try_end_1e8} :catchall_1e2

    iget-object v0, v7, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;

    invoke-direct {v6, v11}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/core/pm/containerservice/IContainerService;)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v7, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v0}, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->scheduleAutoUnbound(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v0, 0x0

    :goto_1fc
    if-eqz v0, :cond_193

    invoke-static {v0, v2}, Lcom/android/server/pm/AsecInstallHelper;->setMountPath(Ljava/lang/String;Lcom/android/server/pm/InstallRequest;)V

    const/4 v5, 0x1

    :goto_202
    if-eqz v10, :cond_2f4

    :try_start_204
    iget-object v0, v8, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1f9

    invoke-static {v0, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_20f
    .catch Landroid/system/ErrnoException; {:try_start_204 .. :try_end_20f} :catch_2f4

    goto/16 :goto_2f4

    :goto_211
    iget-object v1, v7, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v11}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/core/pm/containerservice/IContainerService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v7, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v1}, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->scheduleAutoUnbound(Landroid/content/Context;Landroid/os/Handler;)V

    throw v0

    :catchall_225
    move-exception v0

    move-object v3, v11

    :goto_227
    :try_start_227
    monitor-exit v3
    :try_end_228
    .catchall {:try_start_227 .. :try_end_228} :catchall_229

    throw v0

    :catchall_229
    move-exception v0

    goto :goto_227

    :goto_22b
    :try_start_22b
    monitor-exit v3
    :try_end_22c
    .catchall {:try_start_22b .. :try_end_22c} :catchall_22d

    throw v0

    :catchall_22d
    move-exception v0

    goto :goto_22b

    :goto_22f
    :try_start_22f
    monitor-exit v6
    :try_end_230
    .catchall {:try_start_22f .. :try_end_230} :catchall_128

    throw v0

    :catchall_231
    move-exception v0

    :try_start_232
    monitor-exit v10
    :try_end_233
    .catchall {:try_start_232 .. :try_end_233} :catchall_231

    throw v0

    :cond_234
    const-string v3, "Copying native libraries failed"

    const-string v0, "Failed to copy package"

    iget-object v4, v1, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    const-string/jumbo v5, "PackageManager"

    const-string v6, "Failed to create copy file: "

    const-string/jumbo v7, "copyApk"

    const-wide/32 v8, 0x40000

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_248
    iget-boolean v7, v4, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    if-eqz v7, :cond_25a

    iget-object v0, v4, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V
    :try_end_251
    .catchall {:try_start_248 .. :try_end_251} :catchall_257

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v5, 0x1

    goto/16 :goto_2f4

    :catchall_257
    move-exception v0

    goto/16 :goto_2f7

    :cond_25a
    :try_start_25a
    iget-object v7, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v10, v1, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/android/server/pm/PackageInstallerService;->allocateStageDirLegacy(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V
    :try_end_267
    .catch Ljava/io/IOException; {:try_start_25a .. :try_end_267} :catch_2d9
    .catchall {:try_start_25a .. :try_end_267} :catchall_257

    :try_start_267
    iget-object v4, v4, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyPackage(Ljava/io/File;Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_284

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v4, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V
    :try_end_27e
    .catchall {:try_start_267 .. :try_end_27e} :catchall_257

    :goto_27e
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    move v5, v4

    goto/16 :goto_2f4

    :cond_284
    :try_start_284
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
    :try_end_29c
    .catchall {:try_start_284 .. :try_end_29c} :catchall_257

    :try_start_29c
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v7
    :try_end_2a4
    .catch Ljava/io/IOException; {:try_start_29c .. :try_end_2a4} :catch_2c5
    .catchall {:try_start_29c .. :try_end_2a4} :catchall_2c2

    :try_start_2a4
    iget-object v10, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v10, :cond_2aa

    const/4 v10, 0x0

    goto :goto_2ac

    :cond_2aa
    iget-object v10, v10, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;

    :goto_2ac
    invoke-static {v7, v6, v10, v0}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_2be

    const-string v0, "Failed to copy native libraries"

    invoke-virtual {v2, v4, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V
    :try_end_2b8
    .catch Ljava/io/IOException; {:try_start_2a4 .. :try_end_2b8} :catch_2bc
    .catchall {:try_start_2a4 .. :try_end_2b8} :catchall_2b9

    goto :goto_2be

    :catchall_2b9
    move-exception v0

    move-object v4, v7

    goto :goto_2d5

    :catch_2bc
    move-exception v0

    goto :goto_2c7

    :cond_2be
    :goto_2be
    :try_start_2be
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2c1
    .catchall {:try_start_2be .. :try_end_2c1} :catchall_257

    goto :goto_27e

    :catchall_2c2
    move-exception v0

    const/4 v4, 0x0

    goto :goto_2d5

    :catch_2c5
    move-exception v0

    const/4 v7, 0x0

    :goto_2c7
    :try_start_2c7
    invoke-static {v5, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v5, -0x1

    invoke-direct {v0, v3, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    :try_end_2d4
    .catchall {:try_start_2c7 .. :try_end_2d4} :catchall_2b9

    goto :goto_2be

    :goto_2d5
    :try_start_2d5
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :catch_2d9
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
    :try_end_2ef
    .catchall {:try_start_2d5 .. :try_end_2ef} :catchall_257

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_ae

    :catch_2f4
    :cond_2f4
    :goto_2f4
    iput v5, v1, Lcom/android/server/pm/InstallingSession;->mRet:I

    goto :goto_2fb

    :goto_2f7
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_2fb
    :goto_2fb
    iget v0, v1, Lcom/android/server/pm/InstallingSession;->mRet:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_314

    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V

    :cond_314
    iget v0, v1, Lcom/android/server/pm/InstallingSession;->mRet:I

    iput v0, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mParentInstallingSession:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

    if-eqz v0, :cond_38a

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

    if-eq v1, v2, :cond_336

    goto :goto_397

    :cond_336
    iget-object v1, v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_354

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstallRequest;

    iget v2, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    if-nez v2, :cond_34f

    goto :goto_397

    :cond_34f
    const/4 v6, 0x1

    if-eq v2, v6, :cond_33e

    move v3, v2

    goto :goto_356

    :cond_354
    const/4 v6, 0x1

    move v3, v6

    :goto_356
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

    :goto_36b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/InstallRequest;

    iput v3, v4, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36b

    :cond_37d
    iget-object v2, v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v3, v1}, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;ILjava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_397

    :cond_38a
    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v2, v4}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/InstallingSession;Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_397
    return-void
.end method

.method public final handleStartCopy(Lcom/android/server/pm/InstallRequest;)V
    .registers 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    const/high16 v3, 0x20000

    and-int/2addr v3, v0

    const/4 v4, 0x1

    if-eqz v3, :cond_f

    iput v4, v1, Lcom/android/server/pm/InstallingSession;->mRet:I

    return-void

    :cond_f
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

    if-eqz v6, :cond_3e

    iget-wide v10, v1, Lcom/android/server/pm/InstallingSession;->mRequiredInstalledVersionCode:J

    invoke-virtual {v3, v5, v10, v11, v0}, Lcom/android/server/pm/PackageManagerService;->verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/android/server/pm/InstallingSession;->mRet:I

    if-eq v0, v4, :cond_3e

    const-string v1, "Failed to verify version code"

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    return-void

    :cond_3e
    iget v0, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    and-int/lit16 v0, v0, 0x800

    const/4 v6, 0x0

    if-eqz v0, :cond_47

    move v0, v4

    goto :goto_48

    :cond_47
    move v0, v6

    :goto_48
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    const-string/jumbo v10, "PackageManager"

    if-eqz v8, :cond_63

    if-eqz v0, :cond_63

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "pkgLite for install: "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    iget-boolean v8, v7, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    if-nez v8, :cond_128

    iget v12, v5, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_128

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

    :try_start_89
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v19
    :try_end_8d
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_89 .. :try_end_8d} :catch_c8
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8d} :catch_c8

    move-object/from16 v20, v3

    :try_start_8f
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v3

    invoke-static {v3, v0, v6}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-nez v3, :cond_b0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/parsing/PackageLite;

    invoke-static {v0, v9}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J

    move-result-wide v21

    move-wide/from16 v23, v21

    move/from16 v22, v8

    goto :goto_d3

    :catch_ac
    move-exception v0

    :goto_ad
    move/from16 v22, v8

    goto :goto_cc

    :cond_b0
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v6

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_bc
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_8f .. :try_end_bc} :catch_ac
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_bc} :catch_ac

    move/from16 v22, v8

    :try_start_be
    invoke-interface/range {v21 .. v21}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v8

    invoke-direct {v3, v6, v0, v8}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_c6
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_be .. :try_end_c6} :catch_c6
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c6} :catch_c6

    :catch_c6
    move-exception v0

    goto :goto_cc

    :catch_c8
    move-exception v0

    move-object/from16 v20, v3

    goto :goto_ad

    :goto_cc
    const-string v3, "Failed to calculate installed size: "

    invoke-static {v0, v3, v10}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v23, -0x1

    :goto_d3
    const-wide/16 v25, 0x0

    cmp-long v0, v23, v25

    if-ltz v0, :cond_121

    :try_start_d9
    iget-object v3, v13, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v0, v3, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_e0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_d9 .. :try_end_e0} :catch_117

    :try_start_e0
    iget-object v0, v13, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_e2
    .catchall {:try_start_e0 .. :try_end_e2} :catchall_107

    move v6, v12

    add-long v12, v23, v17

    move-object/from16 v16, v3

    const/4 v3, 0x0

    const/4 v8, 0x0

    :try_start_e9
    invoke-virtual {v0, v3, v12, v13, v8}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V

    iget-object v0, v4, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v14, v11, v15, v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0

    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v9, -0x6

    if-ne v4, v9, :cond_fe

    const/4 v4, -0x1

    iput v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_fe

    :catchall_fb
    move-exception v0

    :goto_fc
    move-object v4, v0

    goto :goto_10e

    :cond_fe
    :goto_fe
    iget v0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I
    :try_end_100
    .catchall {:try_start_e9 .. :try_end_100} :catchall_fb

    :try_start_100
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_103
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_100 .. :try_end_103} :catch_105

    move v12, v0

    goto :goto_125

    :catch_105
    move-exception v0

    goto :goto_11b

    :catchall_107
    move-exception v0

    move-object/from16 v16, v3

    move v6, v12

    const/4 v3, 0x0

    const/4 v8, 0x0

    goto :goto_fc

    :goto_10e
    :try_start_10e
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_111
    .catchall {:try_start_10e .. :try_end_111} :catchall_112

    goto :goto_116

    :catchall_112
    move-exception v0

    :try_start_113
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_116
    throw v4
    :try_end_117
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_113 .. :try_end_117} :catch_105

    :catch_117
    move-exception v0

    move v6, v12

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_11b
    const-string v4, "Failed to free cache"

    invoke-static {v10, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_124

    :cond_121
    move v6, v12

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_124
    move v12, v6

    :goto_125
    iput v12, v5, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_12e

    :cond_128
    move-object/from16 v20, v3

    move/from16 v22, v8

    const/4 v3, 0x0

    move v8, v6

    :goto_12e
    iget-object v0, v5, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    iget v4, v5, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    iget v5, v5, Landroid/content/pm/PackageInfoLite;->installLocation:I

    if-eqz v22, :cond_158

    iget-object v6, v7, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    if-eqz v6, :cond_143

    iget v6, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    or-int/lit8 v6, v6, 0x10

    and-int/lit8 v6, v6, -0x9

    iput v6, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    goto :goto_158

    :cond_143
    iget-object v6, v7, Lcom/android/server/pm/OriginInfo;->mCid:Ljava/lang/String;

    if-eqz v6, :cond_150

    iget v6, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    or-int/lit8 v6, v6, 0x8

    and-int/lit8 v6, v6, -0x11

    iput v6, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    goto :goto_158

    :cond_150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid stage location"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_158
    :goto_158
    if-gez v4, :cond_160

    invoke-static {v4}, Lcom/android/internal/content/InstallLocationUtils;->getInstallationErrorCode(I)I

    move-result v0

    goto/16 :goto_1c3

    :cond_160
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_16c

    move-object v11, v3

    goto :goto_170

    :cond_16c
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v11

    :goto_170
    if-eqz v11, :cond_180

    iget v3, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v6

    invoke-static {v5, v4, v3, v0, v6}, Lcom/android/internal/content/InstallLocationUtils;->installLocationPolicy(IIIZZ)I

    move-result v4

    :cond_180
    iget v0, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_188

    const/4 v3, 0x1

    goto :goto_189

    :cond_188
    move v3, v8

    :goto_189
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_18f

    const/4 v5, 0x1

    goto :goto_190

    :cond_18f
    move v5, v8

    :goto_190
    and-int/lit16 v6, v0, 0x800

    if-eqz v6, :cond_196

    const/4 v6, 0x1

    goto :goto_197

    :cond_196
    move v6, v8

    :goto_197
    const/16 v7, -0x13

    if-eqz v3, :cond_1a4

    if-eqz v5, :cond_1a4

    const-string v0, "Conflicting flags specified for installing on both internal and external"

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a2
    move v0, v7

    goto :goto_1c3

    :cond_1a4
    if-eqz v5, :cond_1ae

    if-eqz v6, :cond_1ae

    const-string v0, "Conflicting flags specified for installing ephemeral on external"

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a2

    :cond_1ae
    if-nez v3, :cond_1c2

    if-nez v5, :cond_1c2

    const/4 v3, 0x2

    if-ne v4, v3, :cond_1bc

    or-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, -0x11

    iput v0, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    goto :goto_1c2

    :cond_1bc
    or-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, -0x9

    iput v0, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    :cond_1c2
    :goto_1c2
    const/4 v0, 0x1

    :goto_1c3
    iput v0, v1, Lcom/android/server/pm/InstallingSession;->mRet:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1cd

    const-string v1, "Failed to override installation location"

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    :cond_1cd
    return-void
.end method

.method public final installApexPackages(Ljava/util/List;)V
    .registers 11

    const-string v0, "Expected exactly one .apex file under "

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    return-void

    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_de

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    iget-object v4, v1, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v4, :cond_20

    move v5, v2

    goto :goto_22

    :cond_20
    iget v5, v4, Lcom/android/server/pm/InstallArgs;->mDevelopmentInstallFlags:I

    :goto_22
    and-int/2addr v5, v3

    if-eqz v5, :cond_27

    move v5, v3

    goto :goto_28

    :cond_27
    move v5, v2

    :goto_28
    iget-object v6, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    if-nez v4, :cond_2e

    const/4 v4, 0x0

    goto :goto_30

    :cond_2e
    :try_start_2e
    iget-object v4, v4, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    :goto_30
    iget-object v4, v4, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_b5

    array-length v8, v7

    if-ne v8, v3, :cond_94

    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mScanningPackageParserProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v4, v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;->produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/parsing/PackageParser2;
    :try_end_47
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2e .. :try_end_47} :catch_73

    :try_start_47
    iget-object v3, v6, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    aget-object v2, v7, v2

    check-cast v3, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_75

    const/16 v4, -0x6e

    :try_start_52
    invoke-virtual {v3}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v5}, Landroid/apex/IApexService;->installAndActivatePackage(Ljava/lang/String;Z)Landroid/apex/ApexInfo;

    move-result-object v2
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5e} :catch_82
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5e} :catch_77
    .catchall {:try_start_52 .. :try_end_5e} :catchall_75

    :try_start_5e
    iput-object v2, v1, Lcom/android/server/pm/InstallRequest;->mApexInfo:Landroid/apex/ApexInfo;

    iget-object v2, v2, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;

    const/4 v4, 0x1

    invoke-direct {v3, p0, p1, v4}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/InstallingSession;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6f
    .catchall {:try_start_5e .. :try_end_6f} :catchall_75

    :try_start_6f
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_72
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_6f .. :try_end_72} :catch_73

    return-void

    :catch_73
    move-exception p0

    goto :goto_d2

    :catchall_75
    move-exception p0

    goto :goto_8b

    :catch_77
    move-exception p0

    :try_start_78
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v4, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_82
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "apexservice not available"

    invoke-direct {p0, v4, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_8b
    .catchall {:try_start_78 .. :try_end_8b} :catchall_75

    :goto_8b
    :try_start_8b
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_8f

    goto :goto_93

    :catchall_8f
    move-exception p1

    :try_start_90
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_93
    throw p0

    :cond_94
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

    :cond_b5
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
    :try_end_d2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_90 .. :try_end_d2} :catch_73

    :goto_d2
    const-string p1, "APEX installation failed"

    invoke-virtual {v1, p1, p0}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    invoke-virtual {v6, v1}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    return-void

    :cond_de
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Only a non-staged install of a single APEX is supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final installStage()V
    .registers 6

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

    if-eqz v1, :cond_37

    invoke-interface {v1}, Landroid/content/pm/IPackageInstallObserver2;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_38

    :cond_37
    move-object v1, v2

    :goto_38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\n          stagedDir{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v3, v1, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    if-eqz v4, :cond_5d

    iget-object v1, v1, Lcom/android/server/pm/OriginInfo;->mCid:Ljava/lang/String;

    if-eqz v1, :cond_5d

    const-string v4, "          stagedCid{"

    invoke-static {v4, v1, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5f

    :cond_5d
    const-string v1, ""

    :goto_5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "          pkg{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-eqz v1, :cond_70

    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_71

    :cond_70
    move-object v1, v2

    :goto_71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\n          versionCode{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-eqz v1, :cond_86

    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_86
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
    .registers 11

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

    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string/jumbo v5, "}\n"

    if-eqz v4, :cond_bc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/InstallingSession;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "          observer{"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    const-string/jumbo v8, "null"

    if-eqz v7, :cond_5c

    invoke-interface {v7}, Landroid/content/pm/IPackageInstallObserver2;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_5d

    :cond_5c
    move-object v7, v8

    :goto_5d
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

    if-eqz v7, :cond_95

    invoke-virtual {v7}, Landroid/content/pm/parsing/PackageLite;->getVersionCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :cond_95
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

    goto/16 :goto_36

    :cond_bc
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_c3
    if-ge v4, v3, :cond_e8

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

    goto :goto_c3

    :cond_e8
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
    .registers 16

    const/4 v1, 0x1

    if-nez p2, :cond_86

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallRequest;

    iget v2, v0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    if-eq v2, v1, :cond_7

    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    if-eqz v2, :cond_44

    iget-object v0, v0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    const/4 v2, 0x0

    if-eqz v0, :cond_2b

    iget-object v4, v0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz v4, :cond_2b

    iget-object v4, v4, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    goto :goto_2c

    :cond_2b
    move-object v4, v2

    :goto_2c
    if-eqz v0, :cond_35

    iget-object v5, v0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz v5, :cond_35

    iget-object v5, v5, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    goto :goto_36

    :cond_35
    move-object v5, v2

    :goto_36
    if-eqz v0, :cond_3e

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz v0, :cond_3e

    iget-object v2, v0, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    :cond_3e
    iget-object v0, v3, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v0, v4, v5, v2}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_44
    iget v2, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    invoke-static {v2}, Lcom/android/server/pm/AsecInstallHelper;->installOnExternalAsec(I)Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, v3, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/AsecInstallHelper;->extractCidFromCodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    goto :goto_7

    :cond_63
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v0

    iget-object v2, v3, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    goto :goto_7

    :cond_6d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_71
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_85

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/InstallRequest;

    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/InstallPackageHelper;->restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_71

    :cond_85
    return-void

    :cond_86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8a
    :goto_8a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/pm/AsecInstallHelper;->installOnExternalAsec(I)Z

    move-result v2

    if-eqz v2, :cond_8a

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

    if-eq v3, v1, :cond_bb

    invoke-static {v2}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    goto :goto_8a

    :cond_bb
    invoke-static {v2}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8a

    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d1

    invoke-static {v2, v0}, Lcom/android/server/pm/AsecInstallHelper;->setMountPath(Ljava/lang/String;Lcom/android/server/pm/InstallRequest;)V

    goto :goto_8a

    :cond_d1
    const/16 v2, -0x12

    const-string v3, "Error while mounting SdDir"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    goto :goto_8a

    :cond_d9
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

    if-nez v0, :cond_10b

    :goto_109
    move-wide v8, v4

    goto :goto_147

    :cond_10b
    iget-object v2, v3, Lcom/android/server/pm/InstallPackageHelper;->mInternalLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_10e
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_137

    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    const-class v8, Landroid/os/PowerManager;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_12c

    const-string/jumbo v4, "installer:packages"

    invoke-virtual {v0, v1, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_137

    :catchall_128
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1c6

    :cond_12c
    const-string/jumbo p2, "PackageManager"

    const-string/jumbo v0, "Unable to obtain power manager while obtaining wake lock"

    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_109

    :cond_137
    :goto_137
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0xa1220

    int-to-long v8, p2

    mul-long/2addr v8, v4

    invoke-virtual {v0, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    monitor-exit v2
    :try_end_146
    .catchall {:try_start_10e .. :try_end_146} :catchall_128

    goto :goto_109

    :goto_147
    new-instance v10, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {v10, p2}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 p2, 0x0

    :try_start_151
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

    if-eqz v0, :cond_1a0

    invoke-virtual {v3, p1, v6, p0, v10}, Lcom/android/server/pm/InstallPackageHelper;->scanInstallPackages(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    invoke-virtual {v3, p1, p0}, Lcom/android/server/pm/InstallPackageHelper;->reconcileInstallPackages(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4
    :try_end_178
    .catchall {:try_start_151 .. :try_end_178} :catchall_1a2

    if-nez v4, :cond_18a

    invoke-virtual {v3, p1, v6, p2, v10}, Lcom/android/server/pm/InstallPackageHelper;->completeInstallProcess(Ljava/util/List;Ljava/util/Map;ZLjava/util/Map;)V

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual {v3, p1, v7}, Lcom/android/server/pm/InstallPackageHelper;->doPostInstall(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    :goto_186
    invoke-virtual {v3, v8, v9}, Lcom/android/server/pm/InstallPackageHelper;->releaseWakeLock(J)V

    return-void

    :cond_18a
    :try_start_18a
    invoke-virtual {v3, p1}, Lcom/android/server/pm/InstallPackageHelper;->renameAndUpdatePaths(Ljava/util/List;)Z

    move-result p0
    :try_end_18e
    .catchall {:try_start_18a .. :try_end_18e} :catchall_1a2

    if-eqz p0, :cond_1a0

    :try_start_190
    new-instance v2, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;
    :try_end_192
    .catchall {:try_start_190 .. :try_end_192} :catchall_19d

    move-object v5, p1

    :try_start_193
    invoke-direct/range {v2 .. v10}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/MoveInfo;JLjava/util/Map;)V

    invoke-virtual {v3, v4, v2}, Lcom/android/server/pm/InstallPackageHelper;->prepPerformDexoptIfNeeded(Ljava/util/List;Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;)V
    :try_end_199
    .catchall {:try_start_193 .. :try_end_199} :catchall_19a

    return-void

    :catchall_19a
    move-exception v0

    :goto_19b
    move-object p0, v0

    goto :goto_1b4

    :catchall_19d
    move-exception v0

    move-object v5, p1

    goto :goto_19b

    :cond_1a0
    move-object v5, p1

    goto :goto_1a7

    :catchall_1a2
    move-exception v0

    move-object v5, p1

    move-object p0, v0

    move v1, p2

    goto :goto_1b4

    :goto_1a7
    invoke-virtual {v3, v5, v6, p2, v10}, Lcom/android/server/pm/InstallPackageHelper;->completeInstallProcess(Ljava/util/List;Ljava/util/Map;ZLjava/util/Map;)V

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual {v3, v5, v7}, Lcom/android/server/pm/InstallPackageHelper;->doPostInstall(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    goto :goto_186

    :goto_1b4
    if-nez v1, :cond_1c5

    invoke-virtual {v3, v5, v6, p2, v10}, Lcom/android/server/pm/InstallPackageHelper;->completeInstallProcess(Ljava/util/List;Ljava/util/Map;ZLjava/util/Map;)V

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual {v3, v5, v7}, Lcom/android/server/pm/InstallPackageHelper;->doPostInstall(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    invoke-virtual {v3, v8, v9}, Lcom/android/server/pm/InstallPackageHelper;->releaseWakeLock(J)V

    :cond_1c5
    throw p0

    :goto_1c6
    :try_start_1c6
    monitor-exit v2
    :try_end_1c7
    .catchall {:try_start_1c6 .. :try_end_1c7} :catchall_128

    throw p0
.end method

.method public final processInstallRequests(Ljava/util/List;Z)V
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v4

    const/high16 v5, 0x20000

    and-int/2addr v4, v5

    if-eqz v4, :cond_27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_27
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_40

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_40

    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempted to do a multi package install of both APEXes and APKs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    :goto_40
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_67

    if-eqz p2, :cond_5a

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, v1}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/InstallingSession;Ljava/lang/Object;I)V

    const-string/jumbo p0, "installApexPackages"

    invoke-direct {p1, p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_5a
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/InstallRequest;

    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    return-void

    :cond_67
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstallingSession;->processApkInstallRequests(Ljava/util/List;Z)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

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
