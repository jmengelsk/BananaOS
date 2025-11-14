.class public Lcom/android/server/pm/CrossProfileAppsServiceImpl;
.super Landroid/content/pm/ICrossProfileApps$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

.field public final mLocalService:Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;)V
    .registers 4

    invoke-direct {p0}, Landroid/content/pm/ICrossProfileApps$Stub;-><init>()V

    new-instance v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mLocalService:Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;

    iput-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    return-void
.end method


# virtual methods
.method public final canConfigureInteractAcrossProfiles(ILjava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_10

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    :cond_10
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final canConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z
    .registers 6

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canUserAttemptToConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_28

    :cond_7
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;

    const/4 v2, 0x2

    invoke-direct {v1, p2, v2, p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;-><init>(IILcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_28

    :cond_1c
    const/16 v0, 0x5d

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasRequestedAppOpPermission(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2a

    :goto_28
    const/4 p0, 0x0

    return p0

    :cond_2a
    iget-object p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2, p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;-><init>(IILcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final canInteractAcrossProfiles(Ljava/lang/String;)Z
    .registers 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_57

    :cond_17
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v3, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4e

    goto :goto_57

    :cond_4e
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_57

    :cond_55
    const/4 p0, 0x1

    return p0

    :cond_57
    :goto_57
    const/4 p0, 0x0

    return p0
.end method

.method public final canRequestInteractAcrossProfiles(Ljava/lang/String;)Z
    .registers 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/UserManager;->getProfileIdsExcludingHidden(IZ)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1c

    goto :goto_22

    :cond_1c
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isProfileOwner(Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_24

    :goto_22
    const/4 p0, 0x0

    return p0

    :cond_24
    const/16 v1, 0x5d

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasRequestedAppOpPermission(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final canUserAttemptToConfigureInteractAcrossProfiles(ILjava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_10

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    :cond_10
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canUserAttemptToConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final canUserAttemptToConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z
    .registers 11

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    move v4, v1

    :goto_12
    if-ge v4, v3, :cond_2e

    aget v5, v0, v4

    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v6

    if-eqz v6, :cond_1d

    goto :goto_2b

    :cond_1d
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-eqz v6, :cond_24

    goto :goto_2b

    :cond_24
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_2e
    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_44

    goto :goto_57

    :cond_44
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isProfileOwner(Ljava/lang/String;[I)Z

    move-result v2

    if-eqz v2, :cond_4b

    goto :goto_57

    :cond_4b
    const/16 v2, 0x5d

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v2, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasRequestedAppOpPermission(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_58

    :goto_57
    return v1

    :cond_58
    iget-object p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v2, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v2, 0x1

    if-nez p2, :cond_90

    array-length p2, v0

    move v3, v1

    :goto_6e
    if-ge v3, p2, :cond_90

    aget v4, v0, v3

    iget-object v5, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v5, p1, v6, v7, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_82

    goto :goto_8d

    :cond_82
    const-string/jumbo v5, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8d

    move v1, v2

    goto :goto_90

    :cond_8d
    :goto_8d
    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    :cond_90
    :goto_90
    xor-int/lit8 p0, v1, 0x1

    return p0
.end method

.method public final clearInteractAcrossProfilesAppOps(I)V
    .registers 8

    const-string/jumbo v0, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v3

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(IIJ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final getTargetUserProfiles(Ljava/lang/String;)Ljava/util/List;
    .registers 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    const/16 v0, 0x7d

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getTargetUserProfilesUnchecked(ILjava/lang/String;)Ljava/util/List;
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2, p0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;-><init>(IILcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final hasInteractAcrossProfilesPermission(IILjava/lang/String;)Z
    .registers 6

    const-string/jumbo v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_22

    const-string/jumbo v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_22

    :cond_14
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {p0, v0, p2, p1, p3}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_20

    return v1

    :cond_20
    const/4 p0, 0x0

    return p0

    :cond_22
    :goto_22
    return v1
.end method

.method public final hasRequestedAppOpPermission(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Landroid/content/pm/IPackageManager;->getAppOpPermissionPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    :catch_f
    const-string p0, "CrossProfileAppsService"

    const-string/jumbo p1, "PackageManager dead. Cannot get permission info"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final isPermissionGranted(ILjava/lang/String;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->checkComponentPermission(ILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final isProfileOwner(Ljava/lang/String;[I)Z
    .registers 10

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_28

    aget v3, p2, v2

    iget-object v4, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v5, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v3, v6}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;II)V

    invoke-interface {v4, v5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    if-nez v3, :cond_19

    move v3, v1

    goto :goto_21

    :cond_19
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_21
    if-eqz v3, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_28
    return v1
.end method

.method public final resetInteractAcrossProfilesAppOps(ILjava/util/List;)V
    .registers 7

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string/jumbo v1, "Not resetting app-op for package "

    const-string v2, " since it is still configurable by users."

    const-string v3, "CrossProfileAppsService"

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_21
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToDefaultMode(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOp(ILjava/lang/String;I)V

    goto :goto_4

    :cond_30
    return-void
.end method

.method public final setInteractAcrossProfilesAppOp(ILjava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_21

    :cond_19
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "INTERACT_ACROSS_USERS or INTERACT_ACROSS_USERS_FULL is required to set the app-op for interacting across profiles."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    :goto_21
    const-string/jumbo v1, "android.permission.MANAGE_APP_OPS_MODES"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    const-string/jumbo v1, "android.permission.CONFIGURE_INTERACT_ACROSS_PROFILES"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_3d

    :cond_34
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "MANAGE_APP_OPS_MODES or CONFIGURE_INTERACT_ACROSS_PROFILES is required to set the app-op for interacting across profiles."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    :goto_3d
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOpUnchecked(IILjava/lang/String;)V

    return-void
.end method

.method public final setInteractAcrossProfilesAppOpForProfileOrThrow(IILjava/lang/String;Z)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v6

    const-string/jumbo v0, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v2, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda15;

    move-object v3, p0

    move v4, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_38

    const-string p0, "Attempt to set mode to existing value of "

    const-string p1, " for "

    const-string p3, " on profile user ID "

    invoke-static {v4, p0, p1, v7, p3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "CrossProfileAppsService"

    invoke-static {p0, p2, p1}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_38
    const/4 p0, -0x1

    invoke-virtual {v3, v6, p0, v7}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(IILjava/lang/String;)Z

    move-result p1

    iget-object p3, v3, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result p3

    const-string/jumbo v0, "android.permission.CONFIGURE_INTERACT_ACROSS_PROFILES"

    invoke-virtual {v3, p3, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(ILjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_57

    iget-object p3, v3, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, v3, v6, v4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;II)V

    invoke-interface {p3, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_62

    :cond_57
    iget-object p3, v3, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object p3

    const/16 v0, 0x5d

    invoke-virtual {p3, v0, v6, v4}, Landroid/app/AppOpsManager;->setUidMode(III)V

    :goto_62
    if-nez p1, :cond_65

    goto :goto_71

    :cond_65
    invoke-virtual {v3, v6, p0, v7}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(IILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6c

    goto :goto_71

    :cond_6c
    iget-object p0, v3, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p0, v6}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->killUid(I)V

    :goto_71
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p2, "android.content.pm.action.CAN_INTERACT_ACROSS_PROFILES_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, v3, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->isCrossProfile()Z

    move-result p2

    if-eqz p2, :cond_97

    const/high16 p2, 0x11000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_9c

    :cond_97
    const/high16 p2, 0x40000000  # 2.0f

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_9c
    iget-object p2, v3, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1, v1, p0}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_aa
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p3, v3, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p3, p1, p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_aa

    :cond_c7
    if-nez p4, :cond_ca

    return-void

    :cond_ca
    const/16 p0, 0x8b

    invoke-static {p0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    iget-object p1, v3, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isCrossProfile()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void
.end method

.method public final setInteractAcrossProfilesAppOpUnchecked(IILjava/lang/String;)V
    .registers 13

    const-string v0, "CrossProfileAppsService"

    if-nez p1, :cond_11

    invoke-virtual {p0, p3, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_11

    const-string/jumbo p0, "Tried to turn on the appop for interacting across profiles for invalid app "

    invoke-static {p0, p3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/os/UserManager;->getProfileIdsExcludingHidden(IZ)[I

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_1e
    if-ge v4, v3, :cond_4f

    aget v5, v1, v4

    iget-object v6, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v7, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0, p3, v5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;I)V

    invoke-interface {v6, v7}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_36

    goto :goto_4c

    :cond_36
    if-ne v5, p2, :cond_3a

    const/4 v6, 0x1

    goto :goto_3b

    :cond_3a
    move v6, v2

    :goto_3b
    :try_start_3b
    invoke-virtual {p0, p1, v5, p3, v6}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOpForProfileOrThrow(IILjava/lang/String;Z)V
    :try_end_3e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_4c

    :catch_3f
    move-exception v6

    const-string/jumbo v7, "Missing package "

    const-string v8, " on profile user ID "

    invoke-static {v5, v7, p3, v8}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_4f
    return-void
.end method

.method public final startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IZLandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 19

    move-object/from16 v7, p8

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    const/16 v0, 0x7e

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v3

    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-static {p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ff

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e8

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    if-eqz p6, :cond_71

    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p7, :cond_64

    if-eqz v7, :cond_5e

    goto :goto_64

    :cond_5e
    const/high16 v0, 0x200000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_69

    :cond_64
    :goto_64
    const/high16 v0, 0x10200000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_69
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_aa

    :cond_71
    if-eq v0, p5, :cond_a7

    invoke-virtual {p0, v3, v2, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8b

    const-string/jumbo v2, "android.permission.START_CROSS_PROFILE_ACTIVITIES"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    goto :goto_8b

    :cond_83
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Attempt to launch activity without one of the required android.permission.INTERACT_ACROSS_PROFILES or android.permission.START_CROSS_PROFILE_ACTIVITIES permissions."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    :goto_8b
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v9, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda9;

    invoke-direct {v9, p0, v0, p5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;II)V

    invoke-interface {v2, v9}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9f

    goto :goto_a7

    :cond_9f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Attempt to launch activity when target user is not in the same profile group."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a7
    :goto_a7
    invoke-virtual {v4, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_aa
    iget-object v9, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v5, p4

    move-object v2, v4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Landroid/content/Intent;IILandroid/content/ComponentName;)V

    invoke-interface {v9, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    if-nez v7, :cond_c4

    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object v7, v0

    goto :goto_cf

    :cond_c4
    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :goto_cf
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p3

    move v8, p5

    move-object/from16 v5, p7

    move-object v4, v2

    move-object v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;ILandroid/os/Bundle;I)I

    return-void

    :cond_e8
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, " attempts to start an activity in other package - "

    invoke-static {p2, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ff
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, " cannot access unrelated user "

    invoke-static {p5, p2, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final startActivityAsUserByIntent(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 17

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-string/jumbo v1, "The intent must have a Component set"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eq v0, p5, :cond_3c

    invoke-static {p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_3c

    :cond_30
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, " cannot access unrelated user "

    invoke-static {p5, p2, p1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    :goto_3c
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v4, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b8

    if-eq v0, p5, :cond_6f

    iget-object p4, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result p4

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, p4, v0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(IILjava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_67

    goto :goto_6f

    :cond_67
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Attempt to launch activity without required android.permission.INTERACT_ACROSS_PROFILES permission or target user is not in the same profile group."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6f
    :goto_6f
    iget-object p4, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, v4, v1, p5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Landroid/content/Intent;II)V

    invoke-interface {p4, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    iget-object p4, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v8, p5

    move-object v5, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;ILandroid/os/Bundle;I)I

    const/16 p1, 0x96

    invoke-static {p1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result p2

    iget-object p3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance p4, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda1;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p2, p5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;II)V

    invoke-interface {p3, p4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void

    :cond_b8
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, " attempts to start an activity in other package - "

    invoke-static {p2, p1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final verifyCallingPackage(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    return-void
.end method
