.class public final Lcom/android/server/pm/InstallRequest;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mApexInfo:Landroid/apex/ApexInfo;

.field public mApexModuleName:Ljava/lang/String;

.field public mAppId:I

.field public mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

.field public mClearCodeCache:Z

.field public final mDependencyInstallerEnabled:Z

.field public mDisabledPs:Lcom/android/server/pm/PackageSetting;

.field public mFirstTimeBroadcastInstantUserIds:[I

.field public mFirstTimeBroadcastUserIds:[I

.field public mFreezer:Lcom/android/server/pm/PackageFreezer;

.field public final mHasAppMetadataFileFromInstaller:Z

.field public final mInstallArgs:Lcom/android/server/pm/InstallArgs;

.field public final mInstallerUidForInstallExisting:I

.field public mInternalErrorCode:I

.field public final mIsInstallForUsers:Z

.field public final mIsInstallInherit:Z

.field public mKeepArtProfile:Z

.field public mLibraryConsumers:Ljava/util/ArrayList;

.field public final mMissingSharedLibraryCount:I

.field public mName:Ljava/lang/String;

.field public mNewUsers:[I

.field public mOrigPackage:Ljava/lang/String;

.field public mOrigPermission:Ljava/lang/String;

.field public mOrigUsers:[I

.field public mOriginalPs:Lcom/android/server/pm/PackageSetting;

.field public final mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field public final mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

.field public mParseFlags:I

.field public mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

.field public mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

.field public mPostInstallRunnable:Ljava/lang/Runnable;

.field public final mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

.field public mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

.field public mReplace:Z

.field public final mRequireUserAction:I

.field public mResponsibleInstallerTitles:Landroid/util/SparseArray;

.field public mReturnCode:I

.field public mReturnMsg:Ljava/lang/String;

.field public mScanFlags:I

.field public mScanResult:Lcom/android/server/pm/ScanResult;

.field public final mSessionId:I

.field public mSpegProfileGenerated:Z

.field public mSpqrProfileGenerated:Z

.field public mSystem:Z

.field public mUpdateBroadcastInstantUserIds:[I

.field public mUpdateBroadcastUserIds:[I

.field public final mUserId:I

.field public final mWarnings:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(ILcom/android/server/pm/pkg/AndroidPackage;[ILcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;IIZ)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mKeepArtProfile:Z

    iput p1, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    iput-object p2, p0, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    iput-object p3, p0, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    iput-object p4, p0, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    new-instance p2, Lcom/android/server/pm/PackageMetrics;

    invoke-direct {p2, p0}, Lcom/android/server/pm/PackageMetrics;-><init>(Lcom/android/server/pm/InstallRequest;)V

    iput-object p2, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    iput-boolean p1, p0, Lcom/android/server/pm/InstallRequest;->mIsInstallForUsers:Z

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    iput p5, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    iput p6, p0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    iput-boolean p7, p0, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mHasAppMetadataFileFromInstaller:Z

    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mDependencyInstallerEnabled:Z

    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mMissingSharedLibraryCount:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ScanResult;Lcom/android/server/pm/PackageSetting;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mKeepArtProfile:Z

    if-eqz p4, :cond_25

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p4

    iput p4, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    goto :goto_27

    :cond_25
    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    :goto_27
    const/4 p4, 0x0

    iput-object p4, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iput-object p4, p0, Lcom/android/server/pm/InstallRequest;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    iput p2, p0, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    iput p3, p0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    iput-object p5, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iput-object p4, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    iput-object p6, p0, Lcom/android/server/pm/InstallRequest;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mHasAppMetadataFileFromInstaller:Z

    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mDependencyInstallerEnabled:Z

    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mMissingSharedLibraryCount:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/InstallingSession;)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    sget-object v3, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/pm/InstallRequest;->mKeepArtProfile:Z

    iget-object v2, v1, Lcom/android/server/pm/InstallingSession;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    new-instance v3, Lcom/android/server/pm/InstallArgs;

    iget-object v6, v1, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    iget v7, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    iget-object v12, v1, Lcom/android/server/pm/InstallingSession;->mPermissionStates:Landroid/util/ArrayMap;

    iget-object v13, v1, Lcom/android/server/pm/InstallingSession;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    iget-object v15, v1, Lcom/android/server/pm/InstallingSession;->mTraceMethod:Ljava/lang/String;

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mTraceCookie:I

    iget-object v4, v1, Lcom/android/server/pm/InstallingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iget v5, v1, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    iget v8, v1, Lcom/android/server/pm/InstallingSession;->mPackageSource:I

    move-object/from16 v17, v4

    iget-object v4, v1, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    move/from16 v21, v5

    iget-object v5, v1, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    move/from16 v22, v8

    iget v8, v1, Lcom/android/server/pm/InstallingSession;->mDevelopmentInstallFlags:I

    iget-object v9, v1, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v10, v1, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    iget v14, v1, Lcom/android/server/pm/InstallingSession;->mAutoRevokePermissionsMode:I

    move/from16 v16, v2

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mInstallReason:I

    move/from16 v18, v2

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mInstallScenario:I

    move/from16 v19, v2

    iget-boolean v2, v1, Lcom/android/server/pm/InstallingSession;->mForceQueryableOverride:Z

    move/from16 v20, v2

    iget-boolean v2, v1, Lcom/android/server/pm/InstallingSession;->mApplicationEnabledSettingPersistent:Z

    move/from16 v23, v2

    iget-object v2, v1, Lcom/android/server/pm/InstallingSession;->mDexoptCompilerFilter:Ljava/lang/String;

    move-object/from16 v24, v2

    invoke-direct/range {v3 .. v24}, Lcom/android/server/pm/InstallArgs;-><init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;IILcom/android/server/pm/InstallSource;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/SigningDetails;IIZIIZLjava/lang/String;)V

    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v2, v1, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iput-object v2, v0, Lcom/android/server/pm/InstallRequest;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    new-instance v2, Lcom/android/server/pm/PackageMetrics;

    invoke-direct {v2, v0}, Lcom/android/server/pm/PackageMetrics;-><init>(Lcom/android/server/pm/InstallRequest;)V

    iput-object v2, v0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    iget-boolean v2, v1, Lcom/android/server/pm/InstallingSession;->mIsInherit:Z

    iput-boolean v2, v0, Lcom/android/server/pm/InstallRequest;->mIsInstallInherit:Z

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mSessionId:I

    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mRequireUserAction:I

    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    iget-object v2, v1, Lcom/android/server/pm/InstallingSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    iput-object v2, v0, Lcom/android/server/pm/InstallRequest;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    iget-boolean v2, v1, Lcom/android/server/pm/InstallingSession;->mHasAppMetadataFile:Z

    iput-boolean v2, v0, Lcom/android/server/pm/InstallRequest;->mHasAppMetadataFileFromInstaller:Z

    iget-boolean v2, v1, Lcom/android/server/pm/InstallingSession;->mDependencyInstallerEnabled:Z

    iput-boolean v2, v0, Lcom/android/server/pm/InstallRequest;->mDependencyInstallerEnabled:Z

    iget v1, v1, Lcom/android/server/pm/InstallingSession;->mMissingSharedLibraryCount:I

    iput v1, v0, Lcom/android/server/pm/InstallRequest;->mMissingSharedLibraryCount:I

    return-void
.end method


# virtual methods
.method public final assertScanResultExists()V
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    if-nez p0, :cond_d

    const-string/jumbo p0, "PackageManager"

    const-string/jumbo v0, "ScanResult is null and it should not happen"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method public final getCodeFile()Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mCodeFile:Ljava/io/File;

    return-object p0
.end method

.method public final getCodePath()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_d

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mCodeFile:Ljava/io/File;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getInstallFlags()I
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    return p0
.end method

.method public final getInstallSource()Lcom/android/server/pm/InstallSource;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    return-object p0
.end method

.method public final getInstallerPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_b

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    if-eqz p0, :cond_b

    iget-object p0, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public final getUser()Landroid/os/UserHandle;
    .registers 2

    new-instance v0, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public final getVolumeUuid()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mVolumeUuid:Ljava/lang/String;

    return-object p0
.end method

.method public final isInstallMove()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_a

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final onDexoptFinished(Lcom/android/server/art/model/DexoptResult;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz v0, :cond_5e

    iget v0, v0, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5e

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    invoke-virtual {v2}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getDexContainerFileDexoptResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;

    invoke-virtual {v3}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getExternalProfileErrors()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_2b

    :cond_3f
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occurred during dexopt when processing external profiles:\n  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n  "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5e
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_a5

    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getFinalStatus()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_a5

    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :cond_74
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    invoke-virtual {v2}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getDexContainerFileDexoptResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_88
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;

    invoke-virtual {v3}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getDex2oatWallTimeMillis()J

    move-result-wide v3

    add-long/2addr v0, v3

    goto :goto_88

    :cond_9a
    iget-object p0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    new-instance p1, Lcom/android/server/pm/PackageMetrics$InstallStep;

    invoke-direct {p1, v0, v1}, Lcom/android/server/pm/PackageMetrics$InstallStep;-><init>(J)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_a5
    return-void
.end method

.method public final setApexModuleName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    return-void
.end method

.method public final setCodeFile(Ljava/io/File;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_6

    iput-object p1, p0, Lcom/android/server/pm/InstallArgs;->mCodeFile:Ljava/io/File;

    :cond_6
    return-void
.end method

.method public final setError(ILjava/lang/String;)V
    .registers 3

    iput p1, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    iput-object p2, p0, Lcom/android/server/pm/InstallRequest;->mReturnMsg:Ljava/lang/String;

    const-string/jumbo p1, "PackageManager"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_12

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageMetrics;->reportInstallationStats(Z)V

    :cond_12
    return-void
.end method

.method public final setError(Lcom/android/server/pm/PackageManagerException;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    return-void
.end method

.method public final setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    .registers 4

    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->internalErrorCode:I

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mInternalErrorCode:I

    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/InstallRequest;->mReturnMsg:Ljava/lang/String;

    const-string/jumbo v0, "PackageManager"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_1c

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageMetrics;->reportInstallationStats(Z)V

    :cond_1c
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    return-void
.end method

.method public final setOriginUsers([I)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    return-void
.end method

.method public final setPrepareResult(ZIILcom/android/server/pm/PackageSetting;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Landroid/content/pm/ArchivedPackageParcel;ZZLcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .registers 11

    iput-boolean p1, p0, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    iput p2, p0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    iput p3, p0, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    if-eqz p4, :cond_b

    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    :cond_b
    iput-object p5, p0, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iput-object p6, p0, Lcom/android/server/pm/InstallRequest;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    iput-boolean p7, p0, Lcom/android/server/pm/InstallRequest;->mClearCodeCache:Z

    iput-boolean p8, p0, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    iput-object p9, p0, Lcom/android/server/pm/InstallRequest;->mOriginalPs:Lcom/android/server/pm/PackageSetting;

    iput-object p10, p0, Lcom/android/server/pm/InstallRequest;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    return-void
.end method

.method public final setRemovedInfo(Lcom/android/server/pm/PackageRemovedInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    return-void
.end method

.method public final updateAllCodePaths(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/content/pm/SharedLibraryInfo;->setAllCodePaths(Ljava/util/List;)V

    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroid/content/pm/SharedLibraryInfo;->setAllCodePaths(Ljava/util/List;)V

    :cond_12
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    if-eqz p0, :cond_2c

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/SharedLibraryInfo;->setAllCodePaths(Ljava/util/List;)V

    goto :goto_1c

    :cond_2c
    return-void
.end method
