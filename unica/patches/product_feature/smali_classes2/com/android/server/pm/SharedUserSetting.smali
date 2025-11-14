.class public final Lcom/android/server/pm/SharedUserSetting;
.super Lcom/android/server/pm/SettingBase;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAppId:I

.field public final mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

.field public final mDisabledPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mObserver:Lcom/android/server/pm/SharedUserSetting$1;

.field public final mPackages:Lcom/android/server/utils/WatchedArraySet;

.field public final mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final name:Ljava/lang/String;

.field public final processes:Landroid/util/ArrayMap;

.field public seInfoTargetSdkVersion:I

.field public final signatures:Lcom/android/server/pm/PackageSignatures;

.field public signaturesChanged:Ljava/lang/Boolean;

.field public final uidFlags:I

.field public final uidPrivateFlags:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    new-instance v0, Lcom/android/server/pm/SharedUserSetting$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/SharedUserSetting$1;-><init>(Lcom/android/server/pm/SharedUserSetting;)V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mObserver:Lcom/android/server/pm/SharedUserSetting$1;

    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v1}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput p1, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    iput p2, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    iput-object p3, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    const/16 p1, 0x2710

    iput p1, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    new-instance p1, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    new-instance p2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string/jumbo p3, "SharedUserSetting.packages"

    const/4 v1, 0x0

    invoke-direct {p2, p1, p1, p3, v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/android/server/pm/SharedUserSetting;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    new-instance p2, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {p2}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    new-instance p3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string/jumbo v1, "SharedUserSetting.mDisabledPackages"

    const/4 v2, 0x0

    invoke-direct {p3, p2, p2, v1, v2}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    iput-object p3, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    invoke-virtual {p2, v0}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    new-instance p1, Lcom/android/server/pm/SharedUserSetting$2;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p0, p2}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/SharedUserSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/SharedUserSetting;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;-><init>(Lcom/android/server/pm/SettingBase;)V

    new-instance v0, Lcom/android/server/pm/SharedUserSetting$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/SharedUserSetting$1;-><init>(Lcom/android/server/pm/SharedUserSetting;)V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mObserver:Lcom/android/server/pm/SharedUserSetting$1;

    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, p1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    iput v1, p0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    iget v1, p1, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    iput v1, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    iget v1, p1, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    iput v1, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    iget-object v1, p1, Lcom/android/server/pm/SharedUserSetting;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedArraySet;

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    iget-object v1, p1, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedArraySet;

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    iget-object v1, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iget-object v0, p1, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    new-instance v0, Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-direct {v0, p1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SharedUserSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method


# virtual methods
.method public final addPackage(Lcom/android/server/pm/PackageSetting;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object v1, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    iget v1, p1, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget v0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    iget v1, p1, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_1
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getProcesses()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SharedUserSetting;->addProcesses(Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method public final addProcesses(Ljava/util/Map;)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedProcess;

    iget-object v2, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedProcess;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    invoke-direct {v2, v1}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;-><init>(Lcom/android/internal/pm/pkg/component/ParsedProcess;)V

    iget-object v3, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v2, v1}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->addStateFrom(Lcom/android/internal/pm/pkg/component/ParsedProcess;Lcom/android/internal/pm/pkg/component/ParsedProcess;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_2
    return-void
.end method

.method public final fixSeInfoLocked()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    if-eqz v0, :cond_7

    iget-object v1, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    move-result v4

    iget v5, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    if-ge v4, v5, :cond_2

    iget-object v3, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    move-result v3

    iput v3, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_2
    iget-object v3, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    iget-object v3, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_6

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    iget v4, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    move v4, v1

    :goto_3
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v5

    or-int/2addr v4, v5

    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iget v6, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    invoke-static {v3, v5, v4, v6}, Lcom/android/server/pm/SELinuxMMAC;->getSeInfo(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;ZI)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iput-object v4, v3, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    :goto_5
    return-void
.end method

.method public final getPackageStates()Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final getPackages()Ljava/util/List;
    .locals 3

    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    if-eqz p0, :cond_4

    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final removePackage(Lcom/android/server/pm/PackageSetting;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    iget v2, p1, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    and-int/2addr v1, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    move v3, v2

    :goto_0
    iget-object v4, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    iget v4, v4, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    or-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_2
    iget v1, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    iget p1, p1, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    :goto_1
    iget-object v1, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    iget-object v1, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    iget v1, v1, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    or-int/2addr p1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->updateProcesses()V

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-void
.end method

.method public final snapshot()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SharedUserSetting{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    const-string/jumbo v1, "}"

    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateProcesses()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object v1, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcesses()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/SharedUserSetting;->addProcesses(Ljava/util/Map;)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
