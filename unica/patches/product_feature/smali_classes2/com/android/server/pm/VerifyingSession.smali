.class public final Lcom/android/server/pm/VerifyingSession;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDataLoaderType:I

.field public mErrorMessage:Ljava/lang/String;

.field public final mInstallFlags:I

.field public final mInstallReason:I

.field public final mInstallSource:Lcom/android/server/pm/InstallSource;

.field public final mIsInherit:Z

.field public final mIsStaged:Z

.field public final mObserver:Lcom/android/server/pm/PackageSessionVerifier$1;

.field public final mOriginInfo:Lcom/android/server/pm/OriginInfo;

.field public final mPackageAbiOverride:Ljava/lang/String;

.field public final mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field public mParentVerifyingSession:Lcom/android/server/pm/MultiPackageVerifyingSession;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mRequiredInstalledVersionCode:J

.field public mRet:I

.field public final mSessionId:I

.field public final mSigningDetails:Landroid/content/pm/SigningDetails;

.field public final mUser:Landroid/os/UserHandle;

.field public final mUserActionRequired:Z

.field public final mUserActionRequiredType:I

.field public final mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

.field public mWaitForEnableRollbackToComplete:Z

.field public mWaitForVerificationToComplete:Z

.field public final sessionFlags:I


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Ljava/io/File;Ljava/lang/String;Lcom/android/server/pm/PackageSessionVerifier$1;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;ILandroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;ZLcom/android/server/pm/PackageManagerService;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/VerifyingSession;->sessionFlags:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/pm/VerifyingSession;->mErrorMessage:Ljava/lang/String;

    iput-object p12, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object p1, p0, Lcom/android/server/pm/VerifyingSession;->mUser:Landroid/os/UserHandle;

    if-eqz p2, :cond_0

    new-instance p1, Lcom/android/server/pm/OriginInfo;

    invoke-direct {p1, p2, v1, v0, v2}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZLjava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/server/pm/OriginInfo;

    invoke-direct {p1, v2, v1, v0, p3}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZLjava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    :goto_0
    iput-object p4, p0, Lcom/android/server/pm/VerifyingSession;->mObserver:Lcom/android/server/pm/PackageSessionVerifier$1;

    iget p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput p1, p0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    iput-object p6, p0, Lcom/android/server/pm/VerifyingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/VerifyingSession;->mPackageAbiOverride:Ljava/lang/String;

    new-instance p1, Lcom/android/server/pm/VerificationInfo;

    iget-object p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iget-object p3, p5, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iget p4, p5, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-direct {p1, p2, p3, p4, p7}, Lcom/android/server/pm/VerificationInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;II)V

    iput-object p1, p0, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iput-object p8, p0, Lcom/android/server/pm/VerifyingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iget-wide p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide p1, p0, Lcom/android/server/pm/VerifyingSession;->mRequiredInstalledVersionCode:J

    iget-object p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    iput p1, p0, Lcom/android/server/pm/VerifyingSession;->mDataLoaderType:I

    iput p9, p0, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    iget p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    iput p1, p0, Lcom/android/server/pm/VerifyingSession;->sessionFlags:I

    iput-object p10, p0, Lcom/android/server/pm/VerifyingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iput-boolean p11, p0, Lcom/android/server/pm/VerifyingSession;->mUserActionRequired:Z

    iget p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iput p1, p0, Lcom/android/server/pm/VerifyingSession;->mUserActionRequiredType:I

    iget p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/android/server/pm/VerifyingSession;->mIsInherit:Z

    iget-boolean p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iput-boolean p1, p0, Lcom/android/server/pm/VerifyingSession;->mIsStaged:Z

    iget p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    iput p1, p0, Lcom/android/server/pm/VerifyingSession;->mInstallReason:I

    return-void
.end method

.method public static matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;
    .locals 5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_2
    if-nez p0, :cond_3

    return-object v2

    :cond_3
    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final getDefaultVerificationResponse()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object p0, p0, Lcom/android/server/pm/VerifyingSession;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    const-string/jumbo v2, "ensure_verify_apps"

    invoke-virtual {v1, v2, p0}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "verifier_default_response"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final handleReturnCode()V
    .locals 41

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/pm/VerifyingSession;->mWaitForVerificationToComplete:Z

    if-nez v1, :cond_6

    iget-boolean v1, v0, Lcom/android/server/pm/VerifyingSession;->mWaitForEnableRollbackToComplete:Z

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/VerifyingSession;->mParentVerifyingSession:Lcom/android/server/pm/MultiPackageVerifyingSession;

    const/4 v2, 0x1

    const-string/jumbo v3, "Observer no longer exists."

    const-string/jumbo v4, "PackageManager"

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    iget-object v6, v1, Lcom/android/server/pm/MultiPackageVerifyingSession;->mVerificationState:Ljava/util/Set;

    check-cast v6, Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/android/server/pm/MultiPackageVerifyingSession;->mVerificationState:Ljava/util/Set;

    check-cast v6, Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    iget-object v7, v1, Lcom/android/server/pm/MultiPackageVerifyingSession;->mChildVerifyingSessions:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v6, v7, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, v1, Lcom/android/server/pm/MultiPackageVerifyingSession;->mVerificationState:Ljava/util/Set;

    check-cast v6, Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/VerifyingSession;

    iget v8, v7, Lcom/android/server/pm/VerifyingSession;->mRet:I

    if-eq v8, v2, :cond_2

    iget-object v6, v7, Lcom/android/server/pm/VerifyingSession;->mErrorMessage:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move v8, v2

    move-object v6, v5

    :goto_0
    :try_start_0
    iget-object v1, v1, Lcom/android/server/pm/MultiPackageVerifyingSession;->mObserver:Lcom/android/server/pm/PackageSessionVerifier$1;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v5, v8, v6, v7}, Lcom/android/server/pm/PackageSessionVerifier$1;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v1, v0, Lcom/android/server/pm/VerifyingSession;->mObserver:Lcom/android/server/pm/PackageSessionVerifier$1;

    iget v6, v0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    iget-object v7, v0, Lcom/android/server/pm/VerifyingSession;->mErrorMessage:Ljava/lang/String;

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/android/server/pm/PackageSessionVerifier$1;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget v1, v0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    if-eq v1, v2, :cond_6

    iget-object v3, v0, Lcom/android/server/pm/VerifyingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget v3, v3, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    iget v4, v0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_5

    :goto_2
    move/from16 v32, v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :goto_3
    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v9, 0x20c

    iget v10, v0, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v29, -0x1

    iget v2, v0, Lcom/android/server/pm/VerifyingSession;->mDataLoaderType:I

    iget v4, v0, Lcom/android/server/pm/VerifyingSession;->mUserActionRequiredType:I

    const/16 v33, 0x0

    const/16 v34, 0x0

    iget-boolean v5, v0, Lcom/android/server/pm/VerifyingSession;->mIsInherit:Z

    const/16 v36, 0x0

    const/16 v37, 0x0

    iget-boolean v0, v0, Lcom/android/server/pm/VerifyingSession;->mIsStaged:Z

    move/from16 v38, v0

    move/from16 v17, v1

    move/from16 v30, v2

    move/from16 v28, v3

    move/from16 v31, v4

    move/from16 v35, v5

    invoke-static/range {v9 .. v40}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I[I[I[I[IIIJJ[I[JJIIIIIZZZZZZZZI)V

    :cond_6
    :goto_4
    return-void
.end method

.method public final handleStartVerify()V
    .locals 44

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/android/server/pm/VerifyingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v3, v1, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v3, v3, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    iget-object v5, v1, Lcom/android/server/pm/VerifyingSession;->mPackageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v2

    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-wide v3, v1, Lcom/android/server/pm/VerifyingSession;->mRequiredInstalledVersionCode:J

    iget v5, v1, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;

    move-result-object v0

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v4, v1, Lcom/android/server/pm/VerifyingSession;->mRet:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iput v3, v1, Lcom/android/server/pm/VerifyingSession;->mRet:I

    iput-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mErrorMessage:Ljava/lang/String;

    :cond_0
    iget v0, v1, Lcom/android/server/pm/VerifyingSession;->mRet:I

    if-eq v0, v5, :cond_1

    goto/16 :goto_26

    :cond_1
    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/OriginInfo;->mExisting:Z

    if-nez v0, :cond_3c

    iget v0, v1, Lcom/android/server/pm/VerifyingSession;->mInstallReason:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget v3, v1, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    const/high16 v6, 0x20000

    and-int/2addr v6, v3

    if-eqz v6, :cond_3

    goto/16 :goto_24

    :cond_3
    const/high16 v6, 0x8000000

    and-int/2addr v3, v6

    if-eqz v3, :cond_4

    goto/16 :goto_24

    :cond_4
    if-nez v0, :cond_3a

    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v3, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    new-instance v6, Lcom/android/server/pm/PackageVerificationState;

    invoke-direct {v6, v1}, Lcom/android/server/pm/PackageVerificationState;-><init>(Lcom/android/server/pm/VerifyingSession;)V

    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mUser:Landroid/os/UserHandle;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v0, v13, :cond_5

    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    :cond_5
    iget-boolean v13, v2, Landroid/content/pm/PackageInfoLite;->isSdkLibrary:Z

    if-eqz v13, :cond_6

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    :cond_6
    move-object v15, v0

    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    new-instance v0, Ljava/util/ArrayList;

    iget-object v14, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v14, v1, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    and-int/lit8 v16, v14, 0x20

    const/high16 v17, 0x80000

    if-eqz v16, :cond_9

    and-int v14, v14, v17

    if-nez v14, :cond_9

    const-string/jumbo v14, "debug.pm.adb_verifier_override_packages"

    const/16 v26, 0x0

    const-string v4, ""

    invoke-static {v14, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, ";"

    invoke-virtual {v4, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    array-length v9, v4

    move/from16 v10, v26

    :goto_1
    if-ge v10, v9, :cond_8

    aget-object v11, v4, v10

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    iget-object v12, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v12

    invoke-interface {v12, v11}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a

    invoke-virtual {v1, v2, v13, v5}, Lcom/android/server/pm/VerifyingSession;->isAdbVerificationEnabled(Landroid/content/pm/PackageInfoLite;IZ)Z

    move-result v4

    if-nez v4, :cond_a

    move v9, v5

    move-object v4, v14

    goto :goto_2

    :cond_9
    const/16 v26, 0x0

    :cond_a
    move-object v4, v0

    move/from16 v9, v26

    :goto_2
    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/OriginInfo;->mExisting:Z

    if-nez v0, :cond_36

    iget-object v10, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    if-nez v0, :cond_b

    const/4 v12, -0x1

    goto :goto_3

    :cond_b
    iget v0, v0, Lcom/android/server/pm/VerificationInfo;->mInstallerUid:I

    move v12, v0

    :goto_3
    iget v14, v1, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    and-int v0, v14, v17

    if-eqz v0, :cond_c

    move v11, v5

    goto :goto_4

    :cond_c
    move/from16 v11, v26

    :goto_4
    :try_start_0
    iget-object v0, v10, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-nez v8, :cond_d

    new-instance v8, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    sput-object v8, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    :cond_d
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v0

    const-string/jumbo v8, "mum_container_policy"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v30, 0x20

    :try_start_1
    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v7, v0, v13}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-interface {v8, v7}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getPackagesFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v31, v5

    const-string/jumbo v5, "PackageManager"

    if-eqz v8, :cond_e

    :try_start_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v16, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v32, v9

    :try_start_3
    const-string/jumbo v9, "isVerificationEnabled :: approvedInstaller : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v7, v16

    move/from16 v5, v31

    move/from16 v9, v32

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    :goto_6
    move/from16 v32, v9

    goto :goto_8

    :cond_e
    move/from16 v32, v9

    const-string v7, ".*"

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "isVerificationEnabled :: installer policy contains *."

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_f
    const-string/jumbo v0, "isVerificationEnabled :: installer policy exits."

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_7
    move/from16 v0, v26

    goto :goto_a

    :catch_2
    move-exception v0

    move/from16 v31, v5

    goto :goto_6

    :catch_3
    move-exception v0

    move/from16 v31, v5

    move/from16 v32, v9

    const/16 v30, 0x20

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    and-int/lit8 v0, v14, 0x20

    if-eqz v0, :cond_10

    invoke-virtual {v1, v2, v13, v11}, Lcom/android/server/pm/VerifyingSession;->isAdbVerificationEnabled(Landroid/content/pm/PackageInfoLite;IZ)Z

    move-result v0

    goto :goto_a

    :cond_10
    if-eqz v11, :cond_11

    goto :goto_7

    :cond_11
    iget v0, v1, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_13

    iget-object v0, v10, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_13

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v7, v26

    :catch_4
    :cond_12
    if-ge v7, v5, :cond_13

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    :try_start_4
    iget-object v9, v10, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v11, Landroid/app/AppOpsManager;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;->f$0:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager;

    invoke-virtual {v9, v12, v8}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    :cond_13
    iget v0, v1, Lcom/android/server/pm/VerifyingSession;->sessionFlags:I

    const/high16 v5, 0x2000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_14

    goto :goto_7

    :cond_14
    move/from16 v0, v31

    :goto_a
    if-nez v0, :cond_15

    move/from16 v13, v31

    goto/16 :goto_22

    :cond_15
    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_b
    if-ltz v5, :cond_17

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0, v7, v15}, Lcom/android/server/pm/Computer;->isApplicationEffectivelyEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v7

    if-nez v7, :cond_16

    const-string/jumbo v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Required verifier: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, " is disabled"

    invoke-static {v8, v9, v10, v7}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_16
    add-int/lit8 v5, v5, -0x1

    goto :goto_b

    :cond_17
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v7, v26

    :goto_c
    const-wide/32 v8, 0x10000000

    if-ge v7, v5, :cond_18

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v7, v7, 0x1

    check-cast v10, Ljava/lang/String;

    invoke-interface {v0, v10, v8, v9, v13}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v8

    iget-object v9, v6, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    move/from16 v10, v31

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v9, v6, Lcom/android/server/pm/PackageVerificationState;->mUnrespondedRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v31, 0x1

    goto :goto_c

    :cond_18
    const-string/jumbo v5, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    const/high16 v7, 0x10000000

    invoke-static {v7, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v11, v11, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    const-string/jumbo v11, "application/vnd.android.package-archive"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v10, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v19, "application/vnd.android.package-archive"

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Landroid/content/pm/ParceledListSlice;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    const-wide/16 v20, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v5

    move-object/from16 v16, v10

    move/from16 v22, v13

    invoke-virtual/range {v16 .. v25}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;

    move-result-object v0

    move-object/from16 v5, v17

    move-object/from16 v10, v18

    move/from16 v21, v22

    invoke-direct {v11, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    const-string/jumbo v0, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v10, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    iget v12, v1, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    invoke-virtual {v10, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    iget-object v12, v2, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    iget v12, v2, Landroid/content/pm/PackageInfoLite;->versionCode:I

    invoke-virtual {v10, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "android.content.pm.extra.VERIFICATION_LONG_VERSION_CODE"

    invoke-virtual {v2}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v12

    invoke-virtual {v10, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    iget-object v12, v1, Lcom/android/server/pm/VerifyingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v12}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v12

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_19

    invoke-static {v0, v12}, Lcom/android/server/pm/PackageManagerServiceUtils;->buildVerificationRootHashString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v12, "android.content.pm.extra.VERIFICATION_ROOT_HASH"

    invoke-virtual {v10, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_d

    :cond_19
    const/4 v0, 0x0

    :goto_d
    const-string/jumbo v12, "android.content.pm.extra.DATA_LOADER_TYPE"

    iget v13, v1, Lcom/android/server/pm/VerifyingSession;->mDataLoaderType:I

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v12, "android.content.pm.extra.SESSION_ID"

    iget v13, v1, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v12, "android.content.pm.extra.USER_ACTION_REQUIRED"

    iget-boolean v13, v1, Lcom/android/server/pm/VerifyingSession;->mUserActionRequired:Z

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v12, v1, Lcom/android/server/pm/VerifyingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v12, v12, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    const-string/jumbo v13, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    invoke-virtual {v10, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, v1, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    if-eqz v12, :cond_1d

    iget-object v13, v12, Lcom/android/server/pm/VerificationInfo;->mOriginatingUri:Landroid/net/Uri;

    if-eqz v13, :cond_1a

    const-string/jumbo v7, "android.intent.extra.ORIGINATING_URI"

    invoke-virtual {v10, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1a
    iget-object v7, v12, Lcom/android/server/pm/VerificationInfo;->mReferrer:Landroid/net/Uri;

    if-eqz v7, :cond_1b

    const-string/jumbo v13, "android.intent.extra.REFERRER"

    invoke-virtual {v10, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1b
    iget v7, v12, Lcom/android/server/pm/VerificationInfo;->mOriginatingUid:I

    if-ltz v7, :cond_1c

    const-string/jumbo v13, "android.intent.extra.ORIGINATING_UID"

    invoke-virtual {v10, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1c
    iget v7, v12, Lcom/android/server/pm/VerificationInfo;->mInstallerUid:I

    if-ltz v7, :cond_1d

    const-string/jumbo v12, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    invoke-virtual {v10, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1d
    iget v7, v1, Lcom/android/server/pm/VerifyingSession;->mDataLoaderType:I

    const/4 v12, 0x2

    if-ne v7, v12, :cond_1e

    iget-object v7, v1, Lcom/android/server/pm/VerifyingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v7}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v7

    const/4 v13, 0x4

    if-ne v7, v13, :cond_1e

    invoke-virtual {v1}, Lcom/android/server/pm/VerifyingSession;->getDefaultVerificationResponse()I

    move-result v7

    const/4 v13, 0x1

    if-ne v7, v13, :cond_1e

    const/4 v7, 0x1

    goto :goto_e

    :cond_1e
    move/from16 v7, v26

    :goto_e
    iget-object v13, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_1f

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v12, "streaming_verifier_timeout"

    const-wide/16 v8, 0xbb8

    invoke-static {v13, v12, v8, v9}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    goto :goto_f

    :cond_1f
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "verifier_timeout"

    const-wide/16 v12, 0x2710

    invoke-static {v8, v9, v12, v13}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    :goto_f
    iget-object v12, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_20

    move-object/from16 v34, v15

    const-wide/16 v14, 0x0

    goto :goto_10

    :cond_20
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "verifier_timeout_samsung"

    move-object/from16 v34, v15

    const-wide/16 v14, 0x0

    invoke-static {v12, v13, v14, v15}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    const-wide/16 v14, 0x7530

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    :goto_10
    cmp-long v12, v14, v8

    if-lez v12, :cond_21

    const-string/jumbo v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Samsung verification timeout applied. Set verification timeout to "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v19, v14

    goto :goto_11

    :cond_21
    move-wide/from16 v19, v8

    :goto_11
    invoke-virtual {v11}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    if-eqz v9, :cond_22

    array-length v12, v9

    if-nez v12, :cond_23

    :cond_22
    move/from16 v43, v7

    move-object/from16 v42, v11

    const/4 v8, -0x1

    goto/16 :goto_18

    :cond_23
    array-length v9, v9

    new-instance v12, Ljava/util/ArrayList;

    add-int/lit8 v13, v9, 0x1

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v13, v26

    :goto_12
    if-ge v13, v9, :cond_29

    iget-object v14, v2, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    aget-object v14, v14, v13

    iget-object v15, v14, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    invoke-static {v15, v8}, Lcom/android/server/pm/VerifyingSession;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v15

    if-nez v15, :cond_24

    move/from16 v43, v7

    move-object/from16 v16, v8

    move/from16 v17, v9

    move-object/from16 v42, v11

    move/from16 v18, v13

    const/4 v8, -0x1

    goto/16 :goto_16

    :cond_24
    move-object/from16 v16, v8

    iget-object v8, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    move/from16 v17, v9

    const-string/jumbo v9, "Verifier package "

    move-object/from16 v42, v11

    const-string/jumbo v11, "Verifier package "

    move/from16 v18, v13

    iget-object v13, v8, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v13

    :try_start_5
    iget-object v8, v8, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    move/from16 v43, v7

    iget-object v7, v14, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    iget-object v8, v8, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/AndroidPackage;

    if-nez v7, :cond_25

    monitor-exit v13

    :goto_13
    const/4 v7, -0x1

    :goto_14
    const/4 v8, -0x1

    goto :goto_15

    :catchall_0
    move-exception v0

    goto/16 :goto_17

    :cond_25
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v8

    array-length v8, v8

    move-object/from16 v22, v7

    const/4 v7, 0x1

    if-eq v8, v7, :cond_26

    const-string/jumbo v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v14, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " has more than one signature; ignoring"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_13

    :cond_26
    :try_start_6
    invoke-interface/range {v22 .. v22}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v7

    aget-object v7, v7, v26

    invoke-virtual {v7}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v7
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v8, v14, Landroid/content/pm/VerifierInfo;->publicKey:Ljava/security/PublicKey;

    invoke-interface {v8}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v8

    invoke-static {v8, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_27

    const-string/jumbo v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v14, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " does not have the expected public key; ignoring"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v13

    goto :goto_13

    :cond_27
    invoke-interface/range {v22 .. v22}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v7

    monitor-exit v13

    goto :goto_14

    :catch_5
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_13

    :goto_15
    if-ne v7, v8, :cond_28

    goto :goto_16

    :cond_28
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v6, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v13, 0x1

    invoke-virtual {v9, v7, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_16
    add-int/lit8 v13, v18, 0x1

    move-object/from16 v8, v16

    move/from16 v9, v17

    move-object/from16 v11, v42

    move/from16 v7, v43

    goto/16 :goto_12

    :goto_17
    :try_start_8
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :cond_29
    move/from16 v43, v7

    move-object/from16 v42, v11

    const/4 v8, -0x1

    goto :goto_19

    :goto_18
    const/4 v12, 0x0

    :goto_19
    iget-boolean v7, v2, Landroid/content/pm/PackageInfoLite;->isSdkLibrary:Z

    if-eqz v7, :cond_2b

    if-nez v12, :cond_2a

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_2a
    new-instance v7, Landroid/content/ComponentName;

    const-string/jumbo v9, "android"

    const-string/jumbo v11, "com.android.server.sdksandbox.SdkSandboxVerifierReceiver"

    invoke-direct {v7, v9, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    iget-object v9, v6, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v13, 0x1

    invoke-virtual {v9, v7, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2b
    iget-object v7, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v9, Lcom/android/server/DeviceIdleInternal;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Lcom/android/server/DeviceIdleInternal;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v36

    const-string v41, ""

    const/16 v39, 0x0

    const/16 v40, 0x131

    move-wide/from16 v37, v19

    invoke-virtual/range {v36 .. v41}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    if-eqz v12, :cond_2c

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2d

    const-string v7, "Additional verifiers required, but none installed."

    const-string/jumbo v9, "PackageManager"

    invoke-static {v9, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, v1, Lcom/android/server/pm/VerifyingSession;->mRet:I

    const/4 v13, 0x1

    if-ne v9, v13, :cond_2c

    const/16 v9, -0x16

    iput v9, v1, Lcom/android/server/pm/VerifyingSession;->mRet:I

    iput-object v7, v1, Lcom/android/server/pm/VerifyingSession;->mErrorMessage:Ljava/lang/String;

    :cond_2c
    move/from16 v13, v21

    move-object/from16 v8, v34

    const/4 v7, 0x0

    goto :goto_1b

    :cond_2d
    move/from16 v9, v26

    :goto_1a
    if-ge v9, v7, :cond_2c

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v17

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v24, "package verifier"

    const/16 v22, 0x0

    const/16 v23, 0x131

    invoke-interface/range {v16 .. v24}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    move/from16 v13, v21

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v14, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v11, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {v36 .. v36}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v15

    move/from16 v17, v7

    move-object/from16 v8, v34

    const/4 v7, 0x0

    invoke-virtual {v11, v14, v8, v7, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v17

    const/4 v8, -0x1

    goto :goto_1a

    :goto_1b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_2e

    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v4, "No required verifiers"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    :cond_2e
    iget-object v9, v2, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2f

    :goto_1c
    const/4 v11, 0x2

    goto :goto_1d

    :cond_2f
    invoke-virtual {v1}, Lcom/android/server/pm/VerifyingSession;->getDefaultVerificationResponse()I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_30

    goto :goto_1c

    :cond_30
    const/4 v11, -0x1

    :goto_1d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    move/from16 v12, v26

    :goto_1e
    if-ge v12, v9, :cond_35

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v12, v12, 0x1

    check-cast v14, Ljava/lang/String;

    move-object/from16 v34, v8

    const-wide/32 v7, 0x10000000

    invoke-interface {v5, v14, v7, v8, v13}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v15

    if-eqz v32, :cond_31

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_32

    :cond_31
    move-object/from16 v26, v4

    goto :goto_1f

    :cond_32
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v26, v4

    const-string/jumbo v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move/from16 v8, v30

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v4, Ljava/io/File;

    iget-object v8, v1, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v8, v8, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v8, "application/vnd.android.package-archive"

    invoke-virtual {v7, v4, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "android.content.pm.extra.SESSION_ID"

    iget v8, v1, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    invoke-virtual {v7, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "android.content.pm.extra.DATA_LOADER_TYPE"

    iget v8, v1, Lcom/android/server/pm/VerifyingSession;->mDataLoaderType:I

    invoke-virtual {v7, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v0, :cond_33

    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_ROOT_HASH"

    invoke-virtual {v7, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_33
    invoke-virtual {v7, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_ID"

    neg-int v8, v3

    invoke-virtual {v7, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v4, 0x0

    goto :goto_21

    :goto_1f
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-nez v32, :cond_34

    invoke-virtual/range {v42 .. v42}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/android/server/pm/VerifyingSession;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_20

    :cond_34
    invoke-virtual {v7, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_20
    const-string/jumbo v4, "android.permission.PACKAGE_VERIFICATION_AGENT"

    :goto_21
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v17

    const-string/jumbo v24, "package verifier"

    const/16 v22, 0x0

    const/16 v23, 0x131

    move/from16 v21, v13

    move-object/from16 v18, v14

    invoke-interface/range {v16 .. v24}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    move-object/from16 v29, v0

    move-object/from16 v24, v16

    move-object/from16 v0, v18

    move-wide/from16 v13, v19

    move/from16 v8, v21

    move-object/from16 v16, v4

    new-instance v4, Lcom/android/server/pm/PackageVerificationResponse;

    invoke-direct {v4, v11, v15}, Lcom/android/server/pm/PackageVerificationResponse;-><init>(II)V

    iget-object v15, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v33, v5

    iget-object v5, v15, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v7

    const/16 v7, 0x10

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iput v3, v5, Landroid/os/Message;->arg1:I

    move/from16 v7, v43

    iput v7, v5, Landroid/os/Message;->arg2:I

    iput-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, v15, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string/jumbo v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "Sending PACKAGE_NEEDS_VERIFICATION to "

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ", vid: "

    move/from16 v43, v7

    const-string v7, ", sid: "

    invoke-static {v3, v0, v15, v7, v5}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v0, v1, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    invoke-static {v5, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {v36 .. v36}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide/from16 v37, v13

    move-object/from16 v14, v17

    const/16 v17, -0x1

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v13, v0

    move-object/from16 v15, v34

    const/16 v35, 0x0

    invoke-virtual/range {v13 .. v23}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    move v13, v8

    move-object v8, v15

    move-object/from16 v16, v24

    move-object/from16 v4, v26

    move-object/from16 v0, v29

    move-object/from16 v5, v33

    move-object/from16 v7, v35

    move-wide/from16 v19, v37

    const/16 v30, 0x20

    goto/16 :goto_1e

    :cond_35
    const-string/jumbo v0, "verification"

    const-wide/32 v4, 0x40000

    invoke-static {v4, v5, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const/4 v13, 0x1

    iput-boolean v13, v1, Lcom/android/server/pm/VerifyingSession;->mWaitForVerificationToComplete:Z

    goto :goto_23

    :cond_36
    move v13, v5

    :goto_22
    iget-object v0, v6, Lcom/android/server/pm/PackageVerificationState;->mUnrespondedRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-gtz v0, :cond_39

    iput-boolean v13, v6, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    iput-boolean v13, v6, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    :goto_23
    invoke-virtual {v6}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    :cond_37
    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mUser:Landroid/os/UserHandle;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v0, v3, :cond_38

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    :cond_38
    :try_start_9
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.intent.action.PACKAGE_INSTALL_STARTED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "packageName"

    iget-object v2, v2, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "userID"

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v4, "android.permission.HARDWARE_TEST"

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v2, "sendBroadcastAsUser. PACKAGE_INSTALL_STARTED"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_24

    :catch_6
    move-exception v0

    const-string/jumbo v2, "PackageManager"

    const-string v3, "Failed to send an intent for PACKAGE_INSTALL_STARTED: "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    :cond_39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Required verifiers still present."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    :goto_24
    iget v0, v1, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    const/high16 v2, 0x40000

    and-int/2addr v0, v2

    if-eqz v0, :cond_3c

    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v2, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    const-string/jumbo v3, "enable_rollback"

    const-wide/32 v4, 0x40000

    invoke-static {v4, v5, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    iget v5, v1, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "application/vnd.android.package-archive"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const v4, 0x10000001

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string/jumbo v7, "android.permission.PACKAGE_ROLLBACK_AGENT"

    invoke-virtual {v4, v3, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const/4 v13, 0x1

    iput-boolean v13, v1, Lcom/android/server/pm/VerifyingSession;->mWaitForEnableRollbackToComplete:Z

    const-string/jumbo v1, "rollback"

    const-string/jumbo v3, "enable_rollback_timeout"

    const-wide/16 v12, 0x2710

    invoke-static {v1, v3, v12, v13}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v27, 0x0

    cmp-long v1, v3, v27

    if-gez v1, :cond_3b

    move-wide v7, v12

    goto :goto_25

    :cond_3b
    move-wide v7, v3

    :goto_25
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x16

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput v2, v1, Landroid/os/Message;->arg1:I

    iput v5, v1, Landroid/os/Message;->arg2:I

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3c
    :goto_26
    return-void
.end method

.method public final isAdbVerificationEnabled(Landroid/content/pm/PackageInfoLite;IZ)Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "verifier_verify_adb_installs"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string/jumbo v3, "ensure_verify_apps"

    invoke-virtual {p0, p2, v3}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-nez v0, :cond_3

    const-string/jumbo p0, "PackageManager"

    const-string p1, "Force verification of ADB install because of user restriction."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    if-nez v0, :cond_2

    return v1

    :cond_2
    if-eqz p3, :cond_3

    iget-object p2, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-boolean p0, p1, Landroid/content/pm/PackageInfoLite;->debuggable:Z

    xor-int/2addr p0, v2

    return p0

    :cond_3
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "VerifyingSession{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object p0, p0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
