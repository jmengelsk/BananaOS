.class public interface abstract Lcom/android/server/pm/Computer;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/snapshot/PackageDataSnapshot;


# virtual methods
.method public abstract activitySupportsIntentAsUser(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;I)Z
.end method

.method public abstract applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;
.end method

.method public abstract canAccessComponent(IILandroid/content/ComponentName;)Z
.end method

.method public abstract canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
.end method

.method public abstract canPackageQuery(Ljava/lang/String;[Ljava/lang/String;I)[Z
.end method

.method public abstract canQueryPackage(ILjava/lang/String;)Z
.end method

.method public abstract canRequestPackageInstalls(IILjava/lang/String;Z)Z
.end method

.method public abstract canViewInstantApps(II)Z
.end method

.method public abstract canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract checkPackageFrozen(Ljava/lang/String;)V
.end method

.method public abstract checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract checkUidPermission(Ljava/lang/String;I)I
.end method

.method public abstract checkUidSignatures(II)I
.end method

.method public abstract checkUidSignaturesForAllUsers(II)I
.end method

.method public abstract currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
.end method

.method public abstract dumpKeySet(Lcom/android/server/pm/DumpState;Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public abstract dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
.end method

.method public abstract dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V
.end method

.method public abstract dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V
.end method

.method public abstract dumpSharedLibrariesProto(Landroid/util/proto/ProtoOutputStream;)V
.end method

.method public abstract dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
.end method

.method public abstract dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V
.end method

.method public abstract enforceCrossUserOrProfilePermission(IILjava/lang/String;)V
.end method

.method public abstract enforceCrossUserPermission(Ljava/lang/String;IIZZ)V
.end method

.method public abstract filterAppAccess(II)Z
.end method

.method public abstract filterAppAccess(IILjava/lang/String;Z)Z
.end method

.method public abstract filterAppAccess(Lcom/android/server/pm/pkg/AndroidPackage;II)Z
.end method

.method public varargs abstract filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract findPersistentPreferredActivity(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZI)Landroid/content/pm/ResolveInfo;
.end method

.method public abstract findPreferredActivityInternal2(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
.end method

.method public abstract findSharedNonSystemLibraries(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/util/List;
.end method

.method public abstract getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
.end method

.method public abstract getActivityInfoInternal(IIJLandroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
.end method

.method public abstract getAllAvailablePackageNames()[Ljava/lang/String;
.end method

.method public abstract getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract getAllPackages()Ljava/util/List;
.end method

.method public abstract getAppOpPermissionPackages(Ljava/lang/String;I)[Ljava/lang/String;
.end method

.method public abstract getApplicationEnabledSetting(Ljava/lang/String;I)I
.end method

.method public abstract getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
.end method

.method public abstract getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getApplicationInfoInternal(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getBlockUninstall(ILjava/lang/String;)Z
.end method

.method public abstract getBlockUninstallForUser(Ljava/lang/String;I)Z
.end method

.method public abstract getComponentEnabledSetting(IILandroid/content/ComponentName;)I
.end method

.method public abstract getComponentEnabledSettingInternal(IILandroid/content/ComponentName;)I
.end method

.method public abstract getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;
.end method

.method public abstract getDeclaredSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract getDefaultHomeActivity(I)Landroid/content/ComponentName;
.end method

.method public abstract getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
.end method

.method public abstract getDisabledSystemPackageStates()Landroid/util/ArrayMap;
.end method

.method public abstract getFlagsForUid(I)I
.end method

.method public abstract getFrozenPackages()Lcom/android/server/utils/WatchedArrayMap;
.end method

.method public abstract getGrantImplicitAccessProviderInfo(ILjava/lang/String;)Landroid/content/pm/ProviderInfo;
.end method

.method public abstract getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;
.end method

.method public abstract getHomeActivitiesAsUser(ILjava/util/List;)Landroid/content/ComponentName;
.end method

.method public abstract getHomeIntent()Landroid/content/Intent;
.end method

.method public abstract getInstallReason(Ljava/lang/String;I)I
.end method

.method public abstract getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;
.end method

.method public abstract getInstalledApplications(IIJZ)Ljava/util/List;
.end method

.method public abstract getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract getInstallerPackageName(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInstantAppInstallerComponent()Landroid/content/ComponentName;
.end method

.method public abstract getInstantAppInstallerInfo()Landroid/content/pm/ResolveInfo;
.end method

.method public abstract getInstantAppPackageName(I)Ljava/lang/String;
.end method

.method public abstract getInstrumentationInfoAsUser(Landroid/content/ComponentName;II)Landroid/content/pm/InstrumentationInfo;
.end method

.method public abstract getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
.end method

.method public abstract getNameForUid(I)Ljava/lang/String;
.end method

.method public abstract getNamesForUids([I)[Ljava/lang/String;
.end method

.method public abstract getNotifyPackagesForReplacedReceived([Ljava/lang/String;)Landroid/util/ArraySet;
.end method

.method public abstract getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;
.end method

.method public abstract getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;
.end method

.method public abstract getPackageGids(Ljava/lang/String;JI)[I
.end method

.method public abstract getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
.end method

.method public abstract getPackageInfoInternal(IILjava/lang/String;JJ)Landroid/content/pm/PackageInfo;
.end method

.method public abstract getPackageOrSharedUser(I)Landroid/util/Pair;
.end method

.method public abstract getPackageStartability(IILjava/lang/String;Z)I
.end method

.method public abstract getPackageStateFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;
.end method

.method public abstract getPackageStateForInstalledAndFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;
.end method

.method public abstract getPackageStateInternal(ILjava/lang/String;)Lcom/android/server/pm/PackageSetting;
.end method

.method public abstract getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
.end method

.method public abstract getPackageStates()Landroid/util/ArrayMap;
.end method

.method public abstract getPackageUid(Ljava/lang/String;JI)I
.end method

.method public abstract getPackageUidInternal(IIJLjava/lang/String;)I
.end method

.method public abstract getPackagesForAppId(I)Ljava/util/List;
.end method

.method public abstract getPackagesForUid(I)[Ljava/lang/String;
.end method

.method public abstract getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Landroid/util/Pair;
.end method

.method public abstract getPersistentApplications(IZ)Ljava/util/List;
.end method

.method public abstract getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;
.end method

.method public abstract getPrivateFlagsForUid(I)I
.end method

.method public abstract getProcessesForUid(I)Landroid/util/ArrayMap;
.end method

.method public abstract getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;
.end method

.method public abstract getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
.end method

.method public abstract getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;
.end method

.method public abstract getSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;
.end method

.method public abstract getSharedLibraryInfo(JLjava/lang/String;)Landroid/content/pm/SharedLibraryInfo;
.end method

.method public abstract getSharedUser(I)Lcom/android/server/pm/SharedUserSetting;
.end method

.method public abstract getSharedUserPackages(I)Landroid/util/ArraySet;
.end method

.method public abstract getSharedUserPackagesForPackage(ILjava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getSharedUsers()Landroid/util/ArrayMap;
.end method

.method public abstract getSigningDetails(I)Landroid/content/pm/SigningDetails;
.end method

.method public abstract getSigningDetails(Ljava/lang/String;)Landroid/content/pm/SigningDetails;
.end method

.method public abstract getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
.end method

.method public abstract getSystemSharedLibraryNamesAndPaths()Landroid/util/ArrayMap;
.end method

.method public abstract getTargetSdkVersion(Ljava/lang/String;)I
.end method

.method public abstract getUidForSharedUser(Ljava/lang/String;)I
.end method

.method public abstract getUidTargetSdkVersion(I)I
.end method

.method public abstract getUnusedPackages(J)Ljava/util/Set;
.end method

.method public getUsed()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getUserInfos()[Landroid/content/pm/UserInfo;
.end method

.method public abstract getVersion()I
.end method

.method public abstract getVisibilityAllowList(ILjava/lang/String;)[I
.end method

.method public abstract getVisibilityAllowLists(Ljava/lang/String;[I)Landroid/util/SparseArray;
.end method

.method public abstract getVolumePackages(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract hasSigningCertificate(Ljava/lang/String;[BI)Z
.end method

.method public abstract hasUidSigningCertificate(I[BI)Z
.end method

.method public abstract isApexPackage(Ljava/lang/String;)Z
.end method

.method public abstract isApplicationEffectivelyEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z
.end method

.method public abstract isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z
.end method

.method public abstract isCallerSameApp(ILjava/lang/String;)Z
.end method

.method public abstract isCallerSameApp(ILjava/lang/String;Z)Z
.end method

.method public abstract isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;Ljava/lang/String;JI)Z
.end method

.method public abstract isInstallDisabledForPackage(IILjava/lang/String;)Z
.end method

.method public abstract isInstantApp(Ljava/lang/String;I)Z
.end method

.method public abstract isInstantAppInternal(IILjava/lang/String;)Z
.end method

.method public abstract isPackageAvailable(Ljava/lang/String;I)Z
.end method

.method public abstract isPackageQuarantinedForUser(Ljava/lang/String;I)Z
.end method

.method public abstract isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
.end method

.method public abstract isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
.end method

.method public abstract isPackageStoppedForUser(Ljava/lang/String;I)Z
.end method

.method public abstract isPackageSuspendedForUser(Ljava/lang/String;I)Z
.end method

.method public abstract isSuspendingAnyPackages(II)Z
.end method

.method public abstract isUidPrivileged(I)Z
.end method

.method public abstract queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract queryInstrumentationAsUser(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
.end method

.method public abstract queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;
.end method

.method public abstract queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZZ)Ljava/util/List;
.end method

.method public abstract queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;
.end method

.method public abstract querySyncProviders(Ljava/util/List;Ljava/util/List;Z)V
.end method

.method public abstract resolveContentProvider(IIJLjava/lang/String;)Landroid/content/pm/ProviderInfo;
.end method

.method public abstract resolveContentProviderForUid(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;
.end method

.method public abstract resolveInternalPackageName(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
.end method

.method public abstract shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
.end method

.method public abstract updateFlagsForResolve(IIJZZ)J
.end method

.method public abstract use()Lcom/android/server/pm/ComputerEngine;
.end method
