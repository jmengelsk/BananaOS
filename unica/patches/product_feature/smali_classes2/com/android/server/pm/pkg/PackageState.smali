.class public interface abstract Lcom/android/server/pm/pkg/PackageState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# virtual methods
.method public abstract getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;
.end method

.method public abstract getApexModuleName()Ljava/lang/String;
.end method

.method public abstract getAppId()I
.end method

.method public abstract getCategoryOverride()I
.end method

.method public abstract getCpuAbiOverride()Ljava/lang/String;
.end method

.method public abstract getHiddenApiEnforcementPolicy()I
.end method

.method public abstract getLastModifiedTime()J
.end method

.method public abstract getLastPackageUsageTime()[J
.end method

.method public abstract getLastUpdateTime()J
.end method

.method public abstract getMimeGroups()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPageSizeCompatWarningMessage(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/io/File;
.end method

.method public abstract getPrimaryCpuAbi()Ljava/lang/String;
.end method

.method public abstract getRestrictUpdateHash()[B
.end method

.method public abstract getSeInfo()Ljava/lang/String;
.end method

.method public abstract getSecondaryCpuAbi()Ljava/lang/String;
.end method

.method public abstract getSharedLibraryDependencies()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/SharedLibrary;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSharedUserAppId()I
.end method

.method public abstract getSigningInfo()Landroid/content/pm/SigningInfo;
.end method

.method public abstract getStateForUser(Landroid/os/UserHandle;)Lcom/android/server/pm/pkg/PackageUserState;
.end method

.method public abstract getTargetSdkVersion()I
.end method

.method public getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;
    .locals 0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getUserStates()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/PackageUserState;

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/server/pm/pkg/PackageUserState;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserState;

    :cond_0
    return-object p0
.end method

.method public abstract getUserStates()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Lcom/android/server/pm/pkg/PackageUserState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUsesLibraryFiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUsesSdkLibraries()[Ljava/lang/String;
.end method

.method public abstract getUsesSdkLibrariesOptional()[Z
.end method

.method public abstract getUsesSdkLibrariesVersionsMajor()[J
.end method

.method public abstract getUsesStaticLibraries()[Ljava/lang/String;
.end method

.method public abstract getUsesStaticLibrariesVersions()[J
.end method

.method public abstract getVersionCode()J
.end method

.method public abstract getVolumeUuid()Ljava/lang/String;
.end method

.method public abstract hasSharedUser()Z
.end method

.method public abstract isApex()Z
.end method

.method public abstract isApkInUpdatedApex()Z
.end method

.method public abstract isDebuggable()Z
.end method

.method public abstract isDefaultToDeviceProtectedStorage()Z
.end method

.method public abstract isExternalStorage()Z
.end method

.method public abstract isForceQueryableOverride()Z
.end method

.method public abstract isHiddenUntilInstalled()Z
.end method

.method public abstract isInstallPermissionsFixed()Z
.end method

.method public abstract isLeavingSharedUser()Z
.end method

.method public abstract isOdm()Z
.end method

.method public abstract isOem()Z
.end method

.method public abstract isPageSizeAppCompatEnabled()Z
.end method

.method public abstract isPendingRestore()Z
.end method

.method public abstract isPersistent()Z
.end method

.method public abstract isPrivileged()Z
.end method

.method public abstract isProduct()Z
.end method

.method public abstract isRequiredForSystemUser()Z
.end method

.method public abstract isScannedAsStoppedSystemApp()Z
.end method

.method public abstract isSystem()Z
.end method

.method public abstract isSystemExt()Z
.end method

.method public abstract isUpdateAvailable()Z
.end method

.method public abstract isUpdatedSystemApp()Z
.end method

.method public abstract isVendor()Z
.end method
