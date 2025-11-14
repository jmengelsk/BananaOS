.class public Lcom/android/server/pm/PackageSetting;
.super Lcom/android/server/pm/SettingBase;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageStateInternal;


# instance fields
.field public categoryOverride:I

.field public installSource:Lcom/android/server/pm/InstallSource;

.field public keySetData:Lcom/android/server/pm/PackageKeySetData;

.field public lastUpdateTime:J

.field public legacyNativeLibraryPath:Ljava/lang/String;

.field public mAppId:I

.field public mAppMetadataFilePath:Ljava/lang/String;

.field public mAppMetadataSource:I

.field public mBaseRevisionCode:I

.field public mBooleans:I

.field public mCpuAbiOverride:Ljava/lang/String;

.field public mDomainSetId:Ljava/util/UUID;

.field public mLastModifiedTime:J

.field public mLoadingCompletedTime:J

.field public mLoadingProgress:F

.field public mName:Ljava/lang/String;

.field public mOldPaths:Ljava/util/LinkedHashSet;

.field public mPageSizeAppCompatFlags:I

.field public mPath:Ljava/io/File;

.field public mPathString:Ljava/lang/String;

.field public mPrimaryCpuAbi:Ljava/lang/String;

.field public mRealName:Ljava/lang/String;

.field public mRestrictUpdateHash:[B

.field public mSecondaryCpuAbi:Ljava/lang/String;

.field public mSharedUserAppId:I

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mSplitNames:[Ljava/lang/String;

.field public mSplitRevisionCodes:[I

.field public mTargetSdkVersion:I

.field public final mUserStates:Landroid/util/SparseArray;

.field public mimeGroups:Ljava/util/Map;

.field public pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

.field public final pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

.field public signatures:Lcom/android/server/pm/PackageSignatures;

.field public usesSdkLibraries:[Ljava/lang/String;

.field public usesSdkLibrariesOptional:[Z

.field public usesSdkLibrariesVersionsMajor:[J

.field public usesStaticLibraries:[Ljava/lang/String;

.field public usesStaticLibrariesVersions:[J

.field public versionCode:J

.field public volumeUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageSetting;Z)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;-><init>(Lcom/android/server/pm/SettingBase;)V

    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    new-instance v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-direct {v1, p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;-><init>(Lcom/android/server/pm/PackageSetting;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSetting;->copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V

    if-eqz p2, :cond_2d

    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void

    :cond_2d
    new-instance p1, Lcom/android/server/pm/PackageSetting$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p0, p2}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IILjava/util/UUID;)V
    .registers 7

    invoke-direct {p0, p4, p5}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    new-instance p4, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {p4}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object p4, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4}, Landroid/util/SparseArray;-><init>()V

    iput-object p4, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    const/4 p4, -0x1

    iput p4, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    const/4 p4, 0x0

    iput p4, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    new-instance p5, Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-direct {p5, p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;-><init>(Lcom/android/server/pm/PackageSetting;)V

    iput-object p5, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iput p4, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    new-instance p1, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {p1}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    sget-object p1, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iput-object p6, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    new-instance p1, Lcom/android/server/pm/PackageSetting$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p0, p2}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method


# virtual methods
.method public addOldPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-object p0
.end method

.method public final copyMimeGroups(Ljava/util/Map;)V
    .registers 7

    if-nez p1, :cond_6

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    return-void

    :cond_6
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_38

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_38
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_43
    return-void
.end method

.method public final copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V
    .registers 7

    iget v0, p1, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    iput v0, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    iget v0, p1, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    iput v0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    iget-object v0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    iget-object v1, p1, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionState;->copyFrom(Lcom/android/server/pm/permission/LegacyPermissionState;)V

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    iget-wide v0, p1, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_45

    move-object v0, v1

    goto :goto_4c

    :cond_45
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    :goto_4c
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    iget-wide v2, p1, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    iget-wide v2, p1, Lcom/android/server/pm/PackageSetting;->versionCode:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0, v2}, Lcom/android/server/pm/PackageKeySetData;-><init>(Lcom/android/server/pm/PackageKeySetData;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    if-nez v0, :cond_95

    move-object v0, v1

    goto :goto_9b

    :cond_95
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_9b
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    if-eqz v0, :cond_ad

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_ae

    :cond_ad
    move-object v0, v1

    :goto_ae
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    if-eqz v0, :cond_ba

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_bb

    :cond_ba
    move-object v0, v1

    :goto_bb
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    if-eqz v0, :cond_c9

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_ca

    :cond_c9
    move-object v0, v1

    :goto_ca
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    if-eqz v0, :cond_d6

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    goto :goto_d7

    :cond_d6
    move-object v0, v1

    :goto_d7
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    if-eqz v0, :cond_e3

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    goto :goto_e4

    :cond_e3
    move-object v0, v1

    :goto_e4
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    if-eqz v0, :cond_f2

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_f3

    :cond_f2
    move-object v0, v1

    :goto_f3
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    if-eqz v0, :cond_fe

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    :cond_fe
    iput-object v1, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    :goto_106
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_144

    if-eqz p2, :cond_12c

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    iget-object v3, v3, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v3}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_141

    :cond_12c
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    iput-object p0, v1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_141
    add-int/lit8 v0, v0, 0x1

    goto :goto_106

    :cond_144
    iget-object p2, p1, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->copyMimeGroups(Ljava/util/Map;)V

    iget p2, p1, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    iput p2, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    iget-object p2, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    iput-boolean v0, p2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_169

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    :cond_169
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17a

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    :cond_17a
    iget-boolean v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    iput-boolean v0, p2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    iget-boolean v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->apkInUpdatedApex:Z

    iput-boolean v0, p2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->apkInUpdatedApex:Z

    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    iput-object v0, p2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->seInfo:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->seInfo:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mApexModuleName:Ljava/lang/String;

    iput-object p1, p2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mApexModuleName:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-void
.end method

.method public final getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    return-object p0
.end method

.method public final getApexModuleName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mApexModuleName:Ljava/lang/String;

    return-object p0
.end method

.method public final getAppId()I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    return p0
.end method

.method public final getAppMetadataFilePath()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getAppMetadataSource()I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    return p0
.end method

.method public final getBoolean(I)Z
    .registers 2

    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public final getCategoryOverride()I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    return p0
.end method

.method public final getCpuAbiOverride()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    return-object p0
.end method

.method public final getDomainSetId()Ljava/util/UUID;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    return-object p0
.end method

.method public final getEnabled(I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result p0

    return p0
.end method

.method public final getHiddenApiEnforcementPolicy()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-static {v0, p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getHiddenApiEnforcementPolicy(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result p0

    return p0
.end method

.method public final getInstallReason(I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result p0

    return p0
.end method

.method public final getInstallSource()Lcom/android/server/pm/InstallSource;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    return-object p0
.end method

.method public final getInstalled(I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p0

    return p0
.end method

.method public final getInstantApp(I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p0

    return p0
.end method

.method public final getKeySetData()Lcom/android/server/pm/PackageKeySetData;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    return-object p0
.end method

.method public final getLastModifiedTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    return-wide v0
.end method

.method public final getLastPackageUsageTime()[J
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object p0

    return-object p0
.end method

.method public final getLastUpdateTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    return-wide v0
.end method

.method public final getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    return-object p0
.end method

.method public final getLoadingCompletedTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    return-wide v0
.end method

.method public final getLoadingProgress()F
    .registers 1

    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    return p0
.end method

.method public final getMimeGroups()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    :cond_b
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getNotInstalledUserIds()[I
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1, v0}, Landroid/util/IntArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_29

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getBoolean$1(I)Z

    move-result v3

    if-nez v3, :cond_26

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_29
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public final getOldPaths()Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPageSizeCompatWarningMessage(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    and-int/lit8 v0, p0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    and-int/lit8 v3, p0, 0x8

    if-eqz v3, :cond_11

    move v3, v2

    goto :goto_12

    :cond_11
    move v3, v1

    :goto_12
    and-int/lit8 v4, p0, 0x10

    if-eqz v4, :cond_18

    move v4, v2

    goto :goto_19

    :cond_18
    move v4, v1

    :goto_19
    const/4 v5, 0x0

    if-nez v0, :cond_59

    if-nez v3, :cond_59

    if-eqz v4, :cond_21

    goto :goto_59

    :cond_21
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_27

    move v0, v2

    goto :goto_28

    :cond_27
    move v0, v1

    :goto_28
    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_2d

    move v1, v2

    :cond_2d
    if-eqz v0, :cond_3d

    if-eqz v1, :cond_3d

    const p0, 0x10409a7

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3d
    if-eqz v0, :cond_4b

    const p0, 0x10409a8

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4b
    if-eqz v1, :cond_59

    const p0, 0x10409a9

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_59
    :goto_59
    return-object v5
.end method

.method public final getPath()Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    return-object p0
.end method

.method public final getPathString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    return-object p0
.end method

.method public final getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    return-object p0
.end method

.method public final getPrimaryCpuAbi()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v0, :cond_13

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public final getPrimaryCpuAbiLegacy()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public final getRealName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    return-object p0
.end method

.method public final getRestrictUpdateHash()[B
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    return-object p0
.end method

.method public final getSeInfo()Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->seInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final getSecondaryCpuAbi()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v0, :cond_13

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public final getSecondaryCpuAbiLegacy()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public final getSharedLibraryDependencies()Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getSharedUserAppId()I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    return p0
.end method

.method public final getSigningDetails()Landroid/content/pm/SigningDetails;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object p0
.end method

.method public final getSigningInfo()Landroid/content/pm/SigningInfo;
    .registers 2

    new-instance v0, Landroid/content/pm/SigningInfo;

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {v0, p0}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    return-object v0
.end method

.method public final getSplitNames()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSplitNames()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    if-nez p0, :cond_f

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_f
    return-object p0
.end method

.method public final getSplitRevisionCodes()[I
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSplitRevisionCodes()[I

    move-result-object p0

    return-object p0

    :cond_9
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    if-nez p0, :cond_f

    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    :cond_f
    return-object p0
.end method

.method public final getStateForUser(Landroid/os/UserHandle;)Lcom/android/server/pm/pkg/PackageUserState;
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/PackageUserState;

    if-nez p0, :cond_10

    sget-object p0, Lcom/android/server/pm/pkg/PackageUserState;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserState;

    :cond_10
    return-object p0
.end method

.method public final getTargetSdkVersion()I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    return p0
.end method

.method public final getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    return-object p0
.end method

.method public final getUninstallReason(I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result p0

    return p0
.end method

.method public final getUserStates()Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    return-object p0
.end method

.method public final getUsesLibraryFiles()Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getUsesSdkLibraries()[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    if-nez p0, :cond_6

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_6
    return-object p0
.end method

.method public final getUsesSdkLibrariesOptional()[Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    if-nez p0, :cond_6

    sget-object p0, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    :cond_6
    return-object p0
.end method

.method public final getUsesSdkLibrariesVersionsMajor()[J
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    if-nez p0, :cond_6

    sget-object p0, Llibcore/util/EmptyArray;->LONG:[J

    :cond_6
    return-object p0
.end method

.method public final getUsesStaticLibraries()[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    if-nez p0, :cond_6

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_6
    return-object p0
.end method

.method public final getUsesStaticLibrariesVersions()[J
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    if-nez p0, :cond_6

    sget-object p0, Llibcore/util/EmptyArray;->LONG:[J

    :cond_6
    return-object p0
.end method

.method public final getVersionCode()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    return-wide v0
.end method

.method public final getVolumeUuid()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    return-object p0
.end method

.method public final hasSharedUser()Z
    .registers 1

    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final isApex()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final isApkInUpdatedApex()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-boolean p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->apkInUpdatedApex:Z

    return p0
.end method

.method public final isArchivedOnAnyUser([I)Z
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_16

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_16
    return v1
.end method

.method public final isDebuggable()Z
    .registers 2

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final isDefaultToDeviceProtectedStorage()Z
    .registers 1

    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final isExternalStorage()Z
    .registers 2

    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    const/high16 v0, 0x40000

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final isForceQueryableOverride()Z
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final isHiddenUntilInstalled()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-boolean p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    return p0
.end method

.method public final isInstallPermissionsFixed()Z
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final isLeavingSharedUser()Z
    .registers 2

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final isLoading()Z
    .registers 2

    const/high16 v0, 0x3f800000  # 1.0f

    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x322bcc77  # 1.0E-8f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final isOdm()Z
    .registers 2

    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    const/high16 v0, 0x40000000  # 2.0f

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final isOem()Z
    .registers 2

    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final isPageSizeAppCompatEnabled()Z
    .registers 5

    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    and-int/lit8 v0, p0, 0x40

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    and-int/lit8 v3, p0, 0x10

    if-eqz v3, :cond_11

    move v3, v1

    goto :goto_12

    :cond_11
    move v3, v2

    :goto_12
    if-nez v0, :cond_1c

    if-eqz v3, :cond_17

    goto :goto_1c

    :cond_17
    and-int/lit8 p0, p0, 0x2c

    if-eqz p0, :cond_1c

    return v1

    :cond_1c
    :goto_1c
    return v2
.end method

.method public final isPendingRestore()Z
    .registers 2

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final isPersistent()Z
    .registers 1

    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final isPrivileged()Z
    .registers 1

    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final isProduct()Z
    .registers 2

    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    const/high16 v0, 0x80000

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final isRequiredForSystemUser()Z
    .registers 1

    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final isScannedAsStoppedSystemApp()Z
    .registers 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final isSystem()Z
    .registers 2

    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public final isSystemExt()Z
    .registers 2

    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final isUpdateAvailable()Z
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final isUpdatedSystemApp()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-boolean p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    return p0
.end method

.method public final isVendor()Z
    .registers 2

    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    const/high16 v0, 0x40000

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-nez v0, :cond_17

    new-instance v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-direct {v0, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;-><init>(Lcom/android/server/utils/Watchable;)V

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_17
    return-object v0
.end method

.method public final modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p2, :cond_15

    iget-object p2, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez p2, :cond_15

    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Landroid/util/ArraySet;)V

    move p2, v0

    goto :goto_16

    :cond_15
    const/4 p2, 0x0

    :goto_16
    if-eqz p3, :cond_25

    iget-object p3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez p3, :cond_25

    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Landroid/util/ArraySet;)V

    goto :goto_26

    :cond_25
    move v0, p2

    :goto_26
    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_2b
    return-object p1
.end method

.method public overrideNonLocalizedLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;I)Z
    .registers 5

    invoke-virtual {p0, p4}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return p1
.end method

.method public final queryInstalledUsers([IZ)[I
    .registers 8

    new-instance v0, Landroid/util/IntArray;

    array-length v1, p1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_18

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-ne v4, p2, :cond_15

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public final queryUsersInstalledOrHasData([I)[I
    .registers 7

    new-instance v0, Landroid/util/IntArray;

    array-length v1, p1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_22

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result v4

    if-eqz v4, :cond_1f

    :cond_1c
    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_22
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public final readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    if-nez p0, :cond_c

    sget-object p0, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateDefault;

    :cond_c
    return-object p0
.end method

.method public removeOldPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;
    .registers 3

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_7

    goto :goto_10

    :cond_7
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_10
    :goto_10
    return-object p0
.end method

.method public final restoreComponentLPw(ILjava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0, p2}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    iget-object p1, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-eqz p1, :cond_18

    invoke-virtual {p1, p2}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    :cond_18
    or-int p1, v0, v1

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_1f
    return p1
.end method

.method public final restoreComponentSettings(I)V
    .registers 8

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    iget-object v1, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    iget-object p1, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    iget-object v2, v1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    :goto_11
    if-ltz v2, :cond_47

    iget-object v4, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iget-object v5, v1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->hasComponentClassName(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_44

    iget-object v3, v1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-boolean v4, v1, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    if-eqz v4, :cond_40

    instance-of v4, v3, Lcom/android/server/utils/Watchable;

    if-eqz v4, :cond_40

    iget-object v4, v1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    check-cast v3, Lcom/android/server/utils/Watchable;

    iget-object v4, v1, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/WatchedArraySet$1;

    invoke-interface {v3, v4}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_40
    invoke-virtual {v1, v1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    move v3, v0

    :cond_44
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    :cond_47
    iget-object v1, p1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_4e
    if-ltz v1, :cond_84

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iget-object v4, p1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->hasComponentClassName(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_81

    iget-object v2, p1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    if-eqz v3, :cond_7d

    instance-of v3, v2, Lcom/android/server/utils/Watchable;

    if-eqz v3, :cond_7d

    iget-object v3, p1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    check-cast v2, Lcom/android/server/utils/Watchable;

    iget-object v3, p1, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/WatchedArraySet$1;

    invoke-interface {v2, v3}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_7d
    invoke-virtual {p1, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    move v3, v0

    :cond_81
    add-int/lit8 v1, v1, -0x1

    goto :goto_4e

    :cond_84
    if-eqz v3, :cond_89

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_89
    return-void
.end method

.method public final setAppId(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-void
.end method

.method public final setAppMetadataFilePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-void
.end method

.method public final setAppMetadataSource(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-void
.end method

.method public final setBoolean(IZ)V
    .registers 3

    if-eqz p2, :cond_8

    iget p2, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    return-void

    :cond_8
    iget p2, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    return-void
.end method

.method public final setEnabled(IILjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    iput p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    iput-object p3, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-void
.end method

.method public final setFirstInstallTime(IJ)V
    .registers 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1c

    iget-object p1, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, p1, :cond_25

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    iput-wide p2, v1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    iput-wide p2, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    :cond_25
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-void
.end method

.method public final setInstalled(IZ)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-void
.end method

.method public final setLastUpdateTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-void
.end method

.method public final setPageSizeAppCompatFlags(I)V
    .registers 4

    if-ltz p1, :cond_20

    const/16 v0, 0x80

    if-ge p1, v0, :cond_20

    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    const/16 v1, 0x8

    if-ne v1, p1, :cond_14

    and-int/lit8 p1, v0, -0x11

    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    goto :goto_1c

    :cond_14
    const/16 v1, 0x10

    if-ne v1, p1, :cond_1c

    and-int/lit8 p1, v0, -0x9

    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-void

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid page size compat mode specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-object p0
.end method

.method public final setSharedUserAppId(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-void
.end method

.method public final setUninstallReason(II)V
    .registers 5

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    iput p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    const-class v0, Landroid/content/pm/PackageManager$UninstallReason;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-void
.end method

.method public final setUpdateOwnerPackage(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallSource;->setUpdateOwnerPackageName(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-void
.end method

.method public final setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;)V
    .registers 32

    move-object/from16 v0, p12

    move/from16 v1, p18

    move/from16 v2, p19

    move/from16 v3, p24

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    if-nez v0, :cond_12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_30

    :cond_12
    iget-object v4, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v4, :cond_23

    new-instance v4, Lcom/android/server/utils/WatchedArrayMap;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    iput-object v4, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v4, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p1, v4}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    :cond_23
    iget-object v4, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->clear()V

    iget-object v4, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v0}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    :goto_30
    iput-wide p2, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    iput-wide p4, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    iput p6, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p7}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p8}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p9}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    const/16 p2, 0x8

    move/from16 p3, p10

    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    move/from16 p2, p11

    iput p2, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    move-object/from16 p2, p15

    iput-object p2, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    move-object/from16 p2, p16

    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Landroid/util/ArraySet;)V

    move-object/from16 p2, p17

    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Landroid/util/ArraySet;)V

    iput v1, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    const-class p2, Landroid/content/pm/PackageManager$InstallReason;

    const/4 p3, 0x0

    invoke-static {p2, p3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    iput v2, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    const-class p2, Landroid/content/pm/PackageManager$UninstallReason;

    invoke-static {p2, p3, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    const/16 p2, 0x10

    move/from16 p4, p13

    invoke-virtual {p1, p2, p4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    const/16 p2, 0x20

    move/from16 p4, p14

    invoke-virtual {p1, p2, p4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    move-object/from16 p2, p20

    iput-object p2, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    move-object/from16 p2, p21

    iput-object p2, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    move-wide/from16 p4, p22

    iput-wide p4, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    iput v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    const-class p2, Landroid/content/pm/PackageManager$UserMinAspectRatio;

    invoke-static {p2, p3, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    move-object/from16 p2, p25

    iput-object p2, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-void
.end method

.method public final snapshot()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PackageSetting{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    const-string/jumbo v1, "}"

    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateMimeGroups(Ljava/util/Set;)V
    .registers 5

    if-nez p1, :cond_6

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-nez v0, :cond_e

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    :cond_e
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_3b
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_44
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    return-void
.end method
