.class public final Lcom/android/server/permission/access/permission/PermissionService;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerServiceInterface;


# static fields
.field public static final BACKUP_TIMEOUT_MILLIS:J

.field public static final FULLER_PERMISSIONS:Landroid/util/ArrayMap;

.field public static final NOTIFICATIONS_PERMISSIONS:Landroid/util/ArraySet;


# instance fields
.field public final context:Landroid/content/Context;

.field public final devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

.field public handler:Landroid/os/Handler;

.field public handlerThread:Landroid/os/HandlerThread;

.field public final isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

.field public final mPackageGrantedPermissions:Landroid/util/ArrayMap;

.field public mSystemReady:Z

.field public metricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mountedStorageVolumes:Landroid/util/ArraySet;

.field public onPermissionFlagsChangedListener:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

.field public onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

.field public packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

.field public permissionControllerManager:Landroid/permission/PermissionControllerManager;

.field public platformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field public final policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

.field public final service:Lcom/android/server/permission/access/AccessCheckingService;

.field public final storageVolumeLock:Ljava/lang/Object;

.field public final storageVolumePackageNames:Landroid/util/ArrayMap;

.field public systemConfig:Lcom/android/server/SystemConfig;

.field public userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public userManagerService:Lcom/android/server/pm/UserManagerService;

.field public virtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/android/server/permission/access/permission/PermissionService;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    const-string/jumbo v0, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v2, "asList(...)"

    invoke-static {v2, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/android/server/permission/access/permission/PermissionService;->NOTIFICATIONS_PERMISSIONS:Landroid/util/ArraySet;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/permission/access/permission/PermissionService;->BACKUP_TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/AccessCheckingService;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    const-string/jumbo v0, "uid"

    const-string/jumbo v1, "permission"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.server.permission.access.permission.AppIdPermissionPolicy"

    invoke-static {v2, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    iput-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    const-string/jumbo v1, "device-permission"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.server.permission.access.permission.DevicePermissionPolicy"

    invoke-static {v1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumeLock:Ljava/lang/Object;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->mountedStorageVolumes:Landroid/util/ArraySet;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumePackageNames:Landroid/util/ArrayMap;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public static final access$enforcePermissionTreeSize(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Landroid/content/pm/PermissionInfo;Lcom/android/server/permission/access/permission/Permission;)V
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x3e8

    iget p3, p3, Lcom/android/server/permission/access/permission/Permission;->appId:I

    if-eq p3, v0, :cond_5e

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_20
    if-ge v0, p1, :cond_4a

    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/permission/Permission;

    check-cast v2, Ljava/lang/String;

    iget v2, v3, Lcom/android/server/permission/access/permission/Permission;->appId:I

    if-ne p3, v2, :cond_47

    iget-object v2, v3, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, v3, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    move v1, v3

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_4a
    invoke-virtual {p2}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result p0

    add-int/2addr p0, v1

    const p1, 0x8000

    if-gt p0, p1, :cond_55

    goto :goto_5e

    :cond_55
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Permission tree size cap exceeded"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5e
    :goto_5e
    return-void
.end method

.method public static final access$getAndEnforcePermissionTree(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->findPermissionTree(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object p0

    if-eqz p0, :cond_1b

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    iget p2, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    if-ne p2, p1, :cond_1b

    return-object p0

    :cond_1b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Calling UID "

    const-string p2, " is not allowed to add to or remove from the permission tree"

    invoke-static {v0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final access$handlePermissionStateInternal(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IIILcom/android/server/permission/access/permission/Permission;I)Z
    .registers 19

    move/from16 v0, p4

    move-object/from16 v7, p5

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    iget-object v2, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, p1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-static {v8, p2, p3, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v0, v10, :cond_22

    const/4 v4, 0x2

    if-eq v0, v4, :cond_20

    move v11, v2

    goto :goto_23

    :cond_20
    move v11, v9

    goto :goto_23

    :cond_22
    move v11, v10

    :goto_23
    if-eqz v11, :cond_28

    or-int/lit8 v0, v1, 0x10

    goto :goto_2a

    :cond_28
    and-int/lit8 v0, v1, -0x11

    :goto_2a
    const/4 v1, 0x4

    move/from16 v2, p6

    invoke-static {v7, v0, v1, v2}, Lcom/android/server/permission/access/permission/PermissionFlags;->updateFlags(Lcom/android/server/permission/access/permission/Permission;III)I

    move-result v6

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    iget-object v1, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v4, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/4 v5, -0x1

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    iget-object p1, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, p2, p3, p1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result p0

    if-ne v11, p0, :cond_52

    return v10

    :cond_52
    return v9
.end method

.method public static final access$killUid(Lcom/android/server/permission/access/permission/PermissionService;ILjava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    if-eqz p0, :cond_23

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const-class v1, Landroid/os/Binder;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_17
    invoke-interface {p0, v0, p1, p2}, Landroid/app/IActivityManager;->killUidForPermissionChange(IILjava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_20
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_20

    :catchall_1b
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_20
    :goto_20
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_23
    return-void
.end method

.method public static final access$setRuntimePermissionGranted(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V
    .registers 25

    move-object/from16 v5, p4

    move-object/from16 v6, p10

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/permission/access/permission/Permission;

    if-nez v7, :cond_2f

    if-nez p9, :cond_22

    goto/16 :goto_1de

    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Unknown permission "

    invoke-static {p1, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v0, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    const/4 v10, 0x1

    const-string v11, " to package "

    const-string/jumbo v12, "Permission "

    if-nez v0, :cond_bc

    iget-object v0, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/high16 v1, 0x4000000

    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_6e

    if-nez p7, :cond_bc

    if-nez p9, :cond_62

    goto/16 :goto_1de

    :cond_62
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, " is managed by role"

    invoke-static {v12, v5, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6e
    iget-object v0, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    if-ne v0, v10, :cond_aa

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x17

    if-ge v0, v1, :cond_80

    goto/16 :goto_1de

    :cond_80
    if-eqz p6, :cond_bc

    invoke-interface/range {p2 .. p3}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_bc

    iget-object v0, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-nez v0, :cond_bc

    if-nez p9, :cond_9e

    goto/16 :goto_1de

    :cond_9e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Cannot grant non-instant permission "

    invoke-static {p1, v5, v11, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_aa
    if-nez p9, :cond_ae

    goto/16 :goto_1de

    :cond_ae
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, " requested by package "

    const-string v0, " is not a changeable permission type"

    invoke-static {v12, v5, p1, v9, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_bc
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    move-object v0, p0

    move-object v3, p1

    move/from16 v2, p3

    move-object v4, v5

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    move-object v5, v4

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v2, "PermissionService"

    if-nez v0, :cond_f5

    if-nez v13, :cond_f5

    if-eqz p9, :cond_1de

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t requested by package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f5
    const/16 v0, 0x100

    invoke-static {v13, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    const-string v3, " for package "

    if-eqz v0, :cond_11f

    if-eqz p9, :cond_1de

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Cannot change system fixed permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11f
    const/16 v0, 0x80

    invoke-static {v13, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_149

    if-nez p8, :cond_149

    if-eqz p9, :cond_1de

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Cannot change policy fixed permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_149
    if-eqz p6, :cond_173

    const/high16 v0, 0x40000

    invoke-static {v13, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_173

    if-eqz p9, :cond_1de

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Cannot grant hard-restricted non-exempt permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_173
    if-eqz p6, :cond_19d

    const/high16 v0, 0x80000

    invoke-static {v13, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_19d

    if-eqz p9, :cond_1de

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Cannot grant soft-restricted non-exempt permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19d
    if-eqz p6, :cond_1a3

    or-int/lit8 v0, v13, 0x10

    :goto_1a1
    move v3, v0

    goto :goto_1a6

    :cond_1a3
    and-int/lit8 v0, v13, -0x11

    goto :goto_1a1

    :goto_1a6
    if-ne v13, v3, :cond_1a9

    goto :goto_1de

    :cond_1a9
    move-object v0, p0

    move-object v4, p1

    move/from16 v2, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->setPermissionFlagsWithPolicy(IIILcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result p1

    if-ne p1, v10, :cond_1de

    if-eqz p6, :cond_1bf

    const/16 p1, 0x4db

    goto :goto_1c1

    :cond_1bf
    const/16 p1, 0x4dd

    :goto_1c1
    new-instance v1, Landroid/metrics/LogMaker;

    invoke-direct {v1, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v1, v9}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    const/16 p1, 0x4d9

    invoke-virtual {v1, p1, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-eqz p0, :cond_1d6

    invoke-virtual {p0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void

    :cond_1d6
    const-string/jumbo p0, "metricsLogger"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1de
    :goto_1de
    return-void
.end method

.method public static final access$updateLicensePermissionInternalMDM(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;IZ)Z
    .registers 16

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    goto/16 :goto_b8

    :cond_14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    new-instance v3, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-eqz v4, :cond_d2

    invoke-interface {v4}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v4

    :try_start_25
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->filtered(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v1
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_bf

    :try_start_2d
    invoke-interface {v1, p2}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p2
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_c2

    :try_start_31
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    iput-object p2, v3, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_bf

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    iget-object p2, v3, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/android/server/permission/access/MutableUserState;

    invoke-virtual {p2}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p2

    check-cast p2, Lcom/android/server/permission/access/immutable/IndexedMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const/16 v0, 0x10

    if-eqz p5, :cond_70

    or-int/2addr p2, v0

    :goto_6e
    move v9, p2

    goto :goto_73

    :cond_70
    and-int/lit8 p2, p2, -0x11

    goto :goto_6e

    :goto_73
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    const/4 v8, -0x1

    move-object v4, p1

    move-object v7, p3

    move v6, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v4, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-static {p0, v5, v6, v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_8f

    goto :goto_be

    :cond_8f
    const/4 p2, 0x2

    invoke-static {p0, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_97

    goto :goto_b8

    :cond_97
    const/4 p2, 0x4

    invoke-static {p0, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_9f

    goto :goto_be

    :cond_9f
    const/16 p2, 0x400

    invoke-static {p0, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-nez p2, :cond_be

    const/16 p2, 0x800

    invoke-static {p0, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_b0

    goto :goto_be

    :cond_b0
    const/high16 p1, 0x40000

    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    if-eqz p1, :cond_b9

    :goto_b8
    return v2

    :cond_b9
    invoke-static {p0, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    return p0

    :cond_be
    :goto_be
    return p1

    :catchall_bf
    move-exception v0

    move-object p0, v0

    goto :goto_cb

    :catchall_c2
    move-exception v0

    move-object p0, v0

    :try_start_c4
    throw p0
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c5

    :catchall_c5
    move-exception v0

    move-object p1, v0

    :try_start_c7
    invoke-static {v1, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_cb
    .catchall {:try_start_c7 .. :try_end_cb} :catchall_bf

    :goto_cb
    :try_start_cb
    throw p0
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_cc

    :catchall_cc
    move-exception v0

    move-object p1, v0

    invoke-static {v4, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    :cond_d2
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final access$updatePermissionFlags(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V
    .registers 23

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p8, :cond_e

    move/from16 v0, p6

    and-int/lit16 v0, v0, -0x7831

    move/from16 v1, p7

    and-int/lit16 v1, v1, -0x7831

    goto :goto_12

    :cond_e
    move/from16 v0, p6

    move/from16 v1, p7

    :goto_12
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/permission/Permission;

    if-nez v2, :cond_3b

    if-nez p9, :cond_2e

    return-void

    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Unknown permission "

    invoke-static {p1, p4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    move-object v3, p0

    move-object v6, p1

    move v4, p2

    move v5, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-nez p10, :cond_70

    if-nez v9, :cond_70

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p1, p11

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t requested by package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p1, p12

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PermissionService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_70
    invoke-static {v2, v9, v0, v1}, Lcom/android/server/permission/access/permission/PermissionFlags;->updateFlags(Lcom/android/server/permission/access/permission/Permission;III)I

    move-result v0

    move-object/from16 p6, p0

    move-object/from16 p10, p1

    move/from16 p7, p2

    move/from16 p8, p3

    move-object/from16 p11, p4

    move-object/from16 p12, p5

    move/from16 p9, v0

    invoke-virtual/range {p6 .. p12}, Lcom/android/server/permission/access/permission/PermissionService;->setPermissionFlagsWithPolicy(IIILcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static dumpAppIdState(Landroid/util/IndentingPrintWriter;ILcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "App ID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_25
    if-ge v6, v4, :cond_23c

    iget-object v7, v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v3, v6}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v8

    check-cast v8, Lcom/android/server/permission/access/MutableUserState;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "User: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v7, "Permissions:"

    invoke-virtual {v0, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v8}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/immutable/IndexedMap;

    const-string v9, ", flags="

    const-string v10, ": granted="

    if-eqz v7, :cond_a4

    iget-object v11, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_68
    if-ge v12, v11, :cond_a4

    iget-object v13, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    iget-object v14, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    check-cast v13, Ljava/lang/String;

    invoke-static {v14}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v15

    invoke-static {v14}, Lcom/android/server/permission/access/permission/PermissionFlags;->toString(I)Ljava/lang/String;

    move-result-object v14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_68

    :cond_a4
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v8}, Lcom/android/server/permission/access/MutableUserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    if-eqz v5, :cond_142

    iget-object v7, v5, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/4 v11, 0x0

    :goto_ba
    if-ge v11, v7, :cond_142

    iget-object v12, v5, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v11}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v13

    check-cast v13, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v12, Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "Permissions (Device "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "):"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v12, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_eb
    if-ge v14, v12, :cond_135

    iget-object v15, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v3

    iget-object v3, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    check-cast v15, Ljava/lang/String;

    move/from16 v17, v3

    invoke-static/range {v17 .. v17}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v3

    move/from16 v18, v4

    invoke-static/range {v17 .. v17}, Lcom/android/server/permission/access/permission/PermissionFlags;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v16

    move-object/from16 v5, v17

    move/from16 v4, v18

    goto :goto_eb

    :cond_135
    move-object/from16 v16, v3

    move/from16 v18, v4

    move-object/from16 v17, v5

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_ba

    :cond_142
    move-object/from16 v16, v3

    move/from16 v18, v4

    const-string v3, "App ops:"

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v8}, Lcom/android/server/permission/access/MutableUserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    const-string v5, ": mode="

    if-eqz v4, :cond_195

    iget-object v7, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_163
    if-ge v9, v7, :cond_195

    iget-object v10, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    iget-object v11, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    check-cast v10, Ljava/lang/String;

    invoke-static {v11}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_163

    :cond_195
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    if-eqz v2, :cond_231

    iget-object v4, v2, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_1a1
    if-ge v7, v4, :cond_231

    invoke-virtual {v2, v7}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Package: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v10, v8, Lcom/android/server/permission/access/MutableUserState;->packageVersionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    iget-object v10, v10, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    check-cast v10, Lcom/android/server/permission/access/immutable/IndexedMap;

    iget-object v10, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "version="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v8}, Lcom/android/server/permission/access/MutableUserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/immutable/IndexedMap;

    if-eqz v9, :cond_227

    iget-object v10, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_1f5
    if-ge v11, v10, :cond_227

    iget-object v12, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    check-cast v12, Ljava/lang/String;

    invoke-static {v13}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1f5

    :cond_227
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1a1

    :cond_231
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v16

    move/from16 v4, v18

    goto/16 :goto_25

    :cond_23c
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public static generatePermissionInfo(Lcom/android/server/permission/access/permission/Permission;II)Landroid/content/pm/PermissionInfo;
    .registers 5

    new-instance v0, Landroid/content/pm/PermissionInfo;

    iget-object p0, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    iget p0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v1, 0x40000000  # 2.0f

    or-int/2addr p0, v1

    iput p0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 p0, 0x80

    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-nez p0, :cond_19

    const/4 p0, 0x0

    iput-object p0, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    :cond_19
    const/16 p0, 0x1a

    if-ge p2, p0, :cond_26

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_26

    iput p0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    :cond_26
    return-object v0
.end method

.method public static isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z
    .registers 4

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->filtered(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p0

    :try_start_c
    invoke-interface {p0, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_19

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return p1

    :catchall_19
    move-exception p1

    :try_start_1a
    throw p1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception p2

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static isRootOrSystemUid(I)Z
    .registers 2

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    if-eqz p0, :cond_c

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/4 p0, 0x1

    return p0
.end method

.method public static setRuntimePermissionGranted$default(Lcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    and-int/lit8 v2, p7, 0x20

    const/4 v4, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_e

    move v2, v11

    goto :goto_f

    :cond_e
    move v2, v4

    :goto_f
    and-int/lit8 v5, p7, 0x40

    const/4 v6, 0x0

    if-eqz v5, :cond_16

    move-object v5, v6

    goto :goto_18

    :cond_16
    move-object/from16 v5, p6

    :goto_18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p5, :cond_22

    const-string/jumbo v7, "grantRuntimePermission"

    :goto_20
    move-object v10, v7

    goto :goto_26

    :cond_22
    const-string/jumbo v7, "revokeRuntimePermission"

    goto :goto_20

    :goto_26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    iget-object v8, v0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-eqz v8, :cond_1a8

    invoke-virtual {v8, v3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v8

    if-nez v8, :cond_4f

    const-string/jumbo v0, "PermissionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Unknown user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4f
    invoke-virtual {v0, v10, v3, v4, v4}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(Ljava/lang/String;IZZ)V

    if-eqz p5, :cond_58

    const-string/jumbo v8, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    goto :goto_5b

    :cond_58
    const-string/jumbo v8, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    :goto_5b
    iget-object v9, v0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-virtual {v9, v8, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v9, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz v9, :cond_1a1

    const/4 v12, 0x7

    invoke-virtual {v9, v12, v11}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v9

    const-string v12, "<this>"

    invoke-static {v12, v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v12, v9

    if-eqz v12, :cond_199

    aget-object v9, v9, v11

    iget-object v12, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-eqz v12, :cond_192

    invoke-interface {v12}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v12

    :try_start_80
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v13

    invoke-interface {v12, v7, v13}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->filtered(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v13
    :try_end_88
    .catchall {:try_start_80 .. :try_end_88} :catchall_182

    :try_start_88
    invoke-interface {v13, v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v14
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_184

    :try_start_8c
    invoke-interface {v13}, Ljava/lang/AutoCloseable;->close()V

    iput-object v14, v8, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v12}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pkg/PackageState;
    :try_end_9b
    .catchall {:try_start_8c .. :try_end_9b} :catchall_182

    invoke-interface {v12}, Ljava/lang/AutoCloseable;->close()V

    iget-object v12, v8, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v12, :cond_a9

    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v12

    goto :goto_aa

    :cond_a9
    move-object v12, v6

    :goto_aa
    if-nez v12, :cond_c7

    const-string/jumbo v0, "PermissionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Unknown package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c7
    invoke-static {v7}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    move-result v1

    if-nez v1, :cond_dd

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    if-ne v1, v7, :cond_db

    goto :goto_dd

    :cond_db
    move v7, v11

    goto :goto_de

    :cond_dd
    :goto_dd
    move v7, v4

    :goto_de
    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    const-string/jumbo v9, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {v1, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_eb

    move v1, v4

    goto :goto_ec

    :cond_eb
    move v1, v11

    :goto_ec
    iget-object v12, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v12}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    :try_start_f3
    invoke-static {v12}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v9

    if-eqz v9, :cond_177

    invoke-virtual {v9}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v14

    move v15, v1

    new-instance v1, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v1, v9, v14}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    iget-object v9, v0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionFlagsChangedListener:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    if-eqz v9, :cond_170

    if-eqz v2, :cond_10b

    iput-boolean v4, v9, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isKillRuntimePermissionRevokedUidsSkipped:Z

    :cond_10b
    if-eqz v5, :cond_112

    iget-object v2, v9, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_112
    iget-object v2, v8, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/pkg/PackageState;

    const/4 v9, 0x1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move v8, v15

    invoke-static/range {v0 .. v10}, Lcom/android/server/permission/access/permission/PermissionService;->access$setRuntimePermissionGranted(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V

    invoke-static {v12}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {v12, v14}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    invoke-static {v12}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object v1, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v2, v11

    :goto_138
    if-ge v2, v1, :cond_16c

    iget-object v3, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v5, v11

    :goto_151
    if-ge v5, v3, :cond_169

    iget-object v6, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_166
    .catchall {:try_start_f3 .. :try_end_166} :catchall_16e

    add-int/lit8 v5, v5, 0x1

    goto :goto_151

    :cond_169
    add-int/lit8 v2, v2, 0x1

    goto :goto_138

    :cond_16c
    monitor-exit v13

    return-void

    :catchall_16e
    move-exception v0

    goto :goto_17e

    :cond_170
    :try_start_170
    const-string/jumbo v0, "onPermissionFlagsChangedListener"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_177
    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6
    :try_end_17e
    .catchall {:try_start_170 .. :try_end_17e} :catchall_16e

    :goto_17e
    monitor-exit v13

    throw v0

    :goto_180
    move-object v1, v0

    goto :goto_18c

    :catchall_182
    move-exception v0

    goto :goto_180

    :catchall_184
    move-exception v0

    move-object v1, v0

    :try_start_186
    throw v1
    :try_end_187
    .catchall {:try_start_186 .. :try_end_187} :catchall_187

    :catchall_187
    move-exception v0

    :try_start_188
    invoke-static {v13, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_18c
    .catchall {:try_start_188 .. :try_end_18c} :catchall_182

    :goto_18c
    :try_start_18c
    throw v1
    :try_end_18d
    .catchall {:try_start_18c .. :try_end_18d} :catchall_18d

    :catchall_18d
    move-exception v0

    invoke-static {v12, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :cond_192
    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_199
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a1
    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_1a8
    const-string/jumbo v0, "userManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6
.end method

.method public static toLegacyPermissions(Lcom/android/server/permission/access/immutable/IndexedMap;)Ljava/util/List;
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_30

    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/permission/Permission;

    check-cast v4, Ljava/lang/String;

    new-instance v4, Lcom/android/server/pm/permission/LegacyPermission;

    iget-object v6, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    sget-object v7, Llibcore/util/EmptyArray;->INT:[I

    iget v5, v5, Lcom/android/server/permission/access/permission/Permission;->type:I

    invoke-direct {v4, v6, v5, v2, v7}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_30
    return-object v0
.end method

.method public static updateAdminPermissionsInternal(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "updateAdminPermissionsInternal"

    const-string/jumbo v1, "PermissionService"

    invoke-static {v0, p0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "enterprise_license_policy"

    if-eqz p0, :cond_2d

    sget-boolean v2, Lcom/android/server/pm/PmHook;->mSystemReady:Z

    if-eqz v2, :cond_6d

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v2

    if-eqz v2, :cond_6d

    :try_start_1c
    invoke-interface {v2, p0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getInstanceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_20} :catch_28
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_20} :catch_23

    if-eqz v2, :cond_6d

    goto :goto_2d

    :catch_23
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_6d

    :catch_28
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6d

    :cond_2d
    :goto_2d
    :try_start_2d
    sget-boolean v2, Lcom/android/server/pm/PmHook;->mSystemReady:Z

    if-eqz v2, :cond_6d

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    const-string/jumbo v2, "PM_HOOK"
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3c} :catch_5a

    if-eqz v0, :cond_46

    :try_start_3e
    invoke-interface {v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->updateAdminPermissions()V

    goto :goto_6d

    :catch_42
    move-exception v0

    goto :goto_4c

    :catch_44
    move-exception v0

    goto :goto_56

    :cond_46
    const-string v0, "ENTERPRISE_LICENSE_POLICY_SERVICE is null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_4b} :catch_44
    .catch Ljava/lang/NullPointerException; {:try_start_3e .. :try_end_4b} :catch_42
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4b} :catch_5a

    goto :goto_6d

    :goto_4c
    :try_start_4c
    const-string/jumbo v3, "NPE occurs for EnterpriseLicense"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_6d

    :goto_56
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_59} :catch_5a

    goto :goto_6d

    :catch_5a
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateAdminPermissionsInternal error as PackageName - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6d
    :goto_6d
    return-void
.end method

.method public static withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .registers 3

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 14

    if-eqz p2, :cond_2b

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/permission/PermissionService;->enforceRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-virtual {p0, p3, p4, p1}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissions(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    :cond_16
    move-object v5, v0

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-interface {v5, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/permission/access/permission/PermissionService;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;IIZ)Z

    move-result p0

    return p0

    :cond_2a
    return v1

    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "permissionName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS"

    const-string/jumbo v2, "addOnPermissionsChangeListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    if-eqz p0, :cond_15

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void

    :cond_15
    const-string/jumbo p0, "onPermissionsChangeListeners"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .registers 12

    const-string/jumbo v0, "Not allowed to modify non-dynamic permission "

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_126

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v4, 0x0

    if-eqz v3, :cond_11f

    invoke-interface {v3}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v3

    :try_start_14
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(I)Z

    move-result v2
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_118

    invoke-static {v3, v4}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v2, :cond_110

    iget v2, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v2, :cond_2e

    iget-object v2, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_26

    goto :goto_2e

    :cond_26
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Label must be specified in permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    :goto_2e
    new-instance v2, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_3a
    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v6

    if-eqz v6, :cond_107

    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v4

    new-instance v7, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v7, v6, v4}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {p0, v7, v1}, Lcom/android/server/permission/access/permission/PermissionService;->access$getAndEnforcePermissionTree(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v6

    invoke-static {p0, v7, p1, v6}, Lcom/android/server/permission/access/permission/PermissionService;->access$enforcePermissionTreeSize(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Landroid/content/pm/PermissionInfo;Lcom/android/server/permission/access/permission/Permission;)V

    iget-object v7, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/permission/Permission;

    iput-object v7, v2, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v8, 0x2

    if-eqz v7, :cond_7c

    iget v7, v7, Lcom/android/server/permission/access/permission/Permission;->type:I

    if-ne v7, v8, :cond_6f

    goto :goto_7c

    :cond_6f
    new-instance p0, Ljava/lang/SecurityException;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_79
    move-exception p0

    goto/16 :goto_10e

    :cond_7c
    :goto_7c
    iget-object v0, v6, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget v0, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v0}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v0

    iput v0, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    new-instance v0, Lcom/android/server/permission/access/permission/Permission;

    iget v1, v6, Lcom/android/server/permission/access/permission/Permission;->appId:I

    const/4 v6, 0x1

    invoke-direct {v0, p1, v6, v8, v1}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII)V

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_9a

    goto :goto_9b

    :cond_9a
    move v8, v6

    :goto_9b
    iget-object p0, v4, Lcom/android/server/permission/access/AccessState;->systemStateReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/MutableSystemState;

    iget p2, p0, Lcom/android/server/permission/access/MutableSystemState;->writeMode:I

    invoke-static {p2, v8}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/android/server/permission/access/MutableSystemState;->writeMode:I

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object p0

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {v3, v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_cc
    if-ge v0, p1, :cond_100

    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v4, p2

    :goto_e5
    if-ge v4, v1, :cond_fd

    iget-object v7, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_fa
    .catchall {:try_start_3a .. :try_end_fa} :catchall_79

    add-int/lit8 v4, v4, 0x1

    goto :goto_e5

    :cond_fd
    add-int/lit8 v0, v0, 0x1

    goto :goto_cc

    :cond_100
    monitor-exit v5

    iget-object p0, v2, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p0, :cond_106

    return v6

    :cond_106
    return p2

    :cond_107
    :try_start_107
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
    :try_end_10e
    .catchall {:try_start_107 .. :try_end_10e} :catchall_79

    :goto_10e
    monitor-exit v5

    throw p0

    :cond_110
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Instant apps cannot add permissions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_118
    move-exception p0

    :try_start_119
    throw p0
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_11a

    :catchall_11a
    move-exception p1

    invoke-static {v3, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    :cond_11f
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_126
    const-string/jumbo p0, "permissionName cannot be null"

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final applyRuntimePermissionsForAllApplicationsForMDM(II)Z
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0, v1, v1, p1, p2}, Lcom/android/server/permission/access/permission/PermissionService;->applyRuntimePermissionsInternalForMDM(Ljava/lang/String;Ljava/util/List;II)Z

    move-result p0

    return p0

    :cond_1a
    const-string/jumbo p0, "userManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0
.end method

.method public final applyRuntimePermissionsForMDM(Ljava/lang/String;Ljava/util/List;II)Z
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_23

    if-eqz p1, :cond_23

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/PermissionService;->applyRuntimePermissionsInternalForMDM(Ljava/lang/String;Ljava/util/List;II)Z

    move-result p0

    return p0

    :cond_1b
    const-string/jumbo p0, "userManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_23
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0
.end method

.method public final applyRuntimePermissionsInternalForMDM(Ljava/lang/String;Ljava/util/List;II)Z
    .registers 15

    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->containerCriticalApps:Ljava/util/List;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/16 v2, 0x3e8

    const-string/jumbo v3, "PermissionService"

    if-eq v1, v2, :cond_23

    if-eqz p1, :cond_23

    if-eqz v0, :cond_23

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string/jumbo p0, "Package : "

    const-string p2, " is container critical application"

    invoke-static {p0, p1, p2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_23
    if-eqz p3, :cond_3c

    const/4 v0, 0x1

    if-eq p3, v0, :cond_31

    const/4 v1, 0x2

    if-eq p3, v1, :cond_31

    const-string p0, "Invalid Permission State "

    invoke-static {p3, p0, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_31
    const/4 v7, 0x4

    move-object v4, p0

    move-object v5, p1

    move-object v9, p2

    move v6, p3

    move v8, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/permission/access/permission/PermissionService;->updatePermissionStatesAndFlagsInternalForMDM(Ljava/lang/String;IIILjava/util/List;)Z

    move-result p0

    return p0

    :cond_3c
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v2, p3

    move v4, p4

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->updatePermissionStatesAndFlagsInternalForMDM(Ljava/lang/String;IIILjava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final backupRuntimePermissions(I)[B
    .registers 8

    const-string/jumbo v0, "userId cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionControllerManager:Landroid/permission/PermissionControllerManager;

    const/4 v1, 0x0

    if-eqz p0, :cond_50

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {}, Lcom/android/server/PermissionThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0}, Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v2, v3, v4}, Landroid/permission/PermissionControllerManager;->getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :try_start_21
    sget-wide v2, Lcom/android/server/permission/access/permission/PermissionService;->BACKUP_TIMEOUT_MILLIS:J

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, p0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2b} :catch_2c

    return-object p0

    :catch_2c
    move-exception p0

    instance-of v0, p0, Ljava/util/concurrent/TimeoutException;

    if-nez v0, :cond_3b

    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-nez v0, :cond_3b

    instance-of v0, p0, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_3a

    goto :goto_3b

    :cond_3a
    throw p0

    :cond_3b
    :goto_3b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create permission backup for user "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "PermissionService"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_50
    const-string/jumbo p0, "permissionControllerManager"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 14

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_3b

    :cond_c
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-eqz v0, :cond_4d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v0, v2, p4}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v2

    :try_start_18
    invoke-interface {v2, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v5
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_44

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    if-nez v5, :cond_22

    goto :goto_3b

    :cond_22
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    new-instance v4, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    if-eqz p1, :cond_3d

    invoke-direct {v4, p1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    move-object v3, p0

    move-object v7, p2

    move-object v8, p3

    move v6, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3b

    const/4 p0, 0x0

    return p0

    :cond_3b
    :goto_3b
    const/4 p0, -0x1

    return p0

    :cond_3d
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :catchall_44
    move-exception v0

    move-object p0, v0

    :try_start_46
    throw p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception v0

    move-object p1, v0

    invoke-static {v2, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    :cond_4d
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_54
    const-string/jumbo p0, "userManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I
    .registers 11

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_9e

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v6, -0x1

    if-nez v0, :cond_12

    goto/16 :goto_91

    :cond_12
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-string/jumbo v2, "packageManagerInternal"

    if-eqz v0, :cond_99

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_67

    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz p1, :cond_62

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-nez v2, :cond_43

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "checkUidPermission: PackageState not found for AndroidPackage "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PermissionService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_43
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    move-object v0, v1

    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    if-eqz p1, :cond_5b

    invoke-direct {v1, p1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_91

    goto :goto_8f

    :cond_5b
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_62
    move-object v0, v1

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_67
    move-object v4, p2

    move-object v0, v1

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->systemConfig:Lcom/android/server/SystemConfig;

    if-eqz p0, :cond_92

    iget-object p0, p0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-nez p0, :cond_78

    goto :goto_91

    :cond_78
    invoke-virtual {p0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    goto :goto_8f

    :cond_7f
    sget-object p1, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_91

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_91

    :goto_8f
    const/4 p0, 0x0

    return p0

    :cond_91
    :goto_91
    return v6

    :cond_92
    const-string/jumbo p0, "systemConfig"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_99
    move-object v0, v1

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_9e
    move-object v0, v1

    const-string/jumbo p0, "userManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    const-string/jumbo v4, "PermissionService"

    invoke-static {v3, v4, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_251

    :cond_13
    new-instance v3, Landroid/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v3, v1, v4}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string/jumbo v4, "state"

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_e1

    array-length v7, v2

    if-nez v7, :cond_27

    goto/16 :goto_e1

    :cond_27
    aget-object v7, v2, v6

    const-string v8, "-a"

    invoke-static {v7, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    goto/16 :goto_e1

    :cond_33
    aget-object v7, v2, v6

    const-string v8, "--app-id"

    invoke-static {v7, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    const-string v9, "."

    if-eqz v7, :cond_8b

    array-length v7, v2

    if-ne v7, v5, :cond_8b

    aget-object v2, v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v5, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v5}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    if-eqz v5, :cond_87

    invoke-virtual {v0, v5}, Lcom/android/server/permission/access/permission/PermissionService;->getAllAppIdPackageNames(Lcom/android/server/permission/access/AccessState;)Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    invoke-static {v3, v2, v5, v0}, Lcom/android/server/permission/access/permission/PermissionService;->dumpAppIdState(Landroid/util/IndentingPrintWriter;ILcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    return-void

    :cond_71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unknown app ID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_87
    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_8b
    aget-object v6, v2, v6

    const-string v7, "--package"

    invoke-static {v6, v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_da

    array-length v6, v2

    if-ne v6, v5, :cond_da

    aget-object v2, v2, v8

    iget-object v0, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-eqz v0, :cond_d6

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v1, :cond_c0

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    move-result-object v2

    invoke-static {v3, v1, v0, v2}, Lcom/android/server/permission/access/permission/PermissionService;->dumpAppIdState(Landroid/util/IndentingPrintWriter;ILcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    return-void

    :cond_c0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unknown package "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_d6
    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_da
    const-string/jumbo v0, "Usage: dumpsys permissionmgr [--app-id <APP_ID>] [--package <PACKAGE_NAME>]"

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_e1
    :goto_e1
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v2

    if-eqz v2, :cond_252

    const-string/jumbo v1, "Permissions:"

    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v1

    iget-object v4, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move v7, v6

    :goto_101
    const-string v8, ", appId="

    if-ge v7, v4, :cond_187

    iget-object v9, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/permission/access/permission/Permission;

    check-cast v9, Ljava/lang/String;

    iget-object v9, v10, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v9, v9, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v9}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v11, v10, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget v12, v10, Lcom/android/server/permission/access/permission/Permission;->type:I

    if-eqz v12, :cond_130

    if-eq v12, v5, :cond_12c

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_133

    :cond_12c
    const-string/jumbo v12, "TYPE_DYNAMIC"

    goto :goto_133

    :cond_130
    const-string/jumbo v12, "TYPE_MANIFEST"

    :goto_133
    iget-object v13, v10, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v13, v13, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v14, v10, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    invoke-static {v14}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "toString(...)"

    invoke-static {v15, v14}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v15, v10, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v15, v15, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {v15}, Landroid/content/pm/PermissionInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": type="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", packageName="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v10, Lcom/android/server/permission/access/permission/Permission;->appId:I

    const-string v10, ", gids="

    const-string v11, ", protectionLevel=["

    invoke-static {v8, v10, v14, v11, v5}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "], flags="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x2

    goto/16 :goto_101

    :cond_187
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v1, "Permission groups:"

    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionGroups()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v1

    iget-object v4, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move v5, v6

    :goto_1a2
    const-string v7, ": packageName="

    if-ge v5, v4, :cond_1d2

    iget-object v9, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PermissionGroupInfo;

    check-cast v9, Ljava/lang/String;

    iget-object v9, v10, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    iget-object v10, v10, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a2

    :cond_1d2
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v1, "Permission trees:"

    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v1

    iget-object v4, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move v5, v6

    :goto_1ed
    if-ge v5, v4, :cond_225

    iget-object v9, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/permission/access/permission/Permission;

    check-cast v9, Ljava/lang/String;

    iget-object v9, v10, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v11, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v10, Lcom/android/server/permission/access/permission/Permission;->appId:I

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1ed

    :cond_225
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/permission/PermissionService;->getAllAppIdPackageNames(Lcom/android/server/permission/access/AccessState;)Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_232
    if-ge v6, v1, :cond_251

    iget-object v4, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_24e

    invoke-static {v3, v4, v2, v5}, Lcom/android/server/permission/access/permission/PermissionService;->dumpAppIdState(Landroid/util/IndentingPrintWriter;ILcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    :cond_24e
    add-int/lit8 v6, v6, 0x1

    goto :goto_232

    :cond_251
    :goto_251
    return-void

    :cond_252
    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final varargs enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_13

    aget-object v3, p2, v2

    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_10

    return-void

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Neither user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " nor current process has any of "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    array-length v0, p2

    move v2, v1

    :goto_39
    if-ge v1, v0, :cond_4c

    aget-object v3, p2, v1

    const/4 v4, 0x1

    add-int/2addr v2, v4

    if-le v2, v4, :cond_46

    const-string v4, ", "

    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_46
    invoke-static {p0, v3}, Lcom/android/server/permission/jarjar/kotlin/text/StringsKt__AppendableKt;->appendElement(Ljava/lang/Appendable;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_4c
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final enforceCallingOrSelfCrossUserPermission(Ljava/lang/String;IZZ)V
    .registers 8

    if-ltz p2, :cond_8d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-string v2, ": "

    if-eq p2, v1, :cond_4e

    if-eqz p3, :cond_14

    const-string/jumbo p3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    goto :goto_17

    :cond_14
    const-string/jumbo p3, "android.permission.INTERACT_ACROSS_USERS"

    :goto_17
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_20

    goto :goto_4e

    :cond_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Neither user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " nor current process has "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to access user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4e
    :goto_4e
    if-eqz p4, :cond_8c

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p3

    const/16 p4, 0x7d0

    if-ne p3, p4, :cond_8c

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-eqz p0, :cond_84

    const-string/jumbo p3, "no_debugging_features"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_66

    goto :goto_8c

    :cond_66
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Shell is disallowed to access user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_84
    const-string/jumbo p0, "userManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_8c
    :goto_8c
    return-void

    :cond_8d
    const-string/jumbo p0, "userId "

    const-string p1, " is invalid"

    invoke-static {p2, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final enforceRestrictedPermission(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_92

    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    const/4 v2, 0x0

    if-nez v0, :cond_2d

    const-string/jumbo p0, "permission definition for "

    const-string v0, " does not exist"

    const-string/jumbo v1, "PermissionService"

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2d
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-eqz p1, :cond_8b

    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p1

    :try_start_35
    iget-object v1, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v1
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_84

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object p1, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget p1, p1, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    if-nez p1, :cond_5a

    iget-object p1, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget p1, p1, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    if-eqz p1, :cond_82

    :cond_5a
    iget-object p1, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget p1, p1, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    if-eqz p1, :cond_82

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    const-string/jumbo p1, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_72

    goto :goto_82

    :cond_72
    new-instance p0, Ljava/lang/SecurityException;

    iget-object p1, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v0, "Cannot modify allowlist of an immutably restricted permission: "

    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_82
    :goto_82
    const/4 p0, 0x1

    return p0

    :catchall_84
    move-exception p0

    :try_start_85
    throw p0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_86

    :catchall_86
    move-exception v0

    invoke-static {p1, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :cond_8b
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_92
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getAllAppIdPackageNames(Lcom/android/server/permission/access/AccessState;)Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .registers 12

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>()V

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-eqz p0, :cond_159

    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object p0

    :try_start_d
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_152

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p0

    iget-object p1, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v2, 0x0

    move v3, v2

    :goto_20
    if-ge v3, p1, :cond_de

    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->keyAt(I)I

    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/MutableUserState;

    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v5

    iget-object v6, v5, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v7, v2

    :goto_36
    if-ge v7, v6, :cond_4e

    iget-object v8, v5, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v5, v7}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/immutable/IndexedMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    :cond_4e
    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableUserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v5

    iget-object v6, v5, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v7, v2

    :goto_59
    if-ge v7, v6, :cond_71

    iget-object v8, v5, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v5, v7}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/immutable/IndexedMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_59

    :cond_71
    iget-object v5, v4, Lcom/android/server/permission/access/MutableUserState;->packageVersionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    iget-object v5, v5, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedMap;

    iget-object v6, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v7, v2

    :goto_7e
    if-ge v7, v6, :cond_a9

    iget-object v8, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    check-cast v8, Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v8, :cond_a6

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)V

    :cond_a6
    add-int/lit8 v7, v7, 0x1

    goto :goto_7e

    :cond_a9
    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableUserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v2

    :goto_b4
    if-ge v6, v5, :cond_da

    iget-object v7, v4, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v8

    check-cast v8, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v7, :cond_d7

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)V

    :cond_d7
    add-int/lit8 v6, v6, 0x1

    goto :goto_b4

    :cond_da
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_20

    :cond_de
    new-instance p0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {p0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_eb
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_127

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v3

    if-eqz v3, :cond_104

    goto :goto_eb

    :cond_104
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_115

    goto :goto_11d

    :cond_115
    new-instance v4, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    invoke-direct {v4}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_11d
    check-cast v4, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)V

    goto :goto_eb

    :cond_127
    iget-object p1, v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    :goto_12d
    if-ge v2, p1, :cond_151

    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_146

    goto :goto_14e

    :cond_146
    new-instance v3, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    invoke-direct {v3}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>()V

    invoke-virtual {p0, v1, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_14e
    add-int/lit8 v2, v2, 0x1

    goto :goto_12d

    :cond_151
    return-object p0

    :catchall_152
    move-exception p1

    :try_start_153
    throw p1
    :try_end_154
    .catchall {:try_start_153 .. :try_end_154} :catchall_154

    :catchall_154
    move-exception v0

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :cond_159
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getAllAppOpPermissionPackages()Ljava/util/Map;
    .registers 10

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a8

    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-eqz p0, :cond_a1

    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object p0

    :try_start_23
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2f
    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_97

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v5

    if-eqz v5, :cond_48

    goto :goto_2f

    :cond_48
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    if-nez v4, :cond_4f

    goto :goto_2f

    :cond_4f
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_57
    :goto_57
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/permission/Permission;

    if-nez v7, :cond_6e

    goto :goto_57

    :cond_6e
    iget-object v7, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v7

    const/16 v8, 0x40

    invoke-static {v7, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v7

    if-eqz v7, :cond_57

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_83

    goto :goto_8b

    :cond_83
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8b
    check-cast v7, Landroid/util/ArraySet;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_94
    .catchall {:try_start_23 .. :try_end_94} :catchall_95

    goto :goto_57

    :catchall_95
    move-exception v0

    goto :goto_9b

    :cond_97
    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_9b
    :try_start_9b
    throw v0
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9c

    :catchall_9c
    move-exception v1

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1

    :cond_a1
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_a8
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final getAllPermissionGroups(I)Ljava/util/List;
    .registers 10

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-eqz v0, :cond_81

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v0

    :try_start_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(I)Z

    move-result v3

    if-eqz v3, :cond_19

    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_6b

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object p0

    :cond_19
    :try_start_19
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    if-eqz v3, :cond_74

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionGroups()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_3a
    if-ge v5, v4, :cond_70

    iget-object v6, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PermissionGroupInfo;

    check-cast v6, Ljava/lang/String;

    iget-object v6, v7, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v6, v2}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_64

    new-instance v6, Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v6, v7}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    const/16 v7, 0x80

    invoke-static {p1, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v7

    if-nez v7, :cond_65

    iput-object v1, v6, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    goto :goto_65

    :cond_64
    move-object v6, v1

    :cond_65
    :goto_65
    if-eqz v6, :cond_6d

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catchall {:try_start_19 .. :try_end_6a} :catchall_6b

    goto :goto_6d

    :catchall_6b
    move-exception p0

    goto :goto_7b

    :cond_6d
    :goto_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    :cond_70
    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v3

    :cond_74
    :try_start_74
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_6b

    :goto_7b
    :try_start_7b
    throw p0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7c

    :catchall_7c
    move-exception p1

    invoke-static {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    :cond_81
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getAllPermissionStates(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .registers 15

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_122

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const-string/jumbo v2, "PermissionService"

    if-nez v0, :cond_25

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "getAllPermissionStates: Unknown user "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_25
    const/4 v0, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "getAllPermissionStates"

    invoke-virtual {p0, v4, p3, v0, v3}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(Ljava/lang/String;IZZ)V

    const-string/jumbo v0, "android.permission.GET_RUNTIME_PERMISSIONS"

    const-string/jumbo v5, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string/jumbo v6, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v5, v6, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-eqz v0, :cond_11b

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v4

    :try_start_45
    invoke-interface {v4, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v7
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_112

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    if-nez v7, :cond_65

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "getAllPermissionStates: Unknown package "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_65
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    new-instance v6, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    if-eqz p1, :cond_10b

    invoke-direct {v6, p1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    const-string/jumbo v0, "default:0"

    invoke-static {p2, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p1

    check-cast p1, Lcom/android/server/permission/access/MutableUserState;

    if-eqz p1, :cond_c8

    invoke-virtual {p1}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p1

    if-eqz p1, :cond_c8

    invoke-virtual {p1, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    goto :goto_c8

    :cond_9e
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p1

    check-cast p1, Lcom/android/server/permission/access/MutableUserState;

    if-eqz p1, :cond_c8

    invoke-virtual {p1}, Lcom/android/server/permission/access/MutableUserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p1

    if-eqz p1, :cond_c8

    invoke-virtual {p1, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p1

    check-cast p1, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    if-eqz p1, :cond_c8

    invoke-virtual {p1, p2}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    :cond_c8
    :goto_c8
    if-nez v1, :cond_cf

    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_cf
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iget-object v0, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_da
    if-ge v3, v0, :cond_10a

    iget-object v2, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    move-object v5, p0

    move-object v10, p2

    move v8, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {v4}, Lcom/android/server/permission/access/permission/PermissionFlags;->toApiFlags(I)I

    move-result p2

    new-instance p3, Landroid/permission/PermissionManager$PermissionState;

    invoke-direct {p3, p0, p2}, Landroid/permission/PermissionManager$PermissionState;-><init>(ZI)V

    invoke-virtual {p1, v9, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    move-object p0, v5

    move p3, v8

    move-object p2, v10

    goto :goto_da

    :cond_10a
    return-object p1

    :cond_10b
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :catchall_112
    move-exception v0

    move-object p0, v0

    :try_start_114
    throw p0
    :try_end_115
    .catchall {:try_start_114 .. :try_end_115} :catchall_115

    :catchall_115
    move-exception v0

    move-object p1, v0

    invoke-static {v4, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    :cond_11b
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_122
    const-string/jumbo p0, "userManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getAllPermissionsWithProtection()Ljava/util/List;
    .registers 9

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_23
    if-ge v4, v2, :cond_4e

    iget-object v5, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/permission/Permission;

    check-cast v5, Ljava/lang/String;

    iget-object v5, v6, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_45

    const/16 v5, 0x2710

    invoke-static {v6, v3, v5}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionInfo(Lcom/android/server/permission/access/permission/Permission;II)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    goto :goto_46

    :cond_45
    move-object v5, v1

    :goto_46
    if-eqz v5, :cond_4b

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_4e
    return-object v0

    :cond_4f
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getAllPermissionsWithProtectionFlags()Ljava/util/List;
    .registers 9

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_23
    if-ge v4, v2, :cond_53

    iget-object v5, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/permission/Permission;

    check-cast v5, Ljava/lang/String;

    iget-object v5, v6, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v5

    const/16 v7, 0x40

    invoke-static {v5, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v5

    if-eqz v5, :cond_4a

    const/16 v5, 0x2710

    invoke-static {v6, v3, v5}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionInfo(Lcom/android/server/permission/access/permission/Permission;II)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    goto :goto_4b

    :cond_4a
    move-object v5, v1

    :goto_4b
    if-eqz v5, :cond_50

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_53
    return-object v0

    :cond_54
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getAllowlistedRestrictedPermissions(IILjava/lang/String;)Ljava/util/ArrayList;
    .registers 10

    if-eqz p3, :cond_ad

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    const-string/jumbo v0, "userId cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_a6

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_20

    const-string p0, "AllowlistedRestrictedPermission api: Unknown user "

    const-string/jumbo p1, "PermissionService"

    invoke-static {p2, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_20
    const/4 v0, 0x0

    const-string/jumbo v2, "getAllowlistedRestrictedPermissions"

    invoke-virtual {p0, v2, p2, v0, v0}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(Ljava/lang/String;IZZ)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-eqz v3, :cond_9f

    invoke-static {v3, v2, p2}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v3

    :try_start_33
    invoke-interface {v3, p3}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p3
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_98

    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    if-nez p3, :cond_3d

    goto :goto_43

    :cond_3d
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_44

    :goto_43
    return-object v1

    :cond_44
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_51

    move v0, v5

    :cond_51
    invoke-static {p1, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v4

    if-eqz v4, :cond_63

    if-eqz v0, :cond_5a

    goto :goto_63

    :cond_5a
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Querying system allowlist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_63
    :goto_63
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz v4, :cond_91

    check-cast v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v1, v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-interface {v1, v3, v2}, Lcom/android/server/pm/Computer;->isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z

    move-result v1

    const/4 v2, 0x6

    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v2

    if-eqz v2, :cond_88

    if-nez v0, :cond_88

    if-eqz v1, :cond_7f

    goto :goto_88

    :cond_7f
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Querying upgrade or installer allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_88
    :goto_88
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissionsUnchecked(III)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_91
    const-string/jumbo p0, "packageManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :catchall_98
    move-exception p0

    :try_start_99
    throw p0
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_9a

    :catchall_9a
    move-exception p1

    invoke-static {v3, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    :cond_9f
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_a6
    const-string/jumbo p0, "userManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_ad
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "packageName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final bridge synthetic getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;
    .registers 4

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissions(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getAllowlistedRestrictedPermissionsUnchecked(III)Ljava/util/ArrayList;
    .registers 8

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7e

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/MutableUserState;

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p0

    if-eqz p0, :cond_27

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    goto :goto_28

    :cond_27
    move-object p0, v1

    :goto_28
    if-nez p0, :cond_2b

    return-object v1

    :cond_2b
    const/4 p1, 0x1

    invoke-static {p2, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_36

    const/high16 p1, 0x10000

    goto :goto_37

    :cond_36
    move p1, p3

    :goto_37
    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_41

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    :cond_41
    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_4c

    const p2, 0x8000

    or-int/2addr p1, p2

    :cond_4c
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_57
    if-ge p3, v0, :cond_7d

    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v3

    if-eqz v3, :cond_74

    goto :goto_75

    :cond_74
    move-object v2, v1

    :goto_75
    if-eqz v2, :cond_7a

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7a
    add-int/lit8 p3, p3, 0x1

    goto :goto_57

    :cond_7d
    return-object p2

    :cond_7e
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    if-eqz p1, :cond_a3

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9c

    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/permission/Permission;

    const/4 v3, 0x0

    if-eqz v1, :cond_36

    iget-object v1, v1, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v1

    const/16 v4, 0x40

    invoke-static {v1, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-nez v1, :cond_3b

    :cond_36
    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_3b
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-eqz p0, :cond_95

    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object p0

    :try_start_43
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4f
    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v5

    if-eqz v5, :cond_68

    goto :goto_4f

    :cond_68
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    if-nez v4, :cond_6f

    goto :goto_4f

    :cond_6f
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catchall {:try_start_43 .. :try_end_80} :catchall_81

    goto :goto_4f

    :catchall_81
    move-exception p1

    goto :goto_8f

    :cond_83
    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    new-array p0, v3, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :goto_8f
    :try_start_8f
    throw p1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_90

    :catchall_90
    move-exception v0

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :cond_95
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_9c
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_a3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "permissionName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDefaultPermissionGrantFingerprint(I)Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/android/server/permission/access/MutableUserState;

    iget-object p0, p0, Lcom/android/server/permission/access/MutableUserState;->defaultPermissionGrantFingerprint:Ljava/lang/String;

    return-object p0

    :cond_18
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getGidsForUid(I)[I
    .registers 12

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->systemConfig:Lcom/android/server/SystemConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_d3

    iget-object v1, v1, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    if-eqz v3, :cond_cc

    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/MutableUserState;

    if-eqz v4, :cond_35

    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v4

    if-eqz v4, :cond_35

    invoke-virtual {v4, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedMap;

    :cond_35
    if-nez v2, :cond_43

    array-length p0, v1

    invoke-static {v1, p0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const-string/jumbo p1, "copyOf(...)"

    invoke-static {p1, p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :cond_43
    invoke-static {v1}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v0

    iget-object v1, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v4, 0x0

    move v5, v4

    :goto_4f
    if-ge v5, v1, :cond_c7

    iget-object v6, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    check-cast v6, Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_6d

    goto :goto_9e

    :cond_6d
    const/4 v9, 0x2

    invoke-static {v7, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_76

    :goto_74
    move v8, v4

    goto :goto_9e

    :cond_76
    const/4 v9, 0x4

    invoke-static {v7, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_7e

    goto :goto_9e

    :cond_7e
    const/16 v9, 0x400

    invoke-static {v7, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-nez v9, :cond_9e

    const/16 v9, 0x800

    invoke-static {v7, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_8f

    goto :goto_9e

    :cond_8f
    const/high16 v8, 0x40000

    invoke-static {v7, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-eqz v8, :cond_98

    goto :goto_74

    :cond_98
    const/16 v8, 0x10

    invoke-static {v7, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    :cond_9e
    :goto_9e
    if-nez v8, :cond_a1

    goto :goto_c4

    :cond_a1
    iget-object v7, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/permission/Permission;

    if-nez v6, :cond_b9

    goto :goto_c4

    :cond_b9
    invoke-virtual {v6, p1}, Lcom/android/server/permission/access/permission/Permission;->getGidsForUser(I)[I

    move-result-object v6

    array-length v7, v6

    if-nez v7, :cond_c1

    goto :goto_c4

    :cond_c1
    invoke-virtual {v0, v6}, Landroid/util/IntArray;->addAll([I)V

    :goto_c4
    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    :cond_c7
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0

    :cond_cc
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_d3
    const-string/jumbo p0, "systemConfig"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final getGrantedPermissions(ILjava/lang/String;)Ljava/util/Set;
    .registers 13

    if-eqz p2, :cond_b8

    const-string/jumbo v0, "userId"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-eqz v0, :cond_b1

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v2

    :try_start_11
    invoke-interface {v2}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/pm/pkg/PackageState;
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_a8

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    if-nez v5, :cond_31

    const-string/jumbo p0, "getGrantedPermissions: Unknown package "

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PermissionService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/collections/EmptySet;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptySet;

    return-object p0

    :cond_31
    iget-object p2, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    new-instance v4, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p2

    if-eqz p2, :cond_a1

    invoke-direct {v4, p2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p2

    check-cast p2, Lcom/android/server/permission/access/MutableUserState;

    if-eqz p2, :cond_60

    invoke-virtual {p2}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p2

    if-eqz p2, :cond_60

    invoke-virtual {p2, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p2

    check-cast p2, Lcom/android/server/permission/access/immutable/IndexedMap;

    goto :goto_61

    :cond_60
    move-object p2, v1

    :goto_61
    if-nez p2, :cond_66

    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/collections/EmptySet;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptySet;

    return-object p0

    :cond_66
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v9, v3

    :goto_73
    if-ge v9, v2, :cond_a0

    iget-object v3, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v6, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v8, "default:0"

    move-object v3, p0

    move v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_95

    goto :goto_96

    :cond_95
    move-object v7, v1

    :goto_96
    if-eqz v7, :cond_9b

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_9b
    add-int/lit8 v9, v9, 0x1

    move-object p0, v3

    move p1, v6

    goto :goto_73

    :cond_a0
    return-object v0

    :cond_a1
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :catchall_a8
    move-exception v0

    move-object p0, v0

    :try_start_aa
    throw p0
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_ab

    :catchall_ab
    move-exception v0

    move-object p1, v0

    invoke-static {v2, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    :cond_b1
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_b8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "packageName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getInstalledPermissions(Ljava/lang/String;)Ljava/util/Set;
    .registers 8

    if-eqz p1, :cond_56

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_4e

    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/permission/Permission;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    iget-object v4, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    goto :goto_46

    :cond_45
    move-object v4, v1

    :goto_46
    if-eqz v4, :cond_4b

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_4e
    return-object v0

    :cond_4f
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "packageName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;
    .registers 19

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {v1}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    if-eqz v2, :cond_ab

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-eqz v4, :cond_a2

    iget-object v5, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v5

    array-length v6, v2

    const/4 v8, 0x0

    :goto_26
    if-ge v8, v6, :cond_a1

    aget v9, v2, v8

    iget-object v10, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v10

    check-cast v10, Lcom/android/server/permission/access/MutableUserState;

    if-eqz v10, :cond_4a

    invoke-virtual {v10}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v10

    if-eqz v10, :cond_4a

    move/from16 v11, p1

    invoke-virtual {v10, v11}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v10

    check-cast v10, Lcom/android/server/permission/access/immutable/IndexedMap;

    goto :goto_4d

    :cond_4a
    move/from16 v11, p1

    const/4 v10, 0x0

    :goto_4d
    if-nez v10, :cond_52

    :cond_4f
    const/16 v16, 0x0

    goto :goto_9c

    :cond_52
    iget-object v12, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_59
    if-ge v13, v12, :cond_4f

    iget-object v14, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    iget-object v15, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v15, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    check-cast v14, Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v3, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/permission/Permission;

    if-nez v3, :cond_7c

    goto :goto_97

    :cond_7c
    new-instance v7, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    iget-object v3, v3, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3

    const/4 v0, 0x1

    if-ne v3, v0, :cond_88

    goto :goto_89

    :cond_88
    const/4 v0, 0x0

    :goto_89
    invoke-static {v15}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v3

    invoke-static {v15}, Lcom/android/server/permission/access/permission/PermissionFlags;->toApiFlags(I)I

    move-result v15

    invoke-direct {v7, v14, v15, v0, v3}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;IZZ)V

    invoke-virtual {v1, v7, v9}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    :goto_97
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    goto :goto_59

    :goto_9c
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto :goto_26

    :cond_a1
    return-object v1

    :cond_a2
    const/16 v16, 0x0

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v16

    :cond_ab
    const/16 v16, 0x0

    const-string/jumbo v0, "userManagerService"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v16
.end method

.method public final getLegacyPermissions()Ljava/util/List;
    .registers 9

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v1, :cond_46

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/permission/Permission;

    check-cast v3, Ljava/lang/String;

    new-instance v3, Lcom/android/server/pm/permission/LegacyPermission;

    iget-object v5, v4, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v6, v4, Lcom/android/server/permission/access/permission/Permission;->type:I

    iget v7, v4, Lcom/android/server/permission/access/permission/Permission;->appId:I

    iget-object v4, v4, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    invoke-direct {v3, v5, v6, v7, v4}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_46
    return-object v0

    :cond_47
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .registers 2

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_b

    const/4 p0, 0x0

    :cond_b
    return-object p0
.end method

.method public final getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 15

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_98

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const-string/jumbo v2, "PermissionService"

    const/4 v3, 0x0

    if-nez v0, :cond_16

    const-string/jumbo p0, "getPermissionFlags: Unknown user "

    invoke-static {p4, p0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_16
    const/4 v0, 0x1

    const-string/jumbo v4, "getPermissionFlags"

    invoke-virtual {p0, v4, p4, v0, v3}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(Ljava/lang/String;IZZ)V

    const-string/jumbo v0, "android.permission.GET_RUNTIME_PERMISSIONS"

    const-string/jumbo v5, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string/jumbo v6, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v5, v6, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-eqz v0, :cond_91

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v4

    :try_start_35
    invoke-interface {v4, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v0
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_88

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    if-nez v0, :cond_45

    const-string/jumbo p0, "getPermissionFlags: Unknown package "

    invoke-static {p0, p1, v2}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_45
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    new-instance v7, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    if-eqz p1, :cond_81

    invoke-direct {v7, p1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/permission/access/permission/Permission;

    if-nez p1, :cond_70

    const-string/jumbo p0, "getPermissionFlags: Unknown permission "

    invoke-static {p0, p2, v2}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_70
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    move-object v4, p0

    move-object v8, p2

    move-object v9, p3

    move v6, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionFlags;->toApiFlags(I)I

    move-result p0

    return p0

    :cond_81
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :catchall_88
    move-exception v0

    move-object p0, v0

    :try_start_8a
    throw p0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8b

    :catchall_8b
    move-exception v0

    move-object p1, v0

    invoke-static {v4, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    :cond_91
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_98
    const-string/jumbo p0, "userManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getPermissionFlagsWithPolicy(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    const-string/jumbo v0, "default:0"

    invoke-static {p5, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p3, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1, p2, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result p0

    return p0

    :cond_15
    sget-object v0, Landroid/permission/PermissionManager;->DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " is not device aware permission,  get the flags for default device."

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo p5, "PermissionService"

    invoke-static {p5, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1, p2, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result p0

    return p0

    :cond_3e
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3, p5, p4}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->getPermissionFlags(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getPermissionGids(ILjava/lang/String;)[I
    .registers 4

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/permission/Permission;

    if-nez p0, :cond_22

    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    return-object p0

    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/Permission;->getGidsForUser(I)[I

    move-result-object p0

    return-object p0

    :cond_27
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 8

    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v2, 0x0

    if-eqz v1, :cond_73

    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v1

    :try_start_e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(I)Z

    move-result v4
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_64

    if-eqz v4, :cond_1c

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    :cond_1c
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-eqz v4, :cond_66

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionGroups()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PermissionGroupInfo;
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_64

    if-nez p0, :cond_3f

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    :cond_3f
    :try_start_3f
    iput-object p0, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p0, p0, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, p0, v3}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    move-result p0
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_64

    if-nez p0, :cond_4d

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v2

    :cond_4d
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    iget-object p0, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/content/pm/PermissionGroupInfo;

    new-instance p1, Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {p1, p0}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    const/16 p0, 0x80

    invoke-static {p2, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-nez p0, :cond_63

    iput-object v2, p1, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    :cond_63
    return-object p1

    :catchall_64
    move-exception p0

    goto :goto_6d

    :cond_66
    :try_start_66
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_64

    :goto_6d
    :try_start_6d
    throw p0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception p1

    invoke-static {v1, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    :cond_73
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final getPermissionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/content/pm/PermissionInfo;
    .registers 9

    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v2, 0x0

    if-eqz v1, :cond_9d

    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v1

    :try_start_e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(I)Z

    move-result v4
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_60

    if-eqz v4, :cond_1c

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    :cond_1c
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-eqz v4, :cond_90

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/permission/Permission;
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_60

    if-nez p0, :cond_3f

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    :cond_3f
    :try_start_3f
    iput-object p0, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, p0, v3}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    move-result p0
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_60

    if-nez p0, :cond_4f

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v2

    :cond_4f
    :try_start_4f
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/PackageState;

    if-eqz p0, :cond_62

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    goto :goto_62

    :catchall_60
    move-exception p0

    goto :goto_97

    :cond_62
    :goto_62
    invoke-static {v3}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    move-result p0

    const/4 p2, 0x1

    if-nez p0, :cond_79

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 p3, 0x7d0

    const/4 v3, 0x0

    if-ne p0, p3, :cond_74

    move p0, p2

    goto :goto_75

    :cond_74
    move p0, v3

    :goto_75
    if-eqz p0, :cond_78

    goto :goto_79

    :cond_78
    move p2, v3

    :cond_79
    :goto_79
    const/16 p0, 0x2710

    if-eqz p2, :cond_7e

    goto :goto_84

    :cond_7e
    if-eqz v2, :cond_84

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p0
    :try_end_84
    .catchall {:try_start_4f .. :try_end_84} :catchall_60

    :cond_84
    :goto_84
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    iget-object p2, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/permission/access/permission/Permission;

    invoke-static {p2, p1, p0}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionInfo(Lcom/android/server/permission/access/permission/Permission;II)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    return-object p0

    :cond_90
    :try_start_90
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
    :try_end_97
    .catchall {:try_start_90 .. :try_end_97} :catchall_60

    :goto_97
    :try_start_97
    throw p0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_98

    :catchall_98
    move-exception p1

    invoke-static {v1, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    :cond_9d
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final getPermissionRequestState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 19

    move-object/from16 v4, p3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDeviceId()I

    move-result v2

    if-ne p1, v2, :cond_16

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    :goto_14
    move-object v8, v1

    goto :goto_1d

    :cond_16
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->createDeviceContext(I)Landroid/content/Context;

    move-result-object v1

    goto :goto_14

    :goto_1d
    invoke-virtual {v8, v4, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_25

    return v9

    :cond_25
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v10, 0x0

    if-eqz v3, :cond_101

    invoke-static {v3, v7, v2}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v3

    move-object/from16 v5, p2

    :try_start_38
    invoke-interface {v3, v5}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v5
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_f9

    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    if-nez v5, :cond_43

    goto/16 :goto_f3

    :cond_43
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_4b

    goto/16 :goto_f3

    :cond_4b
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    if-eq v1, v5, :cond_53

    goto/16 :goto_f3

    :cond_53
    iget-object v5, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v5}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    const-string/jumbo v11, "state"

    if-eqz v5, :cond_f5

    iget-object v12, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/permission/Permission;

    if-eqz v5, :cond_f3

    iget-object v5, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v5

    const/4 v12, 0x1

    if-ne v5, v12, :cond_f3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8a

    goto/16 :goto_f3

    :cond_8a
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    move-object v5, v3

    new-instance v3, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v5}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    if-eqz v5, :cond_ef

    invoke-direct {v3, v5}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    move-object v0, p0

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const v5, 0x401c0

    invoke-static {v3, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v13

    const-string/jumbo v3, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b8

    const-string/jumbo v3, "android.permission.READ_MEDIA_VIDEO"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_eb

    :cond_b8
    if-eqz v13, :cond_eb

    const-string/jumbo v3, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-virtual {v8, v3, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_c4

    move v9, v12

    :cond_c4
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    move-object v4, v3

    new-instance v3, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-eqz v4, :cond_e7

    invoke-direct {v3, v4}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    const-string/jumbo v4, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    move-object v0, p0

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v9, :cond_eb

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_eb

    goto :goto_ee

    :cond_e7
    invoke-static {v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v10

    :cond_eb
    if-eqz v13, :cond_ee

    goto :goto_f3

    :cond_ee
    :goto_ee
    return v12

    :cond_ef
    invoke-static {v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v10

    :cond_f3
    :goto_f3
    const/4 v0, 0x2

    return v0

    :cond_f5
    invoke-static {v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v10

    :catchall_f9
    move-exception v0

    move-object v1, v0

    :try_start_fb
    throw v1
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fc

    :catchall_fc
    move-exception v0

    invoke-static {v3, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :cond_101
    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v10
.end method

.method public final getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;
    .registers 4

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/permission/Permission;

    if-nez p0, :cond_21

    return-object v1

    :cond_21
    new-instance p1, Lcom/android/server/pm/permission/Permission;

    iget-object v0, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v1, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    invoke-direct {p1, v0, v1}, Lcom/android/server/pm/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;I)V

    iget-boolean v0, p0, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    iput-boolean v0, p1, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    iget v0, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    iput v0, p1, Lcom/android/server/pm/permission/Permission;->mUid:I

    iget-object v0, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    iput-object v0, p1, Lcom/android/server/pm/permission/Permission;->mGids:[I

    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    iput-boolean p0, p1, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    return-object p1

    :cond_3b
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getRequestedRuntimePermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .registers 5

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-direct {v2, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/permission/access/permission/PermissionService;->getRequestedRuntimePermissionsInternal(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1e
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_25
    const-string/jumbo p0, "packageManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getRequestedRuntimePermissionsInternal(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;)Ljava/util/List;
    .registers 6

    if-eqz p3, :cond_8

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_8
    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_29
    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    if-eqz v0, :cond_29

    iget-object v0, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_4c
    return-object p2
.end method

.method public final getSourcePackageSetting(Lcom/android/server/permission/access/permission/Permission;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 2

    iget-object p1, p1, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    return-object p0

    :cond_d
    const-string/jumbo p0, "packageManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getSplitPermissions()Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->systemConfig:Lcom/android/server/SystemConfig;

    if-eqz p0, :cond_b

    iget-object p0, p0, Lcom/android/server/SystemConfig;->mSplitPermissions:Ljava/util/ArrayList;

    invoke-static {p0}, Landroid/permission/PermissionManager;->splitPermissionInfoListToParcelableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_b
    const-string/jumbo p0, "systemConfig"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x60

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v2, p4

    invoke-static/range {v0 .. v7}, Lcom/android/server/permission/access/permission/PermissionService;->setRuntimePermissionGranted$default(Lcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method

.method public final isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 13

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    invoke-interface {p2, p3}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->isSinglePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IIZLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_29

    :cond_18
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    invoke-virtual {p0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_2b

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->isSinglePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IIZLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2b

    :goto_29
    const/4 p0, 0x1

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public final isPermissionRevokedByPolicy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v3, 0x0

    if-eqz v1, :cond_78

    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v1

    const/4 v6, 0x0

    if-nez v1, :cond_16

    const-string/jumbo v0, "isPermissionRevokedByPolicy: Unknown user "

    const-string/jumbo v1, "PermissionService"

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_16
    const/4 v1, 0x1

    const-string/jumbo v4, "isPermissionRevokedByPolicy"

    invoke-virtual {p0, v4, p1, v1, v6}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(Ljava/lang/String;IZZ)V

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-eqz v1, :cond_71

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v1, v4, p1}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v1

    :try_start_29
    invoke-interface {v1, p2}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v4
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_69

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    if-nez v4, :cond_33

    goto :goto_4c

    :cond_33
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    move-object v5, v1

    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v5}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    if-eqz v5, :cond_62

    invoke-direct {v1, v5}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    move-object v0, p0

    move v3, p1

    move-object v5, p4

    move-object v2, v4

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4d

    :goto_4c
    return v6

    :cond_4d
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    move v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v3, v1

    move v1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    return v0

    :cond_62
    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :catchall_69
    move-exception v0

    move-object v2, v0

    :try_start_6b
    throw v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception v0

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :cond_71
    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_78
    const-string/jumbo v0, "userManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method public final isPermissionsReviewRequired(ILjava/lang/String;)Z
    .registers 6

    if-eqz p2, :cond_89

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-eqz v0, :cond_82

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v0

    :try_start_b
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/PackageState;
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_7b

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    const/4 v0, 0x0

    if-nez p2, :cond_1c

    goto :goto_73

    :cond_1c
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v2

    if-eqz v2, :cond_74

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/MutableUserState;

    if-eqz p0, :cond_46

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p0

    if-eqz p0, :cond_46

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    :cond_46
    if-nez v1, :cond_49

    goto :goto_73

    :cond_49
    iget-object p0, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    move p1, v0

    :goto_50
    if-ge p1, p0, :cond_73

    iget-object p2, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p2

    iget-object v2, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    check-cast p2, Ljava/lang/String;

    const/16 p2, 0x1400

    invoke-static {v2, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_70

    const/4 p0, 0x1

    return p0

    :cond_70
    add-int/lit8 p1, p1, 0x1

    goto :goto_50

    :cond_73
    :goto_73
    return v0

    :cond_74
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :catchall_7b
    move-exception p0

    :try_start_7c
    throw p0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7d

    :catchall_7d
    move-exception p1

    invoke-static {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    :cond_82
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_89
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "packageName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isSinglePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IIZLjava/lang/String;Ljava/lang/String;)Z
    .registers 13

    move-object v0, p0

    move-object v3, p1

    move v1, p2

    move v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_14

    :cond_12
    :goto_12
    move p0, p1

    goto :goto_45

    :cond_14
    const/4 p2, 0x2

    invoke-static {p0, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_1d

    :goto_1b
    move p0, p3

    goto :goto_45

    :cond_1d
    const/4 p2, 0x4

    invoke-static {p0, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_25

    goto :goto_12

    :cond_25
    const/16 p2, 0x400

    invoke-static {p0, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-nez p2, :cond_12

    const/16 p2, 0x800

    invoke-static {p0, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_36

    goto :goto_12

    :cond_36
    const/high16 p2, 0x40000

    invoke-static {p0, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_3f

    goto :goto_1b

    :cond_3f
    const/16 p2, 0x10

    invoke-static {p0, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    :goto_45
    if-nez p0, :cond_48

    goto :goto_72

    :cond_48
    if-eqz p4, :cond_73

    iget-object p0, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v3, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/permission/Permission;

    if-nez p0, :cond_64

    goto :goto_72

    :cond_64
    iget-object p0, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/16 p2, 0x1000

    invoke-static {p0, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-nez p0, :cond_73

    :goto_72
    return p3

    :cond_73
    return p1
.end method

.method public final isUidInstantApp(I)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz p0, :cond_e

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0

    :cond_e
    const-string/jumbo p0, "packageManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onPackageAdded(Lcom/android/server/pm/PackageSetting;ZLcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 6

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result p2

    if-eqz p2, :cond_7

    return-void

    :cond_7
    iget-object p2, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumeLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_a
    iget-object p3, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumePackageNames:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_17

    goto :goto_1f

    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1f
    check-cast v1, Ljava/util/Collection;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/android/server/permission/access/permission/PermissionService;->mountedStorageVolumes:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_32
    .catchall {:try_start_a .. :try_end_32} :catchall_41

    if-nez p3, :cond_36

    monitor-exit p2

    return-void

    :cond_36
    monitor-exit p2

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessCheckingService;->onPackageAdded$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;)V

    return-void

    :catchall_41
    move-exception p0

    monitor-exit p2

    throw p0
.end method

.method public final onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v13, p2

    move/from16 v1, p3

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v2

    if-eqz v2, :cond_e

    goto/16 :goto_3b1

    :cond_e
    sget-object v2, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->DEFAULT:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    if-ne v13, v2, :cond_14

    goto/16 :goto_3b1

    :cond_14
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumeLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_17
    iget-object v3, v0, Lcom/android/server/permission/access/permission/PermissionService;->mountedStorageVolumes:Landroid/util/ArraySet;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_3b2

    if-nez v3, :cond_25

    monitor-exit v2

    return-void

    :cond_25
    monitor-exit v2

    const/4 v2, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x1

    if-ne v1, v2, :cond_3d

    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object v1

    move-object v12, v1

    goto :goto_42

    :cond_36
    const-string/jumbo v0, "userManagerService"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v15

    :cond_3d
    new-array v2, v11, [I

    aput v1, v2, v14

    move-object v12, v2

    :goto_42
    array-length v1, v12

    move v2, v14

    :goto_44
    if-ge v2, v1, :cond_54

    aget v3, v12, v2

    iget-object v4, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/permission/access/AccessCheckingService;->onPackageInstalled$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_54
    array-length v6, v12

    move v7, v14

    :goto_56
    if-ge v7, v6, :cond_3b1

    aget v3, v12, v7

    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz v1, :cond_3a8

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    iget-object v1, v13, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    const/4 v9, 0x2

    invoke-virtual {v0, v2, v9, v3}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissionsUnchecked(III)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_85

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_85

    move-object v1, v4

    :cond_85
    const/4 v4, 0x2

    move v5, v3

    move-object v3, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->setAllowlistedRestrictedPermissionsUnchecked(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;II)V

    move-object v10, v0

    move v3, v5

    iget-object v0, v13, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mPermissionStates:Landroid/util/ArrayMap;

    iget-object v1, v10, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    :try_start_98
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v2

    if-eqz v2, :cond_39d

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v4

    move-object v5, v1

    new-instance v1, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v1, v2, v4}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    :goto_ac
    if-ge v14, v2, :cond_227

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Number;

    move-object/from16 v23, v15

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->intValue()I

    move-result v15

    move-object/from16 v9, v17

    check-cast v9, Ljava/lang/String;

    if-eq v15, v11, :cond_101

    const/4 v11, 0x2

    if-eq v15, v11, :cond_101

    const-string/jumbo v11, "PermissionService"

    move-object/from16 v18, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v2

    const-string/jumbo v2, "setRequestedPermissionStates: Unknown permission state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_eb
    :goto_eb
    move-object/from16 v17, v5

    move/from16 p3, v6

    move/from16 v24, v7

    move-object/from16 v22, v8

    move-object v0, v10

    move-object/from16 v25, v12

    move/from16 v21, v14

    const/4 v15, 0x1

    const/16 v20, 0x2

    move-object v14, v4

    goto/16 :goto_20d

    :catchall_fe
    move-exception v0

    goto/16 :goto_3a6

    :cond_101
    move-object/from16 v18, v0

    move/from16 v19, v2

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_117

    goto :goto_eb

    :cond_117
    iget-object v0, v10, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    if-nez v0, :cond_131

    goto :goto_eb

    :cond_131
    iget-object v2, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v2

    const/16 v11, 0x20

    invoke-static {v2, v11}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-nez v2, :cond_1ac

    iget-object v2, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v2

    const/4 v11, 0x1

    if-ne v2, v11, :cond_14d

    move v0, v11

    :goto_149
    move-object v2, v4

    move-object v11, v5

    goto/16 :goto_1ae

    :cond_14d
    iget-object v0, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/16 v2, 0x40

    invoke-static {v0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_eb

    sget-object v0, Lcom/android/server/pm/PackageInstallerService;->INSTALLER_CHANGEABLE_APP_OP_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eb

    const/4 v11, 0x1

    if-ne v15, v11, :cond_168

    const/4 v11, 0x1

    goto :goto_169

    :cond_168
    const/4 v11, 0x0

    :goto_169
    iget-object v0, v10, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    const-string/jumbo v2, "uid"

    const-string/jumbo v15, "app-op"

    invoke-virtual {v0, v2, v15}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object v0

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.server.permission.access.appop.AppIdAppOpPolicy"

    invoke-static {v2, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    move-object v2, v4

    invoke-static {v9}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v9, v5

    if-eqz v11, :cond_18b

    const/4 v5, 0x0

    :goto_189
    move-object v11, v2

    goto :goto_18d

    :cond_18b
    const/4 v5, 0x2

    goto :goto_189

    :goto_18d
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    move-object/from16 v26, v11

    move-object v11, v9

    move-object/from16 v9, v26

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    move/from16 p3, v6

    move/from16 v24, v7

    move-object/from16 v22, v8

    move-object v0, v10

    move-object/from16 v17, v11

    move-object/from16 v25, v12

    move/from16 v21, v14

    const/4 v15, 0x1

    const/16 v20, 0x2

    move-object v14, v9

    goto/16 :goto_20d

    :cond_1ac
    const/4 v0, 0x1

    goto :goto_149

    :goto_1ae
    if-ne v15, v0, :cond_1fc

    const-string/jumbo v5, "default:0"

    const-string/jumbo v10, "setRequestedPermissionStates"

    move v4, v6

    const/4 v6, 0x1

    move v15, v7

    const/4 v7, 0x0

    move-object/from16 v17, v2

    move-object v2, v8

    const/4 v8, 0x0

    move/from16 v20, v4

    move-object v4, v9

    const/4 v9, 0x0

    move/from16 v21, v14

    move/from16 v24, v15

    move-object/from16 v14, v17

    move/from16 v15, v20

    const/16 v20, 0x2

    move/from16 v17, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v10}, Lcom/android/server/permission/access/permission/PermissionService;->access$setRuntimePermissionGranted(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V

    move-object/from16 v22, v2

    invoke-interface/range {v22 .. v22}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    const-string/jumbo v5, "default:0"

    move-object v9, v11

    const-string/jumbo v11, "setRequestedPermissionStates"

    move-object v0, v12

    invoke-interface/range {v22 .. v22}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v9

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v25, v6

    const/16 v6, 0x48

    move/from16 p3, v15

    move/from16 v15, v17

    move-object/from16 v17, v25

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v12}, Lcom/android/server/permission/access/permission/PermissionService;->access$updatePermissionFlags(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_20d

    :cond_1fc
    move v15, v0

    move/from16 p3, v6

    move/from16 v24, v7

    move-object/from16 v22, v8

    move-object v0, v10

    move-object/from16 v17, v11

    move-object/from16 v25, v12

    move/from16 v21, v14

    const/16 v20, 0x2

    move-object v14, v2

    :goto_20d
    add-int/lit8 v2, v21, 0x1

    move/from16 v6, p3

    move-object v10, v0

    move-object v4, v14

    move v11, v15

    move-object/from16 v5, v17

    move-object/from16 v0, v18

    move/from16 v9, v20

    move-object/from16 v8, v22

    move-object/from16 v15, v23

    move/from16 v7, v24

    move-object/from16 v12, v25

    move v14, v2

    move/from16 v2, v19

    goto/16 :goto_ac

    :cond_227
    move-object v14, v4

    move-object/from16 v17, v5

    move/from16 p3, v6

    move/from16 v24, v7

    move-object/from16 v22, v8

    move-object v0, v10

    move-object/from16 v25, v12

    move-object/from16 v23, v15

    move v15, v11

    invoke-static/range {v17 .. v17}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    move-object/from16 v9, v17

    invoke-static {v9, v14}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    invoke-static {v9}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object v2, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_24f
    if-ge v4, v2, :cond_283

    iget-object v5, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v5, Ljava/lang/String;

    iget-object v5, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_268
    if-ge v7, v5, :cond_280

    iget-object v8, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_27d
    .catchall {:try_start_98 .. :try_end_27d} :catchall_fe

    add-int/lit8 v7, v7, 0x1

    goto :goto_268

    :cond_280
    add-int/lit8 v4, v4, 0x1

    goto :goto_24f

    :cond_283
    monitor-exit v16

    sget-boolean v1, Lcom/samsung/android/rune/PMRune;->PERM_CHINA_COMPAT_LOW_SDK:Z

    if-eqz v1, :cond_391

    invoke-interface/range {v22 .. v22}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v2

    const/16 v4, 0x17

    if-ge v2, v4, :cond_391

    sget-object v2, Lcom/samsung/android/rune/PMRune;->PERM_CHINA_COMPAT_LOW_SDK_EXCEPTION:Landroid/util/ArraySet;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_391

    iget-object v2, v13, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_391

    iget-object v2, v13, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_2b2

    goto/16 :goto_391

    :cond_2b2
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_2b9
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    if-eqz v5, :cond_388

    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v6

    new-instance v7, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v7, v5, v6}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    iget-object v5, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_2d3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_33b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v9, 0x1

    if-ltz v9, :cond_333

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v7, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-virtual {v9}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/permission/Permission;

    if-nez v9, :cond_301

    :cond_2fa
    move/from16 v18, v1

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    goto :goto_32b

    :cond_301
    iget-object v9, v9, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v9

    if-ne v9, v15, :cond_2fa

    iget-object v9, v7, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-static {v9, v1, v3, v10}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v9

    const/16 v12, 0x1000

    invoke-static {v9, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_2fa

    const/high16 v21, 0x100000

    const/high16 v22, 0x100000

    move/from16 v18, v1

    move/from16 v19, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    move-object/from16 v20, v10

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    goto :goto_32b

    :catchall_329
    move-exception v0

    goto :goto_38f

    :goto_32b
    move v9, v11

    move-object/from16 v5, v16

    move-object/from16 v7, v17

    move/from16 v1, v18

    goto :goto_2d3

    :cond_333
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33b
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {v2, v6}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object v2, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_352
    if-ge v3, v2, :cond_386

    iget-object v5, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v5, Ljava/lang/String;

    iget-object v5, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_36b
    if-ge v7, v5, :cond_383

    iget-object v8, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_380
    .catchall {:try_start_2b9 .. :try_end_380} :catchall_329

    add-int/lit8 v7, v7, 0x1

    goto :goto_36b

    :cond_383
    add-int/lit8 v3, v3, 0x1

    goto :goto_352

    :cond_386
    monitor-exit v4

    goto :goto_391

    :cond_388
    :try_start_388
    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v23
    :try_end_38f
    .catchall {:try_start_388 .. :try_end_38f} :catchall_329

    :goto_38f
    monitor-exit v4

    throw v0

    :cond_391
    :goto_391
    add-int/lit8 v7, v24, 0x1

    move/from16 v6, p3

    move v11, v15

    move-object/from16 v15, v23

    move-object/from16 v12, v25

    const/4 v14, 0x0

    goto/16 :goto_56

    :cond_39d
    move-object/from16 v23, v15

    :try_start_39f
    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v23
    :try_end_3a6
    .catchall {:try_start_39f .. :try_end_3a6} :catchall_fe

    :goto_3a6
    monitor-exit v16

    throw v0

    :cond_3a8
    move-object/from16 v23, v15

    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v23

    :cond_3b1
    :goto_3b1
    return-void

    :catchall_3b2
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final onPackageRemoved(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 2

    return-void
.end method

.method public final onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;I)V
    .registers 9

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_4b

    :cond_7
    const/4 p3, 0x0

    const/4 p4, -0x1

    const/4 p5, 0x0

    if-ne p6, p4, :cond_1c

    iget-object p4, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    if-eqz p4, :cond_15

    invoke-virtual {p4}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object p4

    goto :goto_21

    :cond_15
    const-string/jumbo p0, "userManagerService"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    :cond_1c
    const/4 p4, 0x1

    new-array p4, p4, [I

    aput p6, p4, p5

    :goto_21
    array-length p6, p4

    :goto_22
    if-ge p5, p6, :cond_2e

    aget v0, p4, p5

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/permission/access/AccessCheckingService;->onPackageUninstalled$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;II)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_22

    :cond_2e
    iget-object p4, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz p4, :cond_4c

    check-cast p4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object p3, p4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-nez p3, :cond_4b

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/AccessCheckingService;->onPackageRemoved$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;I)V

    :cond_4b
    :goto_4b
    return-void

    :cond_4c
    const-string/jumbo p0, "packageManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3
.end method

.method public final onStorageVolumeMounted(Ljava/lang/String;Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumePackageNames:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_f

    sget-object v1, Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;

    :cond_f
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->mountedStorageVolumes:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_33

    monitor-exit v0

    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    :try_start_18
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/permission/access/AccessCheckingService;->onStorageVolumeMounted$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/util/List;Z)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_2e

    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    const-string/jumbo p0, "PermissionService"

    const-string/jumbo p1, "onStorageVolumeMounted called"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->updateAdminPermissionsInternal(Ljava/lang/String;)V

    return-void

    :catchall_2e
    move-exception p0

    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    throw p0

    :catchall_33
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final onSystemReady()V
    .registers 12

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessCheckingService;->onSystemReady$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->mSystemReady:Z

    const-class v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->virtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v1, :cond_92

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getAllPersistentDeviceIds()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_92

    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_21
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-eqz v4, :cond_88

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v5

    new-instance v6, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v6, v4, v5}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v1}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->trimDevicePermissionStates(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Set;)V

    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {v2, v5}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object v2, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v4, 0x0

    move v5, v4

    :goto_50
    if-ge v5, v2, :cond_84

    iget-object v6, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v6, Ljava/lang/String;

    iget-object v6, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v8, v4

    :goto_69
    if-ge v8, v6, :cond_81

    iget-object v9, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_7e
    .catchall {:try_start_21 .. :try_end_7e} :catchall_86

    add-int/lit8 v8, v8, 0x1

    goto :goto_69

    :cond_81
    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    :cond_84
    monitor-exit v3

    goto :goto_92

    :catchall_86
    move-exception p0

    goto :goto_90

    :cond_88
    :try_start_88
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
    :try_end_90
    .catchall {:try_start_88 .. :try_end_90} :catchall_86

    :goto_90
    monitor-exit v3

    throw p0

    :cond_92
    :goto_92
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->virtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v1, :cond_ad

    new-instance v2, Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;-><init>(ILjava/lang/Object;)V

    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    iget-object v3, v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    iget-object v3, v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_a3
    iget-object v1, v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->mPersistentDeviceIdRemovedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_ad

    :catchall_aa
    move-exception p0

    monitor-exit v3
    :try_end_ac
    .catchall {:try_start_a3 .. :try_end_ac} :catchall_aa

    throw p0

    :cond_ad
    :goto_ad
    new-instance v1, Landroid/permission/PermissionControllerManager;

    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionControllerManager:Landroid/permission/PermissionControllerManager;

    sput-boolean v0, Lcom/android/server/pm/PmHook;->mSystemReady:Z

    return-void
.end method

.method public final onUserCreated(I)V
    .registers 2

    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    :try_start_3
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessCheckingService;->onUserAdded$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_c

    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    return-void

    :catchall_c
    move-exception p0

    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    throw p0
.end method

.method public final onUserRemoved(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessCheckingService;->onUserRemoved$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)V

    return-void
.end method

.method public final queryPermissionsByGroup(ILjava/lang/String;)Ljava/util/List;
    .registers 11

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-eqz v0, :cond_aa

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v0

    :try_start_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(I)Z

    move-result v3
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_48

    if-eqz v3, :cond_17

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v1

    :cond_17
    :try_start_17
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    if-eqz v3, :cond_9d

    if-eqz p2, :cond_4a

    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionGroups()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PermissionGroupInfo;
    :try_end_36
    .catchall {:try_start_17 .. :try_end_36} :catchall_48

    if-nez v4, :cond_3c

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v1

    :cond_3c
    :try_start_3c
    iget-object v4, v4, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    move-result v4
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_48

    if-nez v4, :cond_4a

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    return-object v1

    :catchall_48
    move-exception p0

    goto :goto_a4

    :cond_4a
    :try_start_4a
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_63
    if-ge v5, v4, :cond_99

    iget-object v6, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/permission/Permission;

    check-cast v6, Ljava/lang/String;

    iget-object v6, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_90

    iget-object v6, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v6, v2}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_90

    const/16 v6, 0x2710

    invoke-static {v7, p1, v6}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionInfo(Lcom/android/server/permission/access/permission/Permission;II)Landroid/content/pm/PermissionInfo;

    move-result-object v6

    goto :goto_91

    :cond_90
    move-object v6, v1

    :goto_91
    if-eqz v6, :cond_96

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_96
    .catchall {:try_start_4a .. :try_end_96} :catchall_48

    :cond_96
    add-int/lit8 v5, v5, 0x1

    goto :goto_63

    :cond_99
    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v3

    :cond_9d
    :try_start_9d
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
    :try_end_a4
    .catchall {:try_start_9d .. :try_end_a4} :catchall_48

    :goto_a4
    :try_start_a4
    throw p0
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a5

    :catchall_a5
    move-exception p1

    invoke-static {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    :cond_aa
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final readLegacyPermissionStateTEMP()V
    .registers 1

    return-void
.end method

.method public final readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessCheckingService;->initialize()V

    return-void
.end method

.method public final removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 13

    if-eqz p2, :cond_22

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/permission/PermissionService;->enforceRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-virtual {p0, p3, p4, p1}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissions(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_11

    return v1

    :cond_11
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/permission/access/permission/PermissionService;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;IIZ)Z

    move-result p0

    return p0

    :cond_21
    return v1

    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "permissionName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS"

    const-string/jumbo v2, "removeOnPermissionsChangeListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    if-eqz p0, :cond_15

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void

    :cond_15
    const-string/jumbo p0, "onPermissionsChangeListeners"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final removePackageGrantedPermissionsForMDM(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removePermission(Ljava/lang/String;)V
    .registers 10

    const-string/jumbo v0, "Not allowed to modify non-dynamic permission "

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v3, 0x0

    if-eqz v2, :cond_df

    invoke-interface {v2}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v2

    :try_start_10
    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(I)Z

    move-result v1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_d8

    invoke-static {v2, v3}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v1, :cond_d0

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_20
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-eqz v4, :cond_c7

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    new-instance v5, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v5, v4, v3}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {p0, v5, p1}, Lcom/android/server/permission/access/permission/PermissionService;->access$getAndEnforcePermissionTree(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/permission/Permission;

    if-nez v4, :cond_4a

    goto :goto_65

    :cond_4a
    iget v5, v4, Lcom/android/server/permission/access/permission/Permission;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b5

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object p0

    iget-object p1, v4, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_65
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {v1, v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_7d
    if-ge v1, p1, :cond_b1

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v5, v0

    :goto_96
    if-ge v5, v3, :cond_ae

    iget-object v6, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_ab
    .catchall {:try_start_20 .. :try_end_ab} :catchall_b3

    add-int/lit8 v5, v5, 0x1

    goto :goto_96

    :cond_ae
    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    :cond_b1
    monitor-exit v2

    return-void

    :catchall_b3
    move-exception p0

    goto :goto_ce

    :cond_b5
    :try_start_b5
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c7
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
    :try_end_ce
    .catchall {:try_start_b5 .. :try_end_ce} :catchall_b3

    :goto_ce
    monitor-exit v2

    throw p0

    :cond_d0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Instant applications don\'t have access to this method"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_d8
    move-exception p0

    :try_start_d9
    throw p0
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_da

    :catchall_da
    move-exception p1

    invoke-static {v2, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    :cond_df
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method public final resetRuntimePermissions(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v2

    if-eqz v2, :cond_78

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v2, v3}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, p2}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {v0, v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_40
    if-ge v0, p1, :cond_74

    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move v4, p2

    :goto_59
    if-ge v4, v2, :cond_71

    iget-object v5, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_6e
    .catchall {:try_start_7 .. :try_end_6e} :catchall_76

    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_74
    monitor-exit v1

    return-void

    :catchall_76
    move-exception p0

    goto :goto_80

    :cond_78
    :try_start_78
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
    :try_end_80
    .catchall {:try_start_78 .. :try_end_80} :catchall_76

    :goto_80
    monitor-exit v1

    throw p0
.end method

.method public final resetRuntimePermissionsForUser(I)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-eqz v0, :cond_bb

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v0

    :try_start_9
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_aa

    :try_start_10
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-eqz v4, :cond_ac

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    new-instance v5, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v5, v4, v1}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_59

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v7

    if-eqz v7, :cond_44

    goto :goto_2b

    :cond_44
    iget-object v7, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8, p1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    iget-object v7, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v6, p1}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    goto :goto_2b

    :catchall_57
    move-exception p0

    goto :goto_b3

    :cond_59
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {v2, v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_71
    if-ge v2, p1, :cond_a5

    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move v6, v1

    :goto_8a
    if-ge v6, v4, :cond_a2

    iget-object v7, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_9f
    .catchall {:try_start_10 .. :try_end_9f} :catchall_57

    add-int/lit8 v6, v6, 0x1

    goto :goto_8a

    :cond_a2
    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    :cond_a5
    :try_start_a5
    monitor-exit v3
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_aa

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :catchall_aa
    move-exception p0

    goto :goto_b5

    :cond_ac
    :try_start_ac
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
    :try_end_b3
    .catchall {:try_start_ac .. :try_end_b3} :catchall_57

    :goto_b3
    :try_start_b3
    monitor-exit v3

    throw p0
    :try_end_b5
    .catchall {:try_start_b3 .. :try_end_b5} :catchall_aa

    :goto_b5
    :try_start_b5
    throw p0
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b6

    :catchall_b6
    move-exception p1

    invoke-static {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    :cond_bb
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final restoreDelayedRuntimePermissions(Ljava/lang/String;I)V
    .registers 7

    if-eqz p1, :cond_37

    const-string/jumbo v0, "userId"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_34

    if-eqz v1, :cond_16

    monitor-exit v0

    return-void

    :cond_16
    monitor-exit v0

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionControllerManager:Landroid/permission/PermissionControllerManager;

    if-eqz v0, :cond_2c

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {}, Lcom/android/server/PermissionThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;

    invoke-direct {v3, p0, p2}, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;-><init>(Lcom/android/server/permission/access/permission/PermissionService;I)V

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/permission/PermissionControllerManager;->applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void

    :cond_2c
    const-string/jumbo p0, "permissionControllerManager"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :catchall_34
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_37
    const-string/jumbo p0, "packageName"

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final restoreRuntimePermissions([BI)V
    .registers 5

    if-eqz p1, :cond_28

    const-string/jumbo v0, "userId"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_25

    monitor-exit v0

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionControllerManager:Landroid/permission/PermissionControllerManager;

    if-eqz p0, :cond_1d

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/permission/PermissionControllerManager;->stageAndApplyRuntimePermissionsBackup([BLandroid/os/UserHandle;)V

    return-void

    :cond_1d
    const-string/jumbo p0, "permissionControllerManager"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :catchall_25
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_28
    const-string/jumbo p0, "backup"

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    .registers 11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v3, "android.permission.POST_NOTIFICATIONS"

    const-string/jumbo v4, "default:0"

    const/16 v7, 0x40

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Lcom/android/server/permission/access/permission/PermissionService;->setRuntimePermissionGranted$default(Lcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method

.method public final revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14

    const/16 v7, 0x20

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v2, p4

    move-object v6, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/permission/access/permission/PermissionService;->setRuntimePermissionGranted$default(Lcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method

.method public final setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;IIZ)Z
    .registers 14

    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v6, 0x1

    if-ne v1, v6, :cond_a

    move v1, v6

    goto :goto_b

    :cond_a
    move v1, v2

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1b

    move v1, v6

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v5, 0x0

    if-eqz v4, :cond_91

    invoke-static {v4, v3, p4}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v4

    :try_start_29
    invoke-interface {v4}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageState;
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_89

    if-nez v7, :cond_39

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    return v2

    :cond_39
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    move v4, v1

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_44

    return v2

    :cond_44
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz v2, :cond_82

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Lcom/android/server/pm/Computer;->isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z

    move-result v2

    const/4 v3, 0x4

    invoke-static {p3, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_76

    if-nez v4, :cond_69

    if-eqz v2, :cond_60

    goto :goto_69

    :cond_60
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Modifying upgrade allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    :goto_69
    if-eqz p5, :cond_76

    if-eqz v4, :cond_6e

    goto :goto_76

    :cond_6e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Adding to upgrade allowlist requiresandroid.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_76
    :goto_76
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->setAllowlistedRestrictedPermissionsUnchecked(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;II)V

    return v6

    :cond_82
    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :catchall_89
    move-exception v0

    move-object v1, v0

    :try_start_8b
    throw v1
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8c

    :catchall_8c
    move-exception v0

    invoke-static {v4, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :cond_91
    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5
.end method

.method public final setAllowlistedRestrictedPermissionsUnchecked(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;II)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p4

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    const/high16 v2, 0x10000

    goto :goto_10

    :cond_f
    move v2, v3

    :goto_10
    const/4 v4, 0x4

    invoke-static {v1, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/high16 v5, 0x20000

    or-int/2addr v2, v5

    :cond_1a
    const/4 v5, 0x2

    invoke-static {v1, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_25

    const v1, 0x8000

    or-int/2addr v2, v1

    :cond_25
    move v10, v2

    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_2d
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    if-eqz v5, :cond_114

    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v12

    new-instance v6, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v6, v5, v12}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    iget-object v5, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v7, v3

    :goto_52
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v14, v7, 0x1

    if-ltz v7, :cond_9f

    check-cast v8, Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/android/server/permission/access/permission/Permission;

    if-eqz v9, :cond_86

    iget-object v7, v9, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v7, v7, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {v7, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v7

    if-nez v7, :cond_83

    iget-object v7, v9, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v7, v7, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 v11, 0x8

    invoke-static {v7, v11}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v7

    if-eqz v7, :cond_86

    :cond_83
    move-object/from16 v15, p3

    goto :goto_8c

    :cond_86
    move-object/from16 v15, p3

    goto :goto_9d

    :catchall_89
    move-exception v0

    goto/16 :goto_11c

    :goto_8c
    invoke-interface {v15, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_98

    move v11, v10

    :goto_93
    move/from16 v7, p2

    move/from16 v8, p5

    goto :goto_9a

    :cond_98
    move v11, v3

    goto :goto_93

    :goto_9a
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionExemptFlags(Lcom/android/server/permission/access/MutateStateScope;IILcom/android/server/permission/access/permission/Permission;II)V

    :goto_9d
    move v7, v14

    goto :goto_52

    :cond_9f
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a7
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {v1, v12}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object v1, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v4, v3

    :goto_be
    if-ge v4, v1, :cond_f2

    iget-object v5, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v5, Ljava/lang/String;

    iget-object v5, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v7, v3

    :goto_d7
    if-ge v7, v5, :cond_ef

    iget-object v8, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_ec
    .catchall {:try_start_2d .. :try_end_ec} :catchall_89

    add-int/lit8 v7, v7, 0x1

    goto :goto_d7

    :cond_ef
    add-int/lit8 v4, v4, 0x1

    goto :goto_be

    :cond_f2
    monitor-exit v2

    const-string/jumbo v0, "PermissionService"

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setAllowlistedRestrictedPermissionsUnchecked called for package - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/access/permission/PermissionService;->updateAdminPermissionsInternal(Ljava/lang/String;)V

    return-void

    :cond_114
    :try_start_114
    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_11c
    .catchall {:try_start_114 .. :try_end_11c} :catchall_89

    :goto_11c
    monitor-exit v2

    throw v0
.end method

.method public final setDefaultPermissionGrantFingerprint(I)V
    .registers 10

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v2

    if-eqz v2, :cond_6d

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, p1, Lcom/android/server/permission/access/MutableUserState;->defaultPermissionGrantFingerprint:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {p0, v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v0, 0x0

    move v2, v0

    :goto_35
    if-ge v2, p1, :cond_69

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v5, v0

    :goto_4e
    if-ge v5, v3, :cond_66

    iget-object v6, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_63
    .catchall {:try_start_9 .. :try_end_63} :catchall_6b

    add-int/lit8 v5, v5, 0x1

    goto :goto_4e

    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_69
    monitor-exit v1

    return-void

    :catchall_6b
    move-exception p0

    goto :goto_75

    :cond_6d
    :try_start_6d
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_6b

    :goto_75
    monitor-exit v1

    throw p0
.end method

.method public final setLicensePermissionsForMDM(Ljava/lang/String;Ljava/util/Set;)I
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    const-string/jumbo v0, "PermissionService"

    const-string/jumbo v2, "setLicensePermissions : packageName = "

    invoke-static {v2, v3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz v0, :cond_38a

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object v9

    const/4 v10, 0x0

    :try_start_21
    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v2
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_32} :catch_37

    :try_start_32
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32 .. :try_end_36} :catch_38

    goto :goto_44

    :catch_37
    move v2, v10

    :catch_38
    const-string/jumbo v0, "PermissionService"

    const-string/jumbo v4, "packageName = "

    const-string v5, " not found for user 0"

    invoke-static {v4, v3, v5, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    :goto_44
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4d
    :goto_4d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v11, 0x1

    if-eqz v6, :cond_18e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v12, Lcom/android/server/permission/jarjar/kotlin/text/Regex;

    const-string v13, ","

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    const-string/jumbo v14, "compile(...)"

    invoke-static {v14, v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v12, v13}, Lcom/android/server/permission/jarjar/kotlin/text/Regex;-><init>(Ljava/util/regex/Pattern;)V

    invoke-virtual {v12, v6}, Lcom/android/server/permission/jarjar/kotlin/text/Regex;->split(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_119

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v13

    :goto_7d
    invoke-interface {v13}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v14

    if-eqz v14, :cond_119

    invoke-interface {v13}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_90

    goto :goto_7d

    :cond_90
    invoke-interface {v13}, Ljava/util/ListIterator;->nextIndex()I

    move-result v13

    add-int/2addr v13, v11

    if-ltz v13, :cond_106

    if-nez v13, :cond_9f

    sget-object v11, Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;

    :goto_9b
    const/16 v16, 0x0

    goto/16 :goto_11d

    :cond_9f
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v14

    if-lt v13, v14, :cond_aa

    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v11

    goto :goto_9b

    :cond_aa
    if-ne v13, v11, :cond_ca

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_c1

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string/jumbo v12, "singletonList(...)"

    invoke-static {v12, v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9b

    :cond_c1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v1, "List is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ca
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v15, v10

    :cond_d4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e7

    const/16 v16, 0x0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v15, v11

    if-ne v15, v13, :cond_d4

    goto :goto_e9

    :cond_e7
    const/16 v16, 0x0

    :goto_e9
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_103

    if-eq v7, v11, :cond_f3

    move-object v11, v14

    goto :goto_11d

    :cond_f3
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string/jumbo v11, "singletonList(...)"

    invoke-static {v11, v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_101
    move-object v11, v7

    goto :goto_11d

    :cond_103
    sget-object v7, Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;

    goto :goto_101

    :cond_106
    const-string/jumbo v0, "Requested element count "

    const-string v1, " is less than zero."

    invoke-static {v13, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_119
    const/16 v16, 0x0

    sget-object v11, Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;

    :goto_11d
    new-array v7, v10, [Ljava/lang/String;

    invoke-interface {v11, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    if-eqz v7, :cond_16f

    array-length v11, v7

    if-lez v11, :cond_16f

    array-length v6, v7

    move v11, v10

    :goto_12c
    if-ge v11, v6, :cond_4d

    aget-object v12, v7, v11

    iget-object v13, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v13

    if-eqz v13, :cond_168

    iget-object v14, v1, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/permission/access/permission/Permission;

    if-eqz v13, :cond_165

    invoke-virtual {v1, v13}, Lcom/android/server/permission/access/permission/PermissionService;->getSourcePackageSetting(Lcom/android/server/permission/access/permission/Permission;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v14

    if-eqz v14, :cond_165

    if-eqz v2, :cond_162

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_162

    goto :goto_165

    :cond_162
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_165
    :goto_165
    add-int/lit8 v11, v11, 0x1

    goto :goto_12c

    :cond_168
    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v16

    :cond_16f
    const-string/jumbo v7, "PermissionService"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "setLicensePermissions : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", invalid permission "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    :cond_18e
    const/16 v16, 0x0

    invoke-virtual {v1, v9, v4, v3, v10}, Lcom/android/server/permission/access/permission/PermissionService;->updateLicensePermissionMDM([ILjava/util/ArrayList;Ljava/lang/String;Z)Ljava/util/ArrayList;

    const-string/jumbo v4, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iget-object v5, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v5}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    if-eqz v5, :cond_383

    iget-object v6, v1, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/android/server/permission/access/permission/Permission;

    if-eqz v7, :cond_249

    invoke-virtual {v1, v7}, Lcom/android/server/permission/access/permission/PermissionService;->getSourcePackageSetting(Lcom/android/server/permission/access/permission/Permission;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    if-eqz v4, :cond_249

    if-nez v0, :cond_249

    if-nez v2, :cond_249

    array-length v0, v9

    move v12, v10

    :goto_1c2
    if-ge v12, v0, :cond_249

    aget v5, v9, v12

    iget-object v13, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    :try_start_1cd
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v2

    if-eqz v2, :cond_240

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v15

    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v2, v15}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    iget-object v2, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v18, v4

    move-object v4, v2

    move-object/from16 v2, v18

    invoke-static/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->access$updateLicensePermissionInternalMDM(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;IZ)Z

    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {v13, v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object v4, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move v5, v10

    :goto_200
    if-ge v5, v4, :cond_238

    iget-object v6, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v13, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v13, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v6, Ljava/lang/String;

    iget-object v6, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v15, v10

    :goto_219
    if-ge v15, v6, :cond_233

    iget-object v11, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v11, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    iget-object v10, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v10, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_22e
    .catchall {:try_start_1cd .. :try_end_22e} :catchall_23e

    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_219

    :cond_233
    add-int/lit8 v5, v5, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_200

    :cond_238
    monitor-exit v14

    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_1c2

    :catchall_23e
    move-exception v0

    goto :goto_247

    :cond_240
    :try_start_240
    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v16
    :try_end_247
    .catchall {:try_start_240 .. :try_end_247} :catchall_23e

    :goto_247
    monitor-exit v14

    throw v0

    :cond_249
    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :try_start_253
    const-string/jumbo v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getMamPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2a3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2a3

    const-string/jumbo v4, "PermissionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getMamPermissions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_293

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v4

    goto :goto_2a3

    :cond_293
    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_299
    .catch Landroid/os/RemoteException; {:try_start_253 .. :try_end_299} :catch_29a

    goto :goto_2a3

    :catch_29a
    move-exception v0

    const-string/jumbo v4, "PermissionService"

    const-string v5, "Error while getting MAM permissions"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a3
    :goto_2a3
    const-string/jumbo v0, "com.samsung.android.knox.api-access-control-group"

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Lcom/android/server/permission/access/permission/PermissionService;->queryPermissionsByGroup(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2cd

    new-instance v4, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_2bd
    if-ge v6, v5, :cond_2d2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2bd

    :cond_2cd
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_2d2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_372

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2dd
    :goto_2dd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_372

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v6}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v6

    if-eqz v6, :cond_36b

    iget-object v7, v1, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/permission/Permission;

    if-eqz v6, :cond_2dd

    invoke-virtual {v1, v6}, Lcom/android/server/permission/access/permission/PermissionService;->getSourcePackageSetting(Lcom/android/server/permission/access/permission/Permission;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    if-eqz v7, :cond_2dd

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v7

    if-nez v7, :cond_316

    const/4 v7, 0x0

    goto :goto_31d

    :cond_316
    const-string/jumbo v10, "com.samsung.knoxlicense.permissions"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    :goto_31d
    if-eqz v7, :cond_366

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_342

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "PermissionService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "hasSelectivePermissionsForMdm(): permission granted = "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2dd

    :cond_342
    iget-object v7, v6, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2dd

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "PermissionService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "accessControlPermissions granted on top of selective permissions = "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2dd

    :cond_366
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2dd

    :cond_36b
    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v16

    :cond_372
    const/4 v2, 0x1

    invoke-virtual {v1, v9, v0, v3, v2}, Lcom/android/server/permission/access/permission/PermissionService;->updateLicensePermissionMDM([ILjava/util/ArrayList;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, v1, Lcom/android/server/permission/access/permission/PermissionService;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v17, 0x0

    return v17

    :cond_383
    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v16

    :cond_38a
    const/16 v16, 0x0

    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v16
.end method

.method public final setPermissionFlagsWithPolicy(IIILcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const-string/jumbo v0, "default:0"

    invoke-static {p6, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-object v4, p5

    const/4 p5, -0x1

    move p6, p3

    move p3, p2

    move p2, p1

    move-object p1, p4

    move-object p4, v4

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    return-void

    :cond_16
    move v3, p3

    move-object v4, p5

    move p3, p2

    move p2, p1

    move-object p1, p4

    sget-object p4, Landroid/permission/PermissionManager;->DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;

    invoke-interface {p4, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_45

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " is not device aware permission,  set the flags for default device."

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string/jumbo p5, "PermissionService"

    invoke-static {p5, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    const/4 v5, -0x1

    move-object v1, p1

    move v2, p2

    move v6, v3

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    return-void

    :cond_45
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    move v1, p2

    move v2, p3

    move-object v5, p6

    move-object v6, v4

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->setPermissionFlags(IIILcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final shouldShowRequestPermissionRationale(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 17

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v6, 0x0

    if-eqz v1, :cond_c1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v1

    const-string/jumbo v7, "PermissionService"

    const/4 v8, 0x0

    if-nez v1, :cond_16

    const-string/jumbo v0, "shouldShowRequestPermissionRationale: Unknown user "

    invoke-static {p1, v0, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_16
    const/4 v9, 0x1

    const-string/jumbo v1, "shouldShowRequestPermissionRationale"

    invoke-virtual {p0, v1, p1, v9, v8}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(Ljava/lang/String;IZZ)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-eqz v3, :cond_ba

    invoke-static {v3, v1, p1}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v3

    :try_start_29
    invoke-interface {v3, p2}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v2
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_b2

    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    if-nez v2, :cond_33

    goto :goto_6c

    :cond_33
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v10

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-eq v1, v10, :cond_3e

    goto :goto_6c

    :cond_3e
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    new-instance v3, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-eqz v1, :cond_ab

    invoke-direct {v3, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    move-object v0, p0

    move-object v4, p3

    move-object/from16 v5, p4

    move-object v1, v3

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    goto :goto_6c

    :cond_58
    move-object v0, p0

    move v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object v3, v1

    move v1, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const v3, 0x401c0

    invoke-static {v1, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v3

    if-eqz v3, :cond_6d

    :goto_6c
    return v8

    :cond_6d
    const-string/jumbo v3, "android.permission.ACCESS_BACKGROUND_LOCATION"

    move-object v4, p3

    invoke-static {p3, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    const-class v3, Landroid/os/Binder;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_7d
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->platformCompat:Lcom/android/internal/compat/IPlatformCompat;

    if-eqz v0, :cond_8d

    const-wide/32 v10, 0x8c7dff3

    invoke-interface {v0, v10, v11, p2, p1}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v8

    goto :goto_9a

    :catchall_89
    move-exception v0

    goto :goto_a0

    :catch_8b
    move-exception v0

    goto :goto_94

    :cond_8d
    const-string/jumbo v0, "platformCompat"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_94} :catch_8b
    .catchall {:try_start_7d .. :try_end_94} :catchall_89

    :goto_94
    :try_start_94
    const-string/jumbo v2, "shouldShowRequestPermissionRationale: Unable to check if compatibility change is enabled"

    invoke-static {v7, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catchall {:try_start_94 .. :try_end_9a} :catchall_89

    :goto_9a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_a4

    return v9

    :goto_a0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_a4
    const/16 v0, 0x20

    invoke-static {v1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    return v0

    :cond_ab
    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :catchall_b2
    move-exception v0

    move-object v1, v0

    :try_start_b4
    throw v1
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b5

    :catchall_b5
    move-exception v0

    invoke-static {v3, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :cond_ba
    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_c1
    const-string/jumbo v0, "userManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6
.end method

.method public final updateLicensePermissionMDM([ILjava/util/ArrayList;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 23

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v2, :cond_bb

    aget v9, v0, v4

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v11, :cond_b3

    move-object/from16 v12, p2

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v13, v5, 0x1

    move-object v14, v6

    check-cast v14, Lcom/android/server/permission/access/permission/Permission;

    move-object/from16 v5, p0

    iget-object v15, v5, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    :try_start_28
    invoke-static {v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v6

    if-eqz v6, :cond_a9

    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v7

    new-instance v8, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v8, v6, v7}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    iget-object v6, v14, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object v3, v8

    move-object v8, v6

    move-object v6, v3

    move/from16 v10, p4

    move-object v3, v7

    move-object/from16 v7, p3

    invoke-static/range {v5 .. v10}, Lcom/android/server/permission/access/permission/PermissionService;->access$updateLicensePermissionInternalMDM(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v6

    invoke-static {v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {v15, v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    invoke-static {v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object v5, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_5e
    if-ge v7, v5, :cond_98

    iget-object v8, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    iget-object v10, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v8, Ljava/lang/String;

    iget-object v8, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v15, 0x0

    :goto_77
    if-ge v15, v8, :cond_93

    iget-object v0, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    iget-object v0, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v17, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_8e
    .catchall {:try_start_28 .. :try_end_8e} :catchall_a7

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    goto :goto_77

    :cond_93
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    goto :goto_5e

    :cond_98
    monitor-exit v16

    if-eqz v6, :cond_a2

    iget-object v0, v14, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a2
    move-object/from16 v0, p1

    move v5, v13

    goto/16 :goto_12

    :catchall_a7
    move-exception v0

    goto :goto_b1

    :cond_a9
    :try_start_a9
    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_b1
    .catchall {:try_start_a9 .. :try_end_b1} :catchall_a7

    :goto_b1
    monitor-exit v16

    throw v0

    :cond_b3
    move-object/from16 v12, p2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_9

    :cond_bb
    return-object v1
.end method

.method public final updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v4, p2

    move/from16 v3, p7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v5, 0x0

    if-eqz v2, :cond_170

    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v2

    if-nez v2, :cond_21

    const-string/jumbo v0, "PermissionService"

    const-string/jumbo v1, "updatePermissionFlags: Unknown user "

    invoke-static {v3, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_21
    const-string/jumbo v2, "updatePermissionFlags"

    const/4 v6, 0x1

    invoke-virtual {v0, v2, v3, v6, v6}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(Ljava/lang/String;IZZ)V

    const-string/jumbo v2, "updatePermissionFlags"

    const-string/jumbo v7, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string/jumbo v8, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    move-result v2

    if-nez v2, :cond_72

    const/4 v2, 0x4

    move/from16 v7, p3

    invoke-static {v7, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_74

    if-eqz p5, :cond_55

    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    const-string/jumbo v8, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    const-string/jumbo v9, "Need android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY to change policy flags"

    invoke-virtual {v2, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_74

    :cond_55
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz v2, :cond_6b

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v2

    const/16 v8, 0x1d

    if-ge v2, v8, :cond_62

    goto :goto_74

    :cond_62
    const-string/jumbo v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY needs to be checked for packages targeting 29 or later when changing policy flags"

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6b
    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_72
    move/from16 v7, p3

    :cond_74
    :goto_74
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz v2, :cond_169

    invoke-virtual {v2, v12}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-eqz v2, :cond_83

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    goto :goto_84

    :cond_83
    move-object v8, v5

    :goto_84
    if-eqz v8, :cond_15f

    iget-object v9, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz v9, :cond_158

    const/4 v13, 0x0

    invoke-virtual {v9, v1, v3, v12, v13}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_93

    goto/16 :goto_15f

    :cond_93
    invoke-static {v1}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    move-result v1

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a3

    :goto_a1
    move v10, v6

    goto :goto_d1

    :cond_a3
    iget-object v8, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz v8, :cond_151

    invoke-virtual {v8, v3, v12}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v10, v13

    :goto_ad
    if-ge v10, v9, :cond_d0

    aget-object v11, v8, v10

    iget-object v14, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz v14, :cond_c9

    invoke-virtual {v14, v11}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v11

    if-eqz v11, :cond_c6

    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c6

    goto :goto_a1

    :cond_c6
    add-int/lit8 v10, v10, 0x1

    goto :goto_ad

    :cond_c9
    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_d0
    move v10, v13

    :goto_d1
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    iget-object v14, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v14}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    :try_start_dc
    invoke-static {v14}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v6

    if-eqz v6, :cond_148

    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v5

    move v8, v1

    new-instance v1, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v1, v6, v5}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    const-string/jumbo v11, "updatePermissionFlags"

    const/4 v9, 0x1

    move-object v13, v5

    move v6, v7

    move/from16 v7, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v12}, Lcom/android/server/permission/access/permission/PermissionService;->access$updatePermissionFlags(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v14}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {v14, v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    invoke-static {v14}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object v1, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_110
    if-ge v2, v1, :cond_144

    iget-object v3, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_129
    if-ge v5, v3, :cond_141

    iget-object v6, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_13e
    .catchall {:try_start_dc .. :try_end_13e} :catchall_146

    add-int/lit8 v5, v5, 0x1

    goto :goto_129

    :cond_141
    add-int/lit8 v2, v2, 0x1

    goto :goto_110

    :cond_144
    monitor-exit v15

    return-void

    :catchall_146
    move-exception v0

    goto :goto_14f

    :cond_148
    :try_start_148
    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5
    :try_end_14f
    .catchall {:try_start_148 .. :try_end_14f} :catchall_146

    :goto_14f
    monitor-exit v15

    throw v0

    :cond_151
    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_158
    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_15f
    :goto_15f
    const-string/jumbo v0, "PermissionService"

    const-string/jumbo v1, "updatePermissionFlags: Unknown package "

    invoke-static {v1, v12, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_169
    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_170
    const-string/jumbo v0, "userManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5
.end method

.method public final updatePermissionFlagsForAllApps(III)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v3, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v4, 0x0

    if-eqz v2, :cond_12d

    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string/jumbo v0, "PermissionService"

    const-string/jumbo v1, "updatePermissionFlagsForAllApps: Unknown user "

    invoke-static {v3, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1d
    const-string/jumbo v2, "updatePermissionFlagsForAllApps"

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v5, v5}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(Ljava/lang/String;IZZ)V

    const-string/jumbo v2, "updatePermissionFlagsForAllApps"

    const-string/jumbo v5, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string/jumbo v6, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    move-result v8

    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-eqz v1, :cond_126

    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v1

    :try_start_40
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v2
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_11e

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    iget-object v13, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    :try_start_4e
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-eqz v1, :cond_115

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v15

    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v1, v15}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_65
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v1

    if-eqz v1, :cond_88

    :cond_86
    :goto_86
    move-object v1, v4

    goto :goto_c1

    :cond_88
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_8f

    goto :goto_86

    :cond_8f
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_97
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    const-string/jumbo v5, "default:0"

    const-string/jumbo v11, "updatePermissionFlagsForAllApps"

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v6, v4

    move-object v4, v1

    move-object v1, v6

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-static/range {v0 .. v12}, Lcom/android/server/permission/access/permission/PermissionService;->access$updatePermissionFlags(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v3, p3

    move-object v4, v1

    goto :goto_97

    :catchall_bf
    move-exception v0

    goto :goto_11c

    :goto_c1
    move-object/from16 v0, p0

    move/from16 v3, p3

    move-object v4, v1

    goto :goto_65

    :cond_c7
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {v13, v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object v1, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_df
    if-ge v3, v1, :cond_113

    iget-object v4, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move v6, v2

    :goto_f8
    if-ge v6, v4, :cond_110

    iget-object v7, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_10d
    .catchall {:try_start_4e .. :try_end_10d} :catchall_bf

    add-int/lit8 v6, v6, 0x1

    goto :goto_f8

    :cond_110
    add-int/lit8 v3, v3, 0x1

    goto :goto_df

    :cond_113
    monitor-exit v14

    return-void

    :cond_115
    :try_start_115
    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
    :try_end_11c
    .catchall {:try_start_115 .. :try_end_11c} :catchall_bf

    :goto_11c
    monitor-exit v14

    throw v0

    :catchall_11e
    move-exception v0

    move-object v2, v0

    :try_start_120
    throw v2
    :try_end_121
    .catchall {:try_start_120 .. :try_end_121} :catchall_121

    :catchall_121
    move-exception v0

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :cond_126
    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_12d
    const-string/jumbo v0, "userManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method public final updatePermissionStatesAndFlagsInternalForMDM(Ljava/lang/String;IIILjava/util/List;)Z
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v8, 0x0

    if-nez v0, :cond_29

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz v2, :cond_22

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v0

    goto :goto_3d

    :cond_22
    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    :cond_29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz v3, :cond_1aa

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v9, v2

    :goto_3d
    const/4 v10, 0x0

    :try_start_3e
    iget-object v11, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v11}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_45} :catch_18c

    :try_start_45
    invoke-static {v11}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-eqz v0, :cond_195

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v13

    new-instance v2, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v2, v0, v13}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v14

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v3, 0x1

    move v4, v3

    move v0, v10

    :goto_68
    if-ge v0, v15, :cond_131

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v16, v0, 0x1

    move-object/from16 v17, v5

    check-cast v17, Lcom/android/server/pm/pkg/PackageStateInternal;
    :try_end_74
    .catchall {:try_start_45 .. :try_end_74} :catchall_c9

    :try_start_74
    invoke-static/range {v17 .. v17}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v5, p5

    invoke-virtual {v1, v2, v0, v5}, Lcom/android/server/permission/access/permission/PermissionService;->getRequestedRuntimePermissionsInternal(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_8b} :catch_11d
    .catchall {:try_start_74 .. :try_end_8b} :catchall_c9

    move/from16 v18, v4

    move v0, v10

    :goto_8e
    if-ge v0, v7, :cond_115

    :try_start_90
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v19, v0, 0x1

    check-cast v4, Ljava/lang/String;
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_98} :catch_110
    .catchall {:try_start_90 .. :try_end_98} :catchall_c9

    move/from16 v20, v3

    :try_start_9a
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    iget-object v0, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/server/permission/access/permission/Permission;
    :try_end_a9
    .catch Ljava/lang/NullPointerException; {:try_start_9a .. :try_end_a9} :catch_e8
    .catch Ljava/lang/RuntimeException; {:try_start_9a .. :try_end_a9} :catch_dc
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a9} :catch_d4
    .catchall {:try_start_9a .. :try_end_a9} :catchall_c9

    move/from16 v4, v20

    move-object/from16 v20, v8

    move v8, v4

    move/from16 v5, p2

    move/from16 v4, p4

    move-object/from16 v21, v6

    move/from16 v22, v7

    move/from16 v7, p3

    move-object v6, v0

    :try_start_b9
    invoke-static/range {v1 .. v7}, Lcom/android/server/permission/access/permission/PermissionService;->access$handlePermissionStateInternal(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IIILcom/android/server/permission/access/permission/Permission;I)Z

    move-result v18
    :try_end_bd
    .catch Ljava/lang/NullPointerException; {:try_start_b9 .. :try_end_bd} :catch_d2
    .catch Ljava/lang/RuntimeException; {:try_start_b9 .. :try_end_bd} :catch_d0
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bd} :catch_cc
    .catchall {:try_start_b9 .. :try_end_bd} :catchall_c9

    :goto_bd
    move-object/from16 v5, p5

    move v3, v8

    :goto_c0
    move/from16 v0, v19

    move-object/from16 v8, v20

    move-object/from16 v6, v21

    move/from16 v7, v22

    goto :goto_8e

    :catchall_c9
    move-exception v0

    goto/16 :goto_19e

    :catch_cc
    move-exception v0

    :goto_cd
    move/from16 v4, v18

    goto :goto_121

    :catch_d0
    move-exception v0

    goto :goto_f4

    :catch_d2
    move-exception v0

    goto :goto_fe

    :catch_d4
    move-exception v0

    move/from16 v23, v20

    move-object/from16 v20, v8

    move/from16 v8, v23

    goto :goto_cd

    :catch_dc
    move-exception v0

    move/from16 v21, v20

    move-object/from16 v20, v8

    move/from16 v8, v21

    move-object/from16 v21, v6

    move/from16 v22, v7

    goto :goto_f4

    :catch_e8
    move-exception v0

    move/from16 v21, v20

    move-object/from16 v20, v8

    move/from16 v8, v21

    move-object/from16 v21, v6

    move/from16 v22, v7

    goto :goto_fe

    :goto_f4
    :try_start_f4
    const-string/jumbo v3, "PermissionService"

    const-string/jumbo v4, "updatePermissionState perm failed runtime exception "

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_fd} :catch_cc
    .catchall {:try_start_f4 .. :try_end_fd} :catchall_c9

    goto :goto_bd

    :goto_fe
    :try_start_fe
    const-string/jumbo v3, "PermissionService"

    const-string/jumbo v4, "updatePermissionState perm failed nullptr exception "

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_107} :catch_10d
    .catchall {:try_start_fe .. :try_end_107} :catchall_c9

    move-object/from16 v5, p5

    move v3, v8

    move/from16 v18, v10

    goto :goto_c0

    :catch_10d
    move-exception v0

    move v4, v10

    goto :goto_121

    :catch_110
    move-exception v0

    move-object/from16 v20, v8

    move v8, v3

    goto :goto_cd

    :cond_115
    move-object/from16 v20, v8

    move/from16 v0, v16

    move/from16 v4, v18

    goto/16 :goto_68

    :catch_11d
    move-exception v0

    move-object/from16 v20, v8

    move v8, v3

    :goto_121
    :try_start_121
    const-string/jumbo v3, "PermissionService"

    const-string/jumbo v5, "updatePermissionState state failed : "

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v8

    move/from16 v0, v16

    move-object/from16 v8, v20

    goto/16 :goto_68

    :cond_131
    move-object/from16 v20, v8

    move v8, v3

    invoke-static {v11}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {v11, v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    invoke-static {v11}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object v2, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move v3, v10

    :goto_14b
    if-ge v3, v2, :cond_17f

    iget-object v5, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v5, Ljava/lang/String;

    iget-object v5, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v7, v10

    :goto_164
    if-ge v7, v5, :cond_17c

    iget-object v9, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    iget-object v11, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v11, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_179
    .catchall {:try_start_121 .. :try_end_179} :catchall_c9

    add-int/lit8 v7, v7, 0x1

    goto :goto_164

    :cond_17c
    add-int/lit8 v3, v3, 0x1

    goto :goto_14b

    :cond_17f
    :try_start_17f
    monitor-exit v12

    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz v0, :cond_18e

    filled-new-array/range {p4 .. p4}, [I

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    return v4

    :catch_18c
    move-exception v0

    goto :goto_1a0

    :cond_18e
    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v20
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_195} :catch_18c

    :cond_195
    move-object/from16 v20, v8

    :try_start_197
    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v20
    :try_end_19e
    .catchall {:try_start_197 .. :try_end_19e} :catchall_c9

    :goto_19e
    :try_start_19e
    monitor-exit v12

    throw v0
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1a0} :catch_18c

    :goto_1a0
    const-string/jumbo v1, "PermissionService"

    const-string/jumbo v2, "updatePermissionState Failed with exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v10

    :cond_1aa
    move-object/from16 v20, v8

    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v20
.end method

.method public final writeLegacyPermissionStateTEMP()V
    .registers 1

    return-void
.end method

.method public final writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/permission/access/permission/PermissionService;->toLegacyPermissions(Lcom/android/server/permission/access/immutable/IndexedMap;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissions(Ljava/util/List;)V

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->toLegacyPermissions(Lcom/android/server/permission/access/immutable/IndexedMap;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissionTrees(Ljava/util/List;)V

    return-void

    :cond_31
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
