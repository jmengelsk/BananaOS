.class public interface abstract Lcom/android/server/pm/permission/PermissionManagerServiceInterface;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/permission/PermissionManagerInternal;


# virtual methods
.method public abstract addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
.end method

.method public abstract addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
.end method

.method public abstract addPermission(Landroid/content/pm/PermissionInfo;Z)Z
.end method

.method public abstract applyRuntimePermissionsForAllApplicationsForMDM(II)Z
.end method

.method public abstract applyRuntimePermissionsForMDM(Ljava/lang/String;Ljava/util/List;II)Z
.end method

.method public abstract checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getAllAppOpPermissionPackages()Ljava/util/Map;
.end method

.method public abstract getAllPermissionGroups(I)Ljava/util/List;
.end method

.method public abstract getAllPermissionStates(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
.end method

.method public abstract getAllPermissionsWithProtection()Ljava/util/List;
.end method

.method public abstract getAllPermissionsWithProtectionFlags()Ljava/util/List;
.end method

.method public abstract getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;
.end method

.method public abstract getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getDefaultPermissionGrantFingerprint(I)Ljava/lang/String;
.end method

.method public abstract getGidsForUid(I)[I
.end method

.method public abstract getGrantedPermissions(ILjava/lang/String;)Ljava/util/Set;
.end method

.method public abstract getInstalledPermissions(Ljava/lang/String;)Ljava/util/Set;
.end method

.method public abstract getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;
.end method

.method public abstract getLegacyPermissions()Ljava/util/List;
.end method

.method public abstract getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract getPermissionGids(ILjava/lang/String;)[I
.end method

.method public abstract getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
.end method

.method public abstract getPermissionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/content/pm/PermissionInfo;
.end method

.method public abstract getPermissionRequestState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;
.end method

.method public abstract getRequestedRuntimePermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract getSplitPermissions()Ljava/util/List;
.end method

.method public abstract grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract isPermissionRevokedByPolicy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isPermissionsReviewRequired(ILjava/lang/String;)Z
.end method

.method public abstract onPackageAdded(Lcom/android/server/pm/PackageSetting;ZLcom/android/server/pm/pkg/AndroidPackage;)V
.end method

.method public abstract onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V
.end method

.method public abstract onPackageRemoved(Lcom/android/server/pm/pkg/AndroidPackage;)V
.end method

.method public abstract onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;I)V
.end method

.method public abstract onStorageVolumeMounted(Ljava/lang/String;Z)V
.end method

.method public abstract onSystemReady()V
.end method

.method public abstract onUserCreated(I)V
.end method

.method public abstract onUserRemoved(I)V
.end method

.method public abstract queryPermissionsByGroup(ILjava/lang/String;)Ljava/util/List;
.end method

.method public abstract readLegacyPermissionStateTEMP()V
.end method

.method public abstract readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
.end method

.method public abstract removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
.end method

.method public abstract removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
.end method

.method public abstract removePackageGrantedPermissionsForMDM(Ljava/lang/String;)V
.end method

.method public abstract removePermission(Ljava/lang/String;)V
.end method

.method public abstract resetRuntimePermissions(Lcom/android/server/pm/pkg/AndroidPackage;I)V
.end method

.method public abstract resetRuntimePermissionsForUser(I)V
.end method

.method public abstract revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
.end method

.method public abstract revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract setDefaultPermissionGrantFingerprint(I)V
.end method

.method public abstract setLicensePermissionsForMDM(Ljava/lang/String;Ljava/util/Set;)I
.end method

.method public abstract shouldShowRequestPermissionRationale(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V
.end method

.method public abstract updatePermissionFlagsForAllApps(III)V
.end method

.method public abstract writeLegacyPermissionStateTEMP()V
.end method

.method public abstract writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
.end method
