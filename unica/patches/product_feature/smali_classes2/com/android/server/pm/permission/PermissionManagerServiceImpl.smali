.class public final Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerServiceInterface;


# static fields
.field public static final BACKUP_TIMEOUT_MILLIS:J

.field public static final EMPTY_INT_ARRAY:[I

.field public static final FULLER_PERMISSION_MAP:Ljava/util/Map;

.field public static final NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;

.field public static final NOTIFICATION_PERMISSIONS:Ljava/util/List;

.field public static final READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;

.field public static final READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

.field public static final STORAGE_PERMISSIONS:Ljava/util/List;


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

.field public final mGlobalGids:[I

.field public final mHandler:Landroid/os/Handler;

.field public final mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

.field public final mIsLeanback:Z

.field public final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

.field public final mPackageGrantedPermissions:Landroid/util/ArrayMap;

.field public final mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

.field public mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

.field public mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

.field public final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field public mPrivappPermissionsViolations:Landroid/util/ArraySet;

.field public final mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;

.field public final mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

.field public final mState:Lcom/android/server/pm/permission/DevicePermissionState;

.field public final mSystemPermissions:Landroid/util/SparseArray;

.field public mSystemReady:Z

.field public final mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->BACKUP_TIMEOUT_MILLIS:J

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->EMPTY_INT_ARRAY:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->STORAGE_PERMISSIONS:Ljava/util/List;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    sput-object v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NOTIFICATION_PERMISSIONS:Ljava/util/List;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    const-string/jumbo v6, "android.permission.ACCESS_COARSE_LOCATION"

    const-string/jumbo v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "android.permission.INTERACT_ACROSS_USERS"

    const-string/jumbo v7, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "android.permission.READ_MEDIA_AUDIO"

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "android.permission.READ_MEDIA_VIDEO"

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "android.permission.BLUETOOTH_ADVERTISE"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/ArrayMap;)V
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/pm/PackageManagerTracedLock;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    new-instance v4, Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-direct {v4}, Lcom/android/server/pm/permission/DevicePermissionState;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    new-instance v4, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v4}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v4, "platform_compat"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    new-instance v4, Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-direct {v4}, Lcom/android/server/pm/permission/PermissionRegistry;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    new-instance v4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    invoke-direct {v4, p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)V

    iput-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    invoke-static {}, Landroid/permission/PermissionManager;->disablePackageNamePermissionCache()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    const-string/jumbo p1, "android.software.leanback"

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mIsLeanback:Z

    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mApexManager:Lcom/android/server/pm/ApexManager;

    const-string/jumbo p1, "android"

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "android.hardware.type.automotive"

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "ro.android.car.carservice.package"

    invoke-static {p1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance p1, Lcom/android/server/ServiceThread;

    const-string/jumbo p2, "PermissionManager"

    const/16 v1, 0xa

    invoke-direct {p1, p2, v1, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p1

    iget-object p2, p1, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemPermissions:Landroid/util/SparseArray;

    iget-object p1, p1, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mGlobalGids:[I

    new-instance p1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    sget-boolean p2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v2

    const/4 p2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge p2, v1, :cond_3

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/SystemConfig$PermissionEntry;

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v4, v1, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/server/pm/permission/Permission;

    iget-object v4, v1, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    const-string/jumbo v5, "android"

    invoke-direct {v3, v0, v4, v5}, Lcom/android/server/pm/permission/Permission;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    iget-object v5, v3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v4, v1, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    if-eqz v4, :cond_2

    iget-boolean v1, v1, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    iput-object v4, v3, Lcom/android/server/pm/permission/Permission;->mGids:[I

    iput-boolean v1, v3, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    :cond_2
    add-int/2addr p2, v0

    goto :goto_0

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    return-void

    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public static canGrantOemPermission(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)Z
    .locals 4

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isOem()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/SystemConfig;->mPermissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionAllowlist;->mOemAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    :goto_0
    if-eqz p0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "OEM permission "

    const-string v2, " requested by package "

    const-string v3, " must be explicitly declared granted or not"

    invoke-static {v1, p1, v2, v0, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAllUserIds$1()[I
    .locals 1

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object v0

    return-object v0
.end method

.method public static getAppOp(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;)I
    .locals 3

    iget-object v0, p2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object p2, p2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p2, p2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-eq p2, v1, :cond_1

    return p2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid appOp "

    const-string v2, " for package "

    invoke-static {p2, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " permission "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getVolumeUuidForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p0, "primary_physical"

    return-object p0

    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object p0
.end method

.method public static hasPermission(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 4

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isCompatPlatformPermissionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    sget-object v3, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getSdkVersion()I

    move-result v3

    if-ge v4, v3, :cond_0

    const-string v0, "Auto-granting "

    const-string v1, " to old pkg "

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PermissionManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isPossibleToModify(ILcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p2, p3}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result p2

    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_1

    sget-object p2, Lcom/android/server/pm/PersonaManagerService;->containerCriticalApps:Ljava/util/List;

    if-eqz p2, :cond_0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Cannot modify system fixed permission "

    const-string v1, " for package "

    invoke-static {v0, p3, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in user "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static killUid(IILjava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2, p0, p1, p2}, Landroid/app/IActivityManager;->killUidForPermissionChange(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method


# virtual methods
.method public final addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 3

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;II)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public final addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS"

    const-string/jumbo v2, "addOnPermissionsChangeListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .locals 10

    const-string/jumbo v0, "Not allowed to modify non-dynamic permission "

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    iget v2, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Label must be specified in permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->enforcePermissionTree(ILjava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    iget v7, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v7}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v7

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)V

    const/4 v8, 0x2

    if-eqz v6, :cond_3

    new-instance v3, Lcom/android/server/pm/permission/Permission;

    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-direct {v3, v8, v0, v4}, Lcom/android/server/pm/permission/Permission;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    iget v9, v3, Lcom/android/server/pm/permission/Permission;->mType:I

    if-ne v9, v8, :cond_4

    move v4, v5

    :cond_4
    if-eqz v4, :cond_7

    :goto_2
    invoke-virtual {v3, v7, p1, v1}, Lcom/android/server/pm/permission/Permission;->addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)Z

    move-result p1

    if-eqz v6, :cond_5

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    iget-object v1, v3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    :cond_6
    return v6

    :cond_7
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Instant apps can\'t add permissions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final applyRuntimePermissionsForAllApplicationsForMDM(II)Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Invalid User ID "

    const-string/jumbo p1, "PermissionManager"

    invoke-static {p2, p0, p1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->applyRuntimePermissionsInternalForMDM$1(Ljava/lang/String;Ljava/util/List;IIZ)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0
.end method

.method public final applyRuntimePermissionsForMDM(Ljava/lang/String;Ljava/util/List;II)Z
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "PermissionManager"

    if-nez v0, :cond_0

    const-string p0, "Invalid User ID "

    invoke-static {p4, p0, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "Invalid package name "

    invoke-static {p0, p1, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->applyRuntimePermissionsInternalForMDM$1(Ljava/lang/String;Ljava/util/List;IIZ)Z

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0
.end method

.method public final applyRuntimePermissionsInternalForMDM$1(Ljava/lang/String;Ljava/util/List;IIZ)Z
    .locals 7

    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->containerCriticalApps:Ljava/util/List;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    const/4 v5, 0x0

    const-string/jumbo v6, "PermissionManager"

    if-eq v2, v3, :cond_0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Package "

    const-string v1, " is container critical application"

    invoke-static {v0, p1, v1, v6}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_0
    if-eqz p3, :cond_2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const-string v0, "Invalid Permission State "

    invoke-static {p3, v0, v6}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_1
    const/4 v2, 0x4

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move v1, p3

    move v3, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionStatesAndFlagsInternalForMDM(IIILjava/lang/String;Ljava/util/List;Z)Z

    move-result v0

    return v0

    :cond_2
    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move v1, p3

    move v3, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionStatesAndFlagsInternalForMDM(IIILjava/lang/String;Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public final backupRuntimePermissions(I)[B
    .locals 4

    int-to-float v0, p1

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {}, Lcom/android/server/PermissionThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, v1, v2, v3}, Landroid/permission/PermissionControllerManager;->getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :try_start_0
    sget-wide v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->BACKUP_TIMEOUT_MILLIS:J

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot create permission backup for user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "PermissionManager"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z
    .locals 7

    const-string/jumbo v0, "No such permissions: "

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string/jumbo p0, "PermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    iget-object v0, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v4, v0, 0xc

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    if-eqz v4, :cond_3

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, v1, v4, v2, v3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p0, "186404356"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x534e4554

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return v3

    :cond_4
    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Cannot modify allowlisting of an immutably restricted permission: "

    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    return v5

    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p3, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result p3

    const/4 v0, -0x1

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p3, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermissionInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final checkPermissionInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;I)I
    .locals 6

    const-string/jumbo v0, "Missing permissions state for "

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez p2, :cond_1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, p4, v4, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    :goto_1
    return v3

    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result p2

    invoke-static {p4, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    move p2, v1

    goto :goto_2

    :cond_3
    move p2, v2

    :goto_2
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v4

    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v5

    invoke-virtual {p0, v5, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v5

    if-nez v5, :cond_4

    const-string/jumbo p0, "PermissionManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and user "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    return v3

    :catchall_0
    move-exception p0

    goto :goto_8

    :cond_4
    invoke-virtual {v5, p3}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_7

    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p1, p3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    move p1, v2

    goto :goto_5

    :cond_7
    :goto_4
    move p1, v1

    :goto_5
    if-eqz p1, :cond_8

    monitor-exit v4

    return v2

    :cond_8
    sget-object p1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_c

    invoke-virtual {v5, p1}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_9

    goto :goto_6

    :cond_9
    if-eqz p2, :cond_b

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_7

    :cond_a
    :goto_6
    move v1, v2

    :cond_b
    :goto_7
    if-eqz v1, :cond_c

    monitor-exit v4

    return v2

    :cond_c
    monitor-exit v4

    return v3

    :goto_8
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result p3

    const/4 v0, -0x1

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p3, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p3, v1, p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermissionInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;I)I

    move-result p0

    return p0

    :cond_1
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter p3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    monitor-exit p3

    return v1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    if-eqz v3, :cond_5

    monitor-exit p3

    return v1

    :cond_5
    monitor-exit p3

    return v0

    :goto_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final enforceCrossUserPermission(IILjava/lang/String;Z)V
    .locals 1

    if-ltz p2, :cond_8

    if-eqz p4, :cond_2

    const/16 p4, 0x7d0

    if-ne p1, p4, :cond_2

    if-ltz p2, :cond_1

    iget-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p4, v0, p2}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Shell does not have permission to access user "

    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    const-string/jumbo p4, "Unable to check shell permission for user "

    const-string v0, "\n\t"

    invoke-static {p2, p4, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string/jumbo v0, "PermissionManagerServiceImpl"

    invoke-static {v0, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    if-ne p2, p4, :cond_3

    goto :goto_1

    :cond_3
    const/16 p4, 0x3e8

    if-eq p1, p4, :cond_7

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo p4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, p4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p0

    if-eqz p0, :cond_6

    if-nez p2, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "UID "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " requires android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to access user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PermissionManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid userId "

    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, " requires android.permission.GRANT_RUNTIME_PERMISSIONS or android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)V
    .locals 5

    iget v0, p2, Lcom/android/server/pm/permission/Permission;->mUid:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_3

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/Permission;

    iget v3, p2, Lcom/android/server/pm/permission/Permission;->mUid:I

    iget v4, v2, Lcom/android/server/pm/permission/Permission;->mUid:I

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v2, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result v2

    add-int/2addr v2, v3

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result p0

    add-int/2addr p0, v1

    const p1, 0x8000

    if-gt p0, p1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Permission tree size cap exceeded"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method public final getAllAppOpPermissionPackages()Ljava/util/Map;
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6, v5}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v1, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final getAllPermissionGroups(I)Ljava/util/List;
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    int-to-long v5, p1

    invoke-static {v4, v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final getAllPermissionStates(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "This method is supported in newer implementation only"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAllPermissionsWithProtection()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/Permission;

    iget-object v3, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/16 v3, 0x2710

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final getAllPermissionsWithProtectionFlags()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/Permission;

    iget-object v3, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/16 v4, 0x40

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    const/16 v3, 0x2710

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    int-to-float v0, p3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p3, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getAllowlistedRestrictedPermissions for user "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, p1, v5}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return-object v1

    :cond_2
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    const/4 v5, 0x1

    :cond_3
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    check-cast p1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Lcom/android/server/pm/Computer;->isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z

    move-result p1

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Querying system allowlist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    and-int/lit8 v1, p2, 0x6

    if-eqz v1, :cond_7

    if-nez v5, :cond_7

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Querying upgrade or installer allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;II)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;II)Ljava/util/List;
    .locals 3

    const-string/jumbo v0, "Missing permissions state for "

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-virtual {p0, v2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object p0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string/jumbo p0, "PermissionManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and user "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_1

    const/16 p3, 0x1000

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    or-int/lit16 p3, p3, 0x2000

    :cond_2
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_3

    or-int/lit16 p3, p3, 0x800

    :cond_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v0

    and-int/2addr v0, p3

    if-eqz v0, :cond_4

    if-nez v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    return-object v2

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "permissionName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-nez p0, :cond_0

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final getDefaultPermissionGrantFingerprint(I)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getGidsForUid(I)[I
    .locals 6

    const-string/jumbo v0, "Missing permissions state for app ID "

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo p0, "PermissionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and user ID "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->EMPTY_INT_ARRAY:[I

    monitor-exit v2

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mGlobalGids:[I

    invoke-static {p0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object p0

    iget-object v0, v3, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v4, v3, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/PermissionState;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/Permission;->computeGids(I)[I

    move-result-object v4

    array-length v5, v4

    if-eqz v5, :cond_3

    invoke-virtual {p0, v4}, Landroid/util/IntArray;->addAll([I)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    return-object p0

    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final getGrantedPermissions(ILjava/lang/String;)Ljava/util/Set;
    .locals 4

    const-string/jumbo v0, "packageName"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    int-to-float v0, p1

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    const-string/jumbo v0, "Missing permissions state for "

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v2

    :try_start_0
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo p0, "PermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and user "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    monitor-exit v2

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v3}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    move-result-object p0

    monitor-exit v2

    return-object p0

    :cond_2
    new-instance p2, Landroid/util/ArraySet;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ILcom/android/server/pm/pkg/PackageStateInternal;)V

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    monitor-exit v2

    return-object p2

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final getInstalledPermissions(Ljava/lang/String;)Ljava/util/Set;
    .locals 4

    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/Permission;

    iget-object v3, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {v2}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    iget-object v5, v4, Lcom/android/server/pm/permission/DevicePermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    new-array v6, v5, [I

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_0

    iget-object v9, v4, Lcom/android/server/pm/permission/DevicePermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_3

    aget v8, v6, v4

    invoke-virtual {v0, v1, v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v9

    if-nez v9, :cond_1

    const-string/jumbo v9, "PermissionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Missing permissions state for app ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " and user ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    invoke-virtual {v9}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_2

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/permission/PermissionState;

    new-instance v13, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v12, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    invoke-virtual {v15}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v15

    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v7

    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v12

    invoke-direct {v13, v14, v12, v15, v7}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;IZZ)V

    invoke-virtual {v2, v13, v8}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    return-object v2

    :goto_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method

.method public final getLegacyPermissions()Ljava/util/List;
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/Permission;

    new-instance v3, Lcom/android/server/pm/permission/LegacyPermission;

    iget-object v4, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v5, v2, Lcom/android/server/pm/permission/Permission;->mType:I

    iget v6, v2, Lcom/android/server/pm/permission/Permission;->mUid:I

    iget-object v2, v2, Lcom/android/server/pm/permission/Permission;->mGids:[I

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getPermissionFlagsInternal(IILjava/lang/String;Ljava/lang/String;)I
    .locals 4

    const-string/jumbo v0, "Missing permissions state for "

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.GET_RUNTIME_PERMISSIONS"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "getPermissionFlags requires android.permission.GRANT_RUNTIME_PERMISSIONS or android.permission.REVOKE_RUNTIME_PERMISSIONS or android.permission.GET_RUNTIME_PERMISSIONS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const-string/jumbo v1, "getPermissionFlags"

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, p1, p2, p3, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_1
    return v2

    :cond_4
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter p1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, p4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    if-nez v3, :cond_5

    monitor-exit p1

    return v2

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object p0

    if-nez p0, :cond_6

    const-string/jumbo p0, "PermissionManager"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " and user "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    return v2

    :cond_6
    invoke-virtual {p0, p4}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result p0

    monitor-exit p1

    return p0

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final getPermissionGids(ILjava/lang/String;)[I
    .locals 2

    const-string/jumbo v0, "permissionName"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    int-to-float v0, p1

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/Permission;->computeGids(I)[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    if-nez v3, :cond_1

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    int-to-long v4, p2

    invoke-static {v3, v4, v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;

    move-result-object p2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, p2, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "186113473"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p2, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x534e4554

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-object v2

    :cond_2
    return-object p2

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final getPermissionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/content/pm/PermissionInfo;
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p3

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v3, 0x2710

    if-eqz v1, :cond_3

    const/16 v4, 0x3e8

    if-eq v1, v4, :cond_3

    const/16 v4, 0x7d0

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    :cond_3
    :goto_0
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter p3

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    if-nez v1, :cond_4

    monitor-exit p3

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_4
    invoke-virtual {v1, p1, v3}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, p3, v1, v3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "183122164"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x534e4554

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-object v2

    :cond_5
    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final getPermissionRequestState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "getPermissionRequestState is not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final getRequestedRuntimePermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getRequestedRuntimePermissionsLocked(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final getRequestedRuntimePermissionsLocked(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;)Ljava/util/List;
    .locals 2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public final getSplitPermissions()Ljava/util/List;
    .locals 0

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/SystemConfig;->mSplitPermissions:Ljava/util/ArrayList;

    invoke-static {p0}, Landroid/permission/PermissionManager;->splitPermissionInfoListToParcelableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    iget-object p0, p0, Lcom/android/server/pm/permission/DevicePermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/UserPermissionState;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object p0

    return-object p0
.end method

.method public final grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string/jumbo p3, "default:0"

    const-string/jumbo v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {p0, v4, v0, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    :goto_0
    move v3, p3

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    goto :goto_0

    :goto_1
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    return-void
.end method

.method public final grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    const-string v6, "Cannot grant non-ephemeral permission "

    const-string v7, "Cannot grant soft restricted permission "

    const-string v8, "Cannot grant hard restricted non-exempt permission "

    const-string v9, "Cannot grant policy fixed permission "

    const-string v10, "Cannot grant system fixed permission "

    const-string/jumbo v11, "Package "

    const-string/jumbo v12, "Missing permissions state for "

    const-string/jumbo v13, "Permission "

    const-string/jumbo v14, "Permission "

    const-string/jumbo v15, "Unknown permission: "

    move-object/from16 v16, v15

    const-string/jumbo v15, "Unknown permission: "

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v15, v4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v15

    if-nez v15, :cond_0

    const-string/jumbo v0, "PermissionManager"

    const-string/jumbo v1, "No such user:"

    invoke-static {v4, v1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v15, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    move-object/from16 v18, v6

    const-string/jumbo v6, "grantRuntimePermission"

    invoke-virtual {v15, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "grantRuntimePermission"

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IILjava/lang/String;Z)V

    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v5

    iget-object v15, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v15, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v15

    if-eqz v5, :cond_22

    if-nez v15, :cond_1

    goto/16 :goto_e

    :cond_1
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v20, v15

    const/4 v15, 0x0

    invoke-virtual {v6, v3, v4, v1, v15}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_21

    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v21, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v6

    :try_start_0
    iget-object v15, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v15, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v15

    if-eqz v15, :cond_20

    invoke-virtual {v15}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v17

    iget-object v15, v15, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v15, v15, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v15, v15, 0x8

    if-eqz v15, :cond_2

    const/4 v15, 0x1

    goto :goto_0

    :cond_2
    const/4 v15, 0x0

    :goto_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v17, :cond_4

    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-eqz v15, :cond_5

    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    move-object v15, v5

    check-cast v15, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    move/from16 p4, v3

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v6, v15, v5, v3, v2}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayGrantPermission()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    move/from16 p4, v3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    iget-object v15, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v15

    :try_start_1
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v6, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    if-eqz v6, :cond_1f

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v16

    move/from16 v17, v3

    iget-object v3, v6, Lcom/android/server/pm/permission/Permission;->mGids:[I

    array-length v3, v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    if-nez v16, :cond_b

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v22

    if-eqz v22, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v22

    if-eqz v22, :cond_a

    if-eqz p4, :cond_9

    goto :goto_5

    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is managed by role"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " requested by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a changeable permission type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_5
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v13

    invoke-virtual {v0, v13, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v13

    if-nez v13, :cond_c

    const-string/jumbo v0, "PermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v15

    return-void

    :cond_c
    invoke-virtual {v13, v2}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_e

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    goto :goto_6

    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has not requested permission "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_6
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v11

    const/16 v12, 0x17

    if-ge v11, v12, :cond_f

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v11

    if-eqz v11, :cond_f

    monitor-exit v15

    return-void

    :cond_f
    invoke-virtual {v13, v2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v11

    and-int/lit8 v14, v11, 0x10

    if-eqz v14, :cond_10

    const-string/jumbo v0, "PermissionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v15

    return-void

    :cond_10
    if-nez p3, :cond_11

    and-int/lit8 v10, v11, 0x4

    if-eqz v10, :cond_11

    const-string/jumbo v0, "PermissionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v15

    return-void

    :cond_11
    iget-object v9, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v9, v9, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v10, v9, 0x4

    if-eqz v10, :cond_12

    const/4 v10, 0x1

    goto :goto_7

    :cond_12
    const/4 v10, 0x0

    :goto_7
    if-eqz v10, :cond_13

    and-int/lit16 v10, v11, 0x3800

    if-nez v10, :cond_13

    const-string/jumbo v0, "PermissionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v15

    return-void

    :cond_13
    and-int/lit8 v8, v9, 0x8

    if-eqz v8, :cond_14

    const/16 v19, 0x1

    goto :goto_8

    :cond_14
    const/16 v19, 0x0

    :goto_8
    if-eqz v19, :cond_15

    if-nez v17, :cond_15

    const-string/jumbo v0, "PermissionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v15

    return-void

    :cond_15
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v7

    if-nez v7, :cond_1a

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v7

    if-eqz v7, :cond_16

    goto :goto_a

    :cond_16
    move-object/from16 v7, v20

    invoke-interface {v7, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result v7

    if-eqz v7, :cond_17

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_9
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v7

    if-ge v7, v12, :cond_19

    const-string/jumbo v0, "PermissionManager"

    const-string v1, "Cannot grant runtime permission to a legacy app"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v15

    return-void

    :cond_19
    invoke-virtual {v13, v6}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v6

    if-nez v6, :cond_1b

    monitor-exit v15

    return-void

    :cond_1a
    :goto_a
    invoke-virtual {v13, v6}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v6

    if-nez v6, :cond_1b

    monitor-exit v15

    return-void

    :cond_1b
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v16, :cond_1c

    new-instance v6, Landroid/metrics/LogMaker;

    const/16 v7, 0x4db

    invoke-direct {v6, v7}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v6, v1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    const/16 v1, 0x4d9

    invoke-virtual {v6, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_1c
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v4, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    if-eqz p6, :cond_1e

    if-eqz v16, :cond_1d

    move-object/from16 v1, p6

    invoke-virtual {v1, v0, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionGranted(II)V

    goto :goto_b

    :cond_1d
    move-object/from16 v1, p6

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionGranted()V

    :goto_b
    if-eqz v3, :cond_1e

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-virtual {v1, v0, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onGidsChanged(II)V

    :cond_1e
    return-void

    :cond_1f
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_c
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_d

    :cond_20
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_d
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unknown package: "

    invoke-static {v2, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    :goto_e
    const-string/jumbo v0, "PermissionManager"

    const-string/jumbo v2, "Unknown package: "

    invoke-static {v2, v1, v0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleDenyLocked(ILcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;Z)Z
    .locals 4

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    const/16 v2, 0x16

    const/4 v3, 0x1

    if-le v1, v2, :cond_3

    invoke-virtual {p3, p4}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, p4}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p5, p5, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p5, p5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p3, p5}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p0, "Failed to deny the permission "

    const-string p1, " to package "

    invoke-static {p0, p4, p1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PermissionManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    if-eqz p6, :cond_2

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;

    const/4 p3, 0x0

    invoke-direct {p2, v0, p1, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;-><init>(III)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return v3

    :cond_3
    const/16 p6, 0x8

    invoke-virtual {p3, p5, p6, p6}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    invoke-static {p2, p4, p5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAppOp(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;)I

    move-result p4

    iget-object p6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    move-object p5, p2

    move p2, p1

    move-object p1, p0

    new-instance p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda7;

    move p3, v0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IIILcom/android/server/pm/pkg/AndroidPackage;)V

    invoke-virtual {p6, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v3
.end method

.method public final handleGrantLocked(ILcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;)Z
    .locals 15

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    const/16 v5, 0x16

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-le v4, v5, :cond_3

    invoke-virtual/range {p3 .. p4}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p3 .. p4}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v14

    :cond_0
    invoke-virtual {v1, v3}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v1

    invoke-static {v0, v2, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAppOp(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;)I

    move-result v9

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    move/from16 v7, p1

    invoke-direct/range {v5 .. v12}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IIILjava/lang/String;ZZ)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-nez v1, :cond_1

    const-string p0, "Failed to grant the permission "

    const-string v1, " to package "

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "PermissionManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_1
    iget-object v1, v3, Lcom/android/server/pm/permission/Permission;->mGids:[I

    array-length v1, v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    move/from16 v7, p1

    invoke-virtual {p0, v0, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->onGidsChanged(II)V

    :cond_2
    return v14

    :cond_3
    move/from16 v7, p1

    invoke-static {v0, v2, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAppOp(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;)I

    move-result v9

    const/16 v2, 0x8

    invoke-virtual {v1, v3, v2, v13}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IIILjava/lang/String;ZZ)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v14
.end method

.method public final isPermissionRevokedByPolicy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p4

    if-eq p4, p1, :cond_0

    iget-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isPermissionRevokedByPolicy for user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p4, v1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo p4, "default:0"

    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_1

    return v0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p4

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p4, p1, p2, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final isPermissionSplitFromNonRuntime(ILjava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/SystemConfig;->mSplitPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/permission/PermissionManager$SplitPermissionInfo;

    invoke-virtual {v5}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v6

    if-ge p1, v6, :cond_1

    invoke-virtual {v5}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v6

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v5}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move v0, v3

    :goto_1
    monitor-exit v6

    return v0

    :goto_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_1
    add-int/2addr v4, v0

    goto :goto_0

    :cond_2
    return v3
.end method

.method public final isPermissionsReviewRequired(ILjava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const-string/jumbo v1, "packageName"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "Missing permissions state for "

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p2

    const/4 v2, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v3

    :try_start_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v4

    invoke-virtual {p0, v4, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object p0

    if-nez p0, :cond_2

    const-string/jumbo p0, "PermissionManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and user "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return v2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    if-nez p1, :cond_4

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    move p2, v2

    :goto_1
    if-ge p2, p1, :cond_3

    iget-object v1, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionState;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    add-int/2addr p2, v0

    goto :goto_1

    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    return v0

    :goto_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final onPackageAdded(Lcom/android/server/pm/PackageSetting;ZLcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 12

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_3

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v5

    const-string v6, " to "

    const-string/jumbo v7, "Unable to update from "

    const-string/jumbo v8, "PermissionManager"

    if-nez v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": old package not in system partition"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": old package still exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "PermissionManager"

    const-string v5, "Adopting permissions from "

    const-string v6, " to "

    invoke-static {v5, v2, v6}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v3

    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->transferPermissions(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    const-string/jumbo v3, "PermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Permission groups from package "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ignored: instant apps cannot define new permission groups."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_4
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v3

    :try_start_1
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v5

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_8

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v8, v8, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    if-nez v8, :cond_5

    move-object v9, v1

    goto :goto_3

    :cond_5
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v9

    :goto_3
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v8, :cond_7

    if-eqz v9, :cond_6

    goto :goto_4

    :cond_6
    const-string/jumbo v9, "PermissionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Permission group "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " from package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ignored: original from "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_12

    :cond_7
    :goto_4
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v8, v8, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    add-int/2addr v6, v0

    goto :goto_2

    :cond_8
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    :goto_6
    if-eqz p2, :cond_a

    const-string/jumbo p1, "PermissionManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Permissions from package "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ignored: instant apps cannot define new permissions."

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object v7, v1

    goto/16 :goto_f

    :cond_a
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_7
    if-ge v3, p2, :cond_9

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v6

    :try_start_2
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v7

    const/16 v8, 0x16

    if-le v7, v8, :cond_b

    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v8

    iget-object v7, v7, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    invoke-static {v5, v7}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setParsedPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermission;Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)V

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto/16 :goto_e

    :cond_b
    :goto_8
    const-wide/16 v7, 0x80

    invoke-static {v5, v7, v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionInfo(Lcom/android/internal/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v8, v8, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/permission/Permission;

    goto :goto_9

    :cond_c
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v8

    :goto_9
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    if-eqz v8, :cond_e

    iget-object v9, v8, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_a

    :cond_d
    iget-boolean v9, v8, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    if-nez v9, :cond_f

    :cond_e
    :goto_a
    move v6, v2

    goto :goto_b

    :cond_f
    iget-object v9, v8, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    if-nez v6, :cond_10

    goto :goto_a

    :cond_10
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v6

    :goto_b
    iget-object v9, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v9

    :try_start_3
    iget-object v10, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v10, v10, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-static {v8, v7, p1, v10, v6}, Lcom/android/server/pm/permission/Permission;->createOrUpdate(Lcom/android/server/pm/permission/Permission;Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/PackageSetting;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v7, v7, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    iget-object v8, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_d

    :cond_11
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v7, v7, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    iget-object v8, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    iget-boolean v7, v6, Lcom/android/server/pm/permission/Permission;->mDefinitionChanged:Z

    if-eqz v7, :cond_12

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v2, v6, Lcom/android/server/pm/permission/Permission;->mDefinitionChanged:Z

    :cond_12
    monitor-exit v9

    add-int/2addr v3, v0

    goto/16 :goto_7

    :goto_d
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :goto_e
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :goto_f
    if-eqz p3, :cond_13

    move v3, v0

    goto :goto_10

    :cond_13
    move v3, v2

    :goto_10
    invoke-static {v7}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    xor-int/lit8 v6, p1, 0x1

    if-nez v3, :cond_15

    if-nez p1, :cond_14

    goto :goto_11

    :cond_14
    return-void

    :cond_15
    :goto_11
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;

    move-object v2, p0

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ZLcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/util/List;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_12
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    move/from16 v1, p3

    const-string/jumbo v3, "pkg"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v3, "params"

    invoke-static {v9, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v3, -0x1

    const/4 v11, 0x1

    if-gez v1, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v4, v10

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v11

    :goto_1
    const-string/jumbo v5, "userId"

    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-ne v1, v3, :cond_2

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds$1()[I

    move-result-object v1

    move-object v12, v1

    goto :goto_2

    :cond_2
    new-array v3, v11, [I

    aput v1, v3, v10

    move-object v12, v3

    :goto_2
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getVolumeUuidForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    const/4 v4, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$1;)V

    move-object v13, v2

    array-length v14, v12

    move v15, v10

    :goto_3
    if-ge v15, v14, :cond_15

    aget v5, v12, v15

    iget-object v1, v9, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    const/4 v7, 0x2

    invoke-virtual {v0, v13, v7, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;II)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_3
    invoke-virtual {v0, v13, v1, v7, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;II)V

    iget-object v8, v9, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4

    move/from16 v16, v11

    goto :goto_4

    :cond_4
    move/from16 v16, v10

    :goto_4
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v17

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_5
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v3

    :try_start_0
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v6, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    if-nez v6, :cond_7

    monitor-exit v3

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_7
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v19

    if-nez v19, :cond_8

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v19

    if-eqz v19, :cond_c

    :cond_8
    if-eqz v17, :cond_9

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result v19

    if-eqz v19, :cond_c

    :cond_9
    if-nez v16, :cond_b

    iget-object v7, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v7, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v7, v7, 0x2000

    if-eqz v7, :cond_a

    move v7, v11

    goto :goto_6

    :cond_a
    move v7, v10

    :goto_6
    if-nez v7, :cond_c

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v11, :cond_c

    move v7, v11

    goto :goto_7

    :cond_c
    move v7, v10

    :goto_7
    iget-object v6, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v6, v6, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_d

    move v6, v11

    goto :goto_8

    :cond_d
    move v6, v10

    :goto_8
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v5, v3, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v7, :cond_10

    if-eqz v16, :cond_f

    and-int/lit8 v1, v3, 0x14

    if-nez v1, :cond_e

    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    :cond_e
    move-object/from16 v20, v8

    const/16 v19, 0x2

    goto :goto_9

    :cond_f
    and-int/lit8 v1, v3, 0x48

    if-eqz v1, :cond_e

    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v3, v8

    iget-object v8, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    move-object v6, v3

    const/16 v3, 0x48

    move-object v7, v6

    move v6, v5

    move v5, v4

    const/4 v4, 0x0

    move-object/from16 v19, v7

    const/4 v7, 0x0

    move-object/from16 v20, v19

    const/16 v19, 0x2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    move v4, v5

    move v5, v6

    goto :goto_9

    :cond_10
    move-object/from16 v20, v8

    const/16 v19, 0x2

    if-eqz v6, :cond_11

    sget-object v6, Lcom/android/server/pm/PackageInstallerService;->INSTALLER_CHANGEABLE_APP_OP_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    and-int/2addr v3, v11

    if-eqz v3, :cond_12

    :cond_11
    :goto_9
    move/from16 v7, v19

    move-object/from16 v8, v20

    goto/16 :goto_5

    :cond_12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v11, :cond_13

    move v7, v10

    goto :goto_a

    :cond_13
    move/from16 v7, v19

    :goto_a
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-static {v5, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda8;

    invoke-direct {v6, v0, v2, v1, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Ljava/lang/String;II)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    :goto_b
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_14
    add-int/2addr v15, v11

    goto/16 :goto_3

    :cond_15
    return-void
.end method

.method public final onPackageRemoved(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/Permission;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    :goto_1
    if-eqz v6, :cond_2

    iget-object v7, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Landroid/content/pm/PermissionInfo;

    invoke-direct {v7}, Landroid/content/pm/PermissionInfo;-><init>()V

    iget-object v8, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v9, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object v9, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v9, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v9, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget v8, v8, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v8, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput-object v7, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iput-boolean v3, v6, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    :cond_2
    :goto_2
    invoke-static {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->isAppOp(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_3
    add-int/2addr v4, v0

    goto/16 :goto_0

    :cond_5
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, v5, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v5, v5, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_7

    move v5, v0

    goto :goto_5

    :cond_7
    move v5, v3

    :goto_5
    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    if-nez v7, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    return-void

    :goto_6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, p2

    move-object/from16 v7, p4

    move/from16 v2, p6

    const-string/jumbo v3, "packageState"

    move-object/from16 v4, p3

    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v3, "packageName"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v3, "sharedUserPkgs"

    move-object/from16 v8, p5

    invoke-static {v8, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v3, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-gez v2, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v5, v9

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v10

    :goto_1
    const-string/jumbo v11, "userId"

    invoke-static {v5, v11}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-ne v2, v3, :cond_2

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds$1()[I

    move-result-object v2

    move-object v11, v2

    goto :goto_2

    :cond_2
    new-array v3, v10, [I

    aput v2, v3, v9

    move-object v11, v3

    :goto_2
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v7, :cond_3

    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v1, v11

    :goto_3
    if-ge v9, v1, :cond_13

    aget v2, v11, v9

    invoke-virtual {v0, v7, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    add-int/2addr v9, v10

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getVolumeUuidForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    const/4 v4, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$1;)V

    array-length v2, v11

    move v3, v9

    :goto_4
    if-ge v3, v2, :cond_13

    aget v4, v11, v3

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v12, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v5

    :try_start_0
    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    iget-object v12, v12, Lcom/android/server/pm/permission/DevicePermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/UserPermissionState;

    if-nez v4, :cond_4

    monitor-exit v5

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_4
    invoke-static {v6}, Lcom/android/server/pm/permission/UserPermissionState;->checkAppId(I)V

    iget-object v12, v4, Lcom/android/server/pm/permission/UserPermissionState;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->delete(I)V

    invoke-virtual {v4, v1, v9}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    monitor-exit v5

    :goto_5
    move/from16 v18, v10

    goto/16 :goto_d

    :goto_6
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_5
    if-nez v7, :cond_6

    const-string/jumbo v4, "PermissionManager"

    const-string/jumbo v5, "Trying to update info for null package. Just ignoring"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    check-cast v5, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    invoke-interface {v5, v12}, Lcom/android/server/pm/Computer;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v12

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v13

    if-ne v12, v13, :cond_8

    move v12, v10

    goto :goto_7

    :cond_8
    move v12, v9

    :goto_7
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v14, v9

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/pm/pkg/AndroidPackage;

    if-eqz v17, :cond_9

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    move/from16 v18, v10

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_a

    :cond_9
    move/from16 v18, v10

    :cond_a
    move/from16 v10, v18

    const/4 v9, 0x0

    goto :goto_9

    :cond_b
    move/from16 v18, v10

    if-eqz v12, :cond_c

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_a

    :cond_c
    iget-object v9, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v9

    :try_start_1
    invoke-virtual {v0, v6, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v10

    if-nez v10, :cond_d

    const-string/jumbo v10, "PermissionManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Missing permissions state for "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and user "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_c

    :cond_d
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, v15}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    if-nez v1, :cond_e

    monitor-exit v9

    :goto_a
    move-object/from16 v1, p1

    move/from16 v10, v18

    const/4 v9, 0x0

    goto/16 :goto_8

    :cond_e
    iget-object v15, v1, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v15, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v15}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v1, v1, Lcom/android/server/pm/permission/Permission;->mGids:[I

    array-length v1, v1

    if-eqz v1, :cond_f

    move/from16 v1, v18

    goto :goto_b

    :cond_f
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_10

    move/from16 v14, v18

    :cond_10
    monitor-exit v9

    goto :goto_a

    :goto_c
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_11
    move/from16 v18, v10

    if-eqz v14, :cond_12

    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda11;

    invoke-direct {v4, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda11;-><init>(I)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_12
    :goto_d
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p1

    move/from16 v10, v18

    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_13
    return-void
.end method

.method public final onStorageVolumeMounted(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAllPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onSystemReady()V
    .locals 8

    const/4 v0, 0x1

    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAllPermissions(Ljava/lang/String;Z)V

    const-class v1, Lcom/android/server/policy/PermissionPolicyService$Internal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/PermissionPolicyService$Internal;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)V

    iget-object v3, v1, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    iget-object v3, v3, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v1, v1, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    iput-object v2, v1, Lcom/android/server/policy/PermissionPolicyService;->mOnInitializedCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda15;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemReady:Z

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "We detected priv-permissions violations from below apps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v7

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string v3, "\nPrivileged apps MUST put their \'signature|privileged\' permissions into the allowlist.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Please ASSIGN this issue to above apps to apply.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PermissionManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfo(Ljava/lang/String;)V

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance v1, Landroid/permission/PermissionControllerManager;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    const-class v1, Lcom/android/server/policy/PermissionPolicyService$Internal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/PermissionPolicyService$Internal;

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

    sput-boolean v0, Lcom/android/server/pm/PmHook;->mSystemReady:Z

    return-void

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final onUserCreated(I)V
    .locals 1

    int-to-float p1, p1

    const-string/jumbo v0, "userId"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    sget-object p1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAllPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onUserRemoved(I)V
    .locals 2

    int-to-float v0, p1

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    iget-object p0, p0, Lcom/android/server/pm/permission/DevicePermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final queryPermissionsByGroup(ILjava/lang/String;)Ljava/util/List;
    .locals 9

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v5, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    if-eqz p2, :cond_1

    if-nez v5, :cond_1

    monitor-exit v4

    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/permission/Permission;

    iget-object v8, v7, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-static {v8, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x2710

    invoke-virtual {v7, p1, v8}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-eqz v5, :cond_4

    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, p1, v4, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    :goto_1
    return-object v3

    :cond_4
    new-instance p2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v1, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;III)V

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    return-object v2

    :goto_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final readLegacyPermissionStateTEMP()V
    .locals 4

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds$1()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->forEachPackageState(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final readLegacyPermissionStatesLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/util/Collection;)V
    .locals 5

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    iget-object v1, v0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v0, "Unknown permission: "

    const-string/jumbo v2, "PermissionManager"

    invoke-static {v0, v1, v2}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    iget v0, v0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v4, :cond_1

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p1, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    new-instance v4, Lcom/android/server/pm/permission/PermissionState;

    invoke-direct {v4, v2}, Lcom/android/server/pm/permission/PermissionState;-><init>(Lcom/android/server/pm/permission/Permission;)V

    if-eqz v1, :cond_2

    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionState;->grant()Z

    :cond_2
    invoke-virtual {v4, v0, v0}, Lcom/android/server/pm/permission/PermissionState;->updateFlags(II)Z

    iget-object v0, p1, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_4

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissions()Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissionTrees()Ljava/util/List;

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v4

    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/permission/LegacyPermission;

    new-instance v8, Lcom/android/server/pm/permission/Permission;

    iget-object v9, v7, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v7, v7, Lcom/android/server/pm/permission/LegacyPermission;->mType:I

    invoke-direct {v8, v9, v7}, Lcom/android/server/pm/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;I)V

    if-nez v2, :cond_2

    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v9, v8, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v7

    if-eqz v7, :cond_1

    iget v9, v7, Lcom/android/server/pm/permission/Permission;->mType:I

    if-ne v9, v0, :cond_1

    iget-object v9, v7, Lcom/android/server/pm/permission/Permission;->mGids:[I

    iget-boolean v7, v7, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    iput-object v9, v8, Lcom/android/server/pm/permission/Permission;->mGids:[I

    iput-boolean v7, v8, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    :cond_1
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v7, v7, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    iget-object v9, v8, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v7, v7, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    iget-object v9, v8, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/2addr v6, v0

    goto :goto_2

    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    add-int/2addr v2, v0

    goto :goto_0

    :goto_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_4
    return-void
.end method

.method public final removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;II)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public final removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Instant applications don\'t have access to this method"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removePackageGrantedPermissionsForMDM(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removePermission(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "Not allowed to modify non-dynamic permission "

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, v1, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->enforcePermissionTree(ILjava/lang/String;)Lcom/android/server/pm/permission/Permission;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget v1, v1, Lcom/android/server/pm/permission/Permission;->mType:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    if-nez v1, :cond_2

    const-string/jumbo p0, "PermissionManager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, v4}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Instant applications don\'t have access to this method"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final resetRuntimePermissions(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .locals 2

    const-string/jumbo v0, "pkg"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    int-to-float v0, p2

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    return-void
.end method

.method public final resetRuntimePermissionsForUser(I)V
    .locals 2

    int-to-float v0, p1

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    return-void
.end method

.method public final resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .locals 10

    const/4 v0, 0x1

    new-array v6, v0, [Z

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;[Z)V

    if-eqz p1, :cond_0

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$2;)V

    goto :goto_0

    :cond_0
    iget-object p0, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance p1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda12;

    invoke-direct {p1, v2, p2, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$2;)V

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    :goto_0
    const/4 p0, 0x0

    aget-boolean p1, v6, p0

    if-eqz p1, :cond_1

    iget-object p1, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    iget-object p1, p1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iget-object p1, p1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    :cond_1
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result p1

    move p2, p0

    :goto_1
    if-ge p2, p1, :cond_2

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v1

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v6

    iget-object v7, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-virtual {v7, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    iget-object v7, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;

    const/4 v9, 0x1

    invoke-direct {v8, v1, v6, v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;-><init>(III)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Landroid/util/ArraySet;)[I

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    iget-object p0, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Landroid/util/ArraySet;)[I

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    return-void
.end method

.method public final resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$2;)V
    .locals 14

    move/from16 v6, p2

    const/4 v9, 0x1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mIsLeanback:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NOTIFICATION_PERMISSIONS:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_5

    :cond_1
    iget-object v4, v0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v4, v4, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move v4, v9

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    if-eqz v4, :cond_3

    monitor-exit v3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v11

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    if-lez v3, :cond_5

    array-length v3, v0

    move v4, v5

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v7, v0, v4

    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    :cond_4
    add-int/2addr v4, v9

    goto :goto_2

    :cond_5
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, v6, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(IILjava/lang/String;Ljava/lang/String;)I

    move-result v12

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v13

    const/16 v0, 0x17

    if-ge v13, v0, :cond_6

    if-eqz v11, :cond_6

    const/16 v5, 0x48

    :cond_6
    move v4, v5

    const/4 v7, 0x0

    const v3, 0x9004b

    const/16 v5, 0x3e8

    move-object v0, p0

    move-object/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    if-nez v11, :cond_8

    :cond_7
    :goto_3
    move/from16 v6, p2

    goto/16 :goto_0

    :cond_8
    and-int/lit8 v3, v12, 0x14

    if-eqz v3, :cond_9

    goto :goto_3

    :cond_9
    and-int/lit8 v3, v12, 0x20

    if-nez v3, :cond_b

    const v3, 0x8000

    and-int/2addr v3, v12

    if-eqz v3, :cond_a

    goto :goto_4

    :cond_a
    and-int/lit8 v3, v4, 0x40

    if-nez v3, :cond_7

    invoke-virtual {p0, v13, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionSplitFromNonRuntime(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const/16 v5, 0x3e8

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move/from16 v6, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    goto :goto_3

    :cond_b
    :goto_4
    const/4 v3, 0x0

    const/16 v4, 0x3e8

    move-object v0, p0

    move/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    goto :goto_3

    :goto_5
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_c
    return-void
.end method

.method public final restoreDelayedRuntimePermissions(Ljava/lang/String;I)V
    .locals 4

    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    int-to-float v0, p2

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {}, Lcom/android/server/PermissionThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;I)V

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/permission/PermissionControllerManager;->applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final restorePermissionState(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;I)V
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move/from16 v1, p5

    const/4 v10, -0x1

    const/4 v12, 0x1

    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v13

    if-nez v13, :cond_0

    goto/16 :goto_52

    :cond_0
    const/4 v14, 0x0

    if-ne v1, v10, :cond_1

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds$1()[I

    move-result-object v1

    move-object v15, v1

    goto :goto_0

    :cond_1
    new-array v2, v12, [I

    aput v1, v2, v14

    move-object v15, v2

    :goto_0
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->EMPTY_INT_ARRAY:[I

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v16

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move/from16 v17, v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v14, v18

    check-cast v14, Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v20, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v11

    :try_start_0
    iget-object v9, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v9, v14}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v9

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v9, :cond_2

    :goto_2
    const/4 v14, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v11

    if-eqz v11, :cond_19

    sget-boolean v11, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    if-eqz v11, :cond_3

    move-object/from16 v22, v1

    move-object/from16 v23, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v25, v10

    move v1, v12

    move/from16 v21, v1

    goto/16 :goto_f

    :cond_3
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move/from16 v21, v12

    const-string/jumbo v12, "android"

    invoke-static {v11, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v22, v1

    :goto_3
    move-object/from16 v23, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v25, v10

    :goto_4
    move/from16 v1, v21

    goto/16 :goto_f

    :cond_4
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result v12

    if-nez v12, :cond_6

    :cond_5
    move-object/from16 v22, v1

    goto :goto_3

    :cond_6
    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;

    move-object/from16 v22, v1

    iget-object v1, v9, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    iget-object v1, v9, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v12, v11}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v23, v3

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/SystemConfig;->mPermissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v12, :cond_b

    invoke-virtual {v3, v8, v1}, Lcom/android/server/pm/permission/PermissionAllowlist;->getPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v24

    if-eqz v24, :cond_8

    move-object/from16 v25, v10

    const-string/jumbo v10, "Package "

    move-object/from16 v26, v4

    const-string v4, " is an APK in APEX, but has permission allowlist on the system image. Please bundle the allowlist in the "

    move-object/from16 v27, v5

    const-string v5, " APEX instead."

    invoke-static {v10, v8, v4, v12, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "PermissionManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v25, v10

    :goto_5
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v4, v12}, Lcom/android/server/pm/ApexManager;->getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionAllowlist;->mApexPrivilegedAppAllowlists:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_9

    :goto_6
    const/4 v3, 0x0

    goto :goto_7

    :cond_9
    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    :goto_7
    if-eqz v3, :cond_13

    :goto_8
    move-object/from16 v24, v3

    goto :goto_b

    :cond_b
    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v25, v10

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_a

    :cond_c
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->isProduct()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionAllowlist;->mProductPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_d

    :goto_9
    const/16 v24, 0x0

    goto :goto_b

    :cond_d
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_8

    :cond_e
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->isSystemExt()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionAllowlist;->mSystemExtPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_8

    :cond_10
    invoke-virtual {v3, v8, v1}, Lcom/android/server/pm/permission/PermissionAllowlist;->getPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v24

    goto :goto_b

    :cond_11
    :goto_a
    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionAllowlist;->mVendorPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_12

    goto :goto_9

    :cond_12
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_8

    :cond_13
    :goto_b
    if-eqz v24, :cond_14

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto/16 :goto_f

    :cond_14
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v3

    if-eqz v3, :cond_15

    goto/16 :goto_4

    :cond_15
    iget-boolean v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemReady:Z

    if-nez v3, :cond_17

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->isApkInUpdatedApex()Z

    move-result v3

    if-nez v3, :cond_17

    const-string/jumbo v3, "PermissionManager"

    const-string/jumbo v4, "Privileged permission "

    const-string v5, " for package "

    const-string v8, " ("

    invoke-static {v4, v1, v5, v11, v8}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") not in privapp-permissions allowlist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v3, :cond_17

    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3

    :try_start_1
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v4, :cond_16

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    goto :goto_c

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_16
    :goto_c
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "): "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_e

    :goto_d
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_17
    :goto_e
    sget-boolean v1, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    xor-int/lit8 v1, v1, 0x1

    :goto_f
    if-eqz v1, :cond_1a

    if-nez v27, :cond_18

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    goto :goto_10

    :cond_18
    move-object/from16 v5, v27

    :goto_10
    invoke-virtual {v5, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_19
    move-object/from16 v22, v1

    move-object/from16 v23, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v25, v10

    move/from16 v21, v12

    :cond_1a
    move-object/from16 v5, v27

    :goto_11
    invoke-virtual {v9}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0, v6, v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionBySignature(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/Permission;)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0, v6, v13, v9, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1b
    if-nez v26, :cond_1c

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    goto :goto_12

    :cond_1c
    move-object/from16 v4, v26

    :goto_12
    invoke-virtual {v4, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_1d
    move-object/from16 v4, v26

    :goto_13
    invoke-virtual {v9}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0, v6, v13, v9, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z

    move-result v1

    if-eqz v1, :cond_1f

    if-nez v25, :cond_1e

    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    goto :goto_14

    :cond_1e
    move-object/from16 v10, v25

    :goto_14
    invoke-virtual {v10, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_1f
    move-object/from16 v10, v25

    :goto_15
    move/from16 v12, v21

    move-object/from16 v1, v22

    move-object/from16 v3, v23

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_20
    move-object/from16 v22, v1

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v25, v10

    move/from16 v21, v12

    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

    if-eqz v1, :cond_22

    array-length v1, v15

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v1, :cond_22

    aget v4, v15, v3

    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

    iget-object v5, v5, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v5, v4}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v5

    if-eqz v5, :cond_21

    move/from16 v5, v21

    invoke-virtual {v8, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_17

    :cond_21
    move/from16 v5, v21

    :goto_17
    add-int/2addr v3, v5

    move/from16 v21, v5

    goto :goto_16

    :cond_22
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    :goto_18
    move-object v9, v1

    goto :goto_1c

    :cond_23
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getSharedUserAppId()I

    move-result v5

    check-cast v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/android/server/pm/Computer;->getSharedUserPackages(I)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/16 v9, 0x2710

    const/4 v10, 0x0

    :goto_19
    if-ge v10, v5, :cond_25

    invoke-virtual {v4, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v11

    if-nez v11, :cond_24

    :goto_1a
    const/16 v21, 0x1

    goto :goto_1b

    :cond_24
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_1a

    :goto_1b
    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    :cond_25
    move v4, v9

    goto :goto_18

    :goto_1c
    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v10

    :try_start_3
    array-length v11, v15

    move-object/from16 v1, v22

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_1d
    if-ge v14, v11, :cond_78

    move-object/from16 v22, v3

    aget v3, v15, v14

    move/from16 v23, v5

    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v5

    move/from16 v24, v11

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v11

    invoke-virtual {v5, v11}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v11

    move/from16 v28, v12

    iget-boolean v12, v11, Lcom/android/server/pm/permission/UidPermissionState;->mMissing:Z

    move/from16 v29, v12

    if-eqz v29, :cond_2f

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_1e
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_2e

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v12, v30

    check-cast v12, Ljava/lang/String;

    move-object/from16 v30, v13

    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v13, v12}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v13

    if-nez v13, :cond_26

    move-object/from16 v13, v30

    goto :goto_1e

    :cond_26
    move/from16 v32, v14

    iget-object v14, v13, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    move-object/from16 v33, v15

    const-string/jumbo v15, "android"

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c

    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v14

    if-eqz v14, :cond_2c

    iget-object v14, v13, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v14, v14, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v15, v14, 0x2

    if-eqz v15, :cond_27

    const/4 v15, 0x1

    goto :goto_1f

    :cond_27
    const/4 v15, 0x0

    :goto_1f
    if-nez v15, :cond_2c

    and-int/lit8 v15, v14, 0xc

    if-eqz v15, :cond_28

    const/4 v15, 0x1

    goto :goto_20

    :cond_28
    const/4 v15, 0x0

    :goto_20
    if-nez v15, :cond_2a

    and-int/lit8 v14, v14, 0x10

    if-eqz v14, :cond_29

    const/4 v14, 0x1

    goto :goto_21

    :cond_29
    const/4 v14, 0x0

    :goto_21
    if-eqz v14, :cond_2b

    :cond_2a
    const/16 v14, 0x2000

    goto :goto_23

    :cond_2b
    :goto_22
    const/16 v14, 0x17

    goto :goto_24

    :goto_23
    invoke-virtual {v11, v13, v14, v14}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    goto :goto_22

    :goto_24
    if-ge v4, v14, :cond_2c

    const/16 v14, 0x48

    invoke-virtual {v11, v13, v14, v14}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    invoke-virtual {v11, v13}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    goto :goto_25

    :catchall_2
    move-exception v0

    goto/16 :goto_53

    :cond_2c
    :goto_25
    sget-boolean v14, Lcom/samsung/android/rune/PMRune;->PM_NAL_GET_APP_LIST:Z

    if-eqz v14, :cond_2d

    iget-object v14, v13, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v15, "com.samsung.android.permissioncontroller"

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2d

    const-string/jumbo v14, "com.samsung.android.permission.GET_APP_LIST"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2d

    const/16 v14, 0x17

    if-ge v4, v14, :cond_2d

    const/16 v14, 0x48

    invoke-virtual {v11, v13, v14, v14}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    invoke-virtual {v11, v13}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    :cond_2d
    move-object/from16 v13, v30

    move/from16 v14, v32

    move-object/from16 v15, v33

    goto/16 :goto_1e

    :cond_2e
    move-object/from16 v30, v13

    move/from16 v32, v14

    move-object/from16 v33, v15

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/server/pm/permission/UidPermissionState;->mMissing:Z

    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    goto :goto_26

    :cond_2f
    move-object/from16 v30, v13

    move/from16 v32, v14

    move-object/from16 v33, v15

    :goto_26
    if-eqz p2, :cond_33

    invoke-interface/range {v30 .. v30}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    invoke-interface/range {v30 .. v30}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v12

    if-nez v12, :cond_30

    new-instance v12, Lcom/android/server/pm/permission/UidPermissionState;

    invoke-direct {v12, v11}, Lcom/android/server/pm/permission/UidPermissionState;-><init>(Lcom/android/server/pm/permission/UidPermissionState;)V

    iput-boolean v13, v11, Lcom/android/server/pm/permission/UidPermissionState;->mMissing:Z

    const/4 v14, 0x0

    iput-object v14, v11, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    move-object v13, v12

    :goto_27
    move/from16 v12, v28

    goto :goto_29

    :cond_30
    const/4 v14, 0x0

    invoke-virtual {v11}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    const/16 v21, 0x1

    add-int/lit8 v15, v15, -0x1

    move/from16 v19, v13

    :goto_28
    if-ltz v15, :cond_32

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/pm/permission/PermissionState;

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_31

    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v13

    if-eqz v13, :cond_31

    iget-object v14, v13, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v14}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_31

    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v13

    if-eqz v13, :cond_31

    const/16 v19, 0x1

    :cond_31
    add-int/lit8 v15, v15, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_28

    :cond_32
    if-eqz v19, :cond_33

    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    move-object v13, v11

    const/4 v12, 0x1

    goto :goto_29

    :cond_33
    move-object v13, v11

    goto :goto_27

    :goto_29
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v19, 0x0

    :goto_2a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_71

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    move/from16 v29, v4

    move-object/from16 v4, v28

    check-cast v4, Ljava/lang/String;

    move-object/from16 v34, v9

    iget-object v9, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v9, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v9

    move/from16 v28, v12

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v12

    move-object/from16 v35, v15

    const/16 v15, 0x17

    if-lt v12, v15, :cond_34

    const/4 v12, 0x1

    goto :goto_2b

    :cond_34
    const/4 v12, 0x0

    :goto_2b
    if-nez v9, :cond_36

    if-eqz v7, :cond_35

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_35
    move-object/from16 v20, v14

    const/16 v12, 0x2000

    goto :goto_2d

    :cond_36
    invoke-virtual {v13, v4}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_37

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_37

    invoke-virtual {v14, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_37
    iget-object v15, v9, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v7, v15, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move/from16 v36, v12

    move-object/from16 v20, v14

    const/16 v12, 0x2000

    and-int/lit16 v14, v7, 0x2000

    if-eqz v14, :cond_38

    const/4 v14, 0x1

    goto :goto_2c

    :cond_38
    const/4 v14, 0x0

    :goto_2c
    if-eqz v14, :cond_39

    if-nez v36, :cond_39

    :goto_2d
    move-object/from16 v7, p3

    move-object/from16 v14, v20

    move/from16 v12, v28

    move/from16 v4, v29

    move-object/from16 v9, v34

    move-object/from16 v15, v35

    goto :goto_2a

    :cond_39
    iget-object v14, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_3a

    const/4 v7, 0x1

    goto :goto_2e

    :cond_3a
    const/4 v7, 0x0

    :goto_2e
    if-eqz v7, :cond_3c

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iget-object v12, v7, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArraySet;

    if-nez v12, :cond_3b

    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    iget-object v7, v7, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7, v14, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3c
    iget-object v7, v9, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v7, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v7, v7, 0xf

    if-nez v7, :cond_3d

    const/4 v7, 0x1

    goto :goto_2f

    :cond_3d
    const/4 v7, 0x0

    :goto_2f
    if-eqz v7, :cond_3e

    invoke-virtual {v13, v14}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3e

    invoke-interface/range {v30 .. v30}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v7

    if-nez v7, :cond_3e

    invoke-interface/range {v30 .. v30}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v12, v5, Lcom/android/server/pm/permission/UserPermissionState;->mInstallPermissionsFixed:Landroid/util/ArraySet;

    invoke-virtual {v12, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-static {v6, v14}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isCompatPlatformPermissionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3e

    const/4 v7, 0x0

    goto :goto_30

    :cond_3e
    const/4 v7, 0x1

    :goto_30
    iget-object v12, v9, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v12, v12, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v12, v12, 0xf

    if-nez v12, :cond_3f

    const/4 v12, 0x1

    goto :goto_31

    :cond_3f
    const/4 v12, 0x0

    :goto_31
    if-nez v12, :cond_40

    invoke-virtual {v9}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    move-result v12

    if-nez v12, :cond_40

    invoke-virtual {v9}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v12

    if-eqz v12, :cond_41

    :cond_40
    const/16 v18, 0x48

    goto/16 :goto_42

    :cond_41
    invoke-virtual {v9}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v7

    if-eqz v7, :cond_5e

    iget-object v7, v9, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v7, v7, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v12, v7, 0x4

    if-eqz v12, :cond_42

    const/4 v12, 0x1

    goto :goto_32

    :cond_42
    const/4 v12, 0x0

    :goto_32
    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_43

    const/4 v7, 0x1

    goto :goto_33

    :cond_43
    const/4 v7, 0x0

    :goto_33
    invoke-virtual {v8, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v37

    invoke-virtual {v13, v14}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object v38

    if-eqz v38, :cond_44

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v39

    move/from16 v15, v39

    goto :goto_34

    :cond_44
    const/4 v15, 0x0

    :goto_34
    iget-object v6, v9, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v6}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v6

    and-int/lit16 v6, v6, 0x3800

    if-eqz v6, :cond_45

    const/16 v40, 0x1

    goto :goto_35

    :cond_45
    const/16 v40, 0x0

    :goto_35
    iget-object v6, v9, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v6}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v6

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_46

    const/4 v6, 0x1

    goto :goto_36

    :cond_46
    const/4 v6, 0x0

    :goto_36
    if-eqz v36, :cond_51

    if-eqz v37, :cond_48

    if-eqz v12, :cond_48

    if-nez v40, :cond_49

    if-eqz v38, :cond_47

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v41

    if-eqz v41, :cond_47

    invoke-virtual {v11, v9}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v41

    if-eqz v41, :cond_47

    const/16 v41, 0x1

    goto :goto_37

    :cond_47
    const/16 v41, 0x0

    :goto_37
    if-nez v6, :cond_4a

    :goto_38
    or-int/lit16 v15, v15, 0x4000

    const/16 v41, 0x1

    goto :goto_39

    :cond_48
    if-eqz v37, :cond_49

    if-eqz v7, :cond_49

    if-nez v40, :cond_49

    if-nez v6, :cond_49

    goto :goto_38

    :cond_49
    const/16 v41, 0x0

    :cond_4a
    :goto_39
    sget-object v42, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NOTIFICATION_PERMISSIONS:Ljava/util/List;

    move/from16 v43, v6

    move-object/from16 v6, v42

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4b

    and-int/lit8 v6, v15, 0x40

    if-eqz v6, :cond_4b

    and-int/lit8 v15, v15, -0x41

    const/16 v41, 0x1

    :cond_4b
    and-int/lit8 v6, v15, 0x8

    if-eqz v6, :cond_4c

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v6

    invoke-virtual {v0, v6, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionSplitFromNonRuntime(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4c

    and-int/lit8 v15, v15, -0x9

    :goto_3a
    const/16 v41, 0x1

    goto :goto_3b

    :cond_4c
    if-eqz v37, :cond_4d

    if-eqz v12, :cond_4d

    if-eqz v40, :cond_4e

    :cond_4d
    if-eqz v38, :cond_4e

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-virtual {v11, v9}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v6

    if-nez v6, :cond_4e

    goto :goto_3a

    :cond_4e
    :goto_3b
    iget-boolean v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mIsLeanback:Z

    if-eqz v6, :cond_50

    move-object/from16 v6, v42

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-virtual {v11, v9}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    if-eqz v38, :cond_4f

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v4

    if-nez v4, :cond_50

    :cond_4f
    invoke-virtual {v11, v9}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v4

    if-eqz v4, :cond_50

    const/16 v18, 0x48

    :goto_3c
    const/16 v41, 0x1

    goto/16 :goto_40

    :cond_50
    const/16 v18, 0x48

    goto/16 :goto_40

    :cond_51
    move/from16 v43, v6

    if-nez v38, :cond_55

    const-string/jumbo v4, "android"

    iget-object v6, v9, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    iget-object v4, v9, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v4, v4, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_52

    const/4 v4, 0x1

    goto :goto_3d

    :cond_52
    const/4 v4, 0x0

    :goto_3d
    if-nez v4, :cond_53

    const/16 v18, 0x48

    or-int/lit8 v15, v15, 0x48

    const/4 v4, 0x1

    goto :goto_3e

    :cond_53
    const/4 v4, 0x0

    :goto_3e
    sget-boolean v6, Lcom/samsung/android/rune/PMRune;->PM_NAL_GET_APP_LIST:Z

    if-eqz v6, :cond_54

    const-string/jumbo v6, "com.samsung.android.permissioncontroller"

    iget-object v14, v9, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    const-string/jumbo v6, "com.samsung.android.permission.GET_APP_LIST"

    iget-object v14, v9, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    const/16 v18, 0x48

    or-int/lit8 v15, v15, 0x48

    const/4 v4, 0x1

    goto :goto_3f

    :cond_54
    const/16 v18, 0x48

    goto :goto_3f

    :cond_55
    const/16 v18, 0x48

    const/4 v4, 0x0

    :goto_3f
    iget-object v6, v9, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v6}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_56

    invoke-virtual {v11, v9}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v6

    if-eqz v6, :cond_56

    const/4 v4, 0x1

    :cond_56
    if-eqz v37, :cond_58

    if-nez v12, :cond_57

    if-eqz v7, :cond_58

    :cond_57
    if-nez v40, :cond_58

    if-nez v43, :cond_58

    or-int/lit16 v15, v15, 0x4000

    goto :goto_3c

    :cond_58
    move/from16 v41, v4

    :goto_40
    if-eqz v37, :cond_5c

    if-nez v12, :cond_59

    if-eqz v7, :cond_5a

    :cond_59
    if-eqz v40, :cond_5c

    :cond_5a
    if-eqz v43, :cond_5c

    and-int/lit16 v4, v15, -0x4001

    if-nez v36, :cond_5b

    or-int/lit8 v4, v4, 0x40

    :cond_5b
    move v15, v4

    const/16 v41, 0x1

    :cond_5c
    if-eqz v41, :cond_5d

    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    :cond_5d
    const v4, 0x3fbff

    invoke-virtual {v11, v9, v4, v15}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    :goto_41
    move-object/from16 v12, v25

    move-object/from16 v7, v26

    move-object/from16 v6, v27

    goto/16 :goto_4f

    :cond_5e
    const/16 v18, 0x48

    const-string/jumbo v4, "PermissionManagerServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown permission protection "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v9, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v7, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v7, v7, 0xf

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v9, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :goto_42
    iget-object v6, v9, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v6, v6, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v6, v6, 0xf

    if-nez v6, :cond_5f

    const/4 v6, 0x1

    goto :goto_43

    :cond_5f
    const/4 v6, 0x0

    :goto_43
    if-eqz v6, :cond_61

    if-nez v7, :cond_60

    goto :goto_44

    :cond_60
    move-object/from16 v12, v25

    move-object/from16 v7, v26

    move-object/from16 v6, v27

    goto/16 :goto_49

    :cond_61
    :goto_44
    invoke-virtual {v9}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    move-result v6

    if-eqz v6, :cond_67

    invoke-virtual {v9}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v6

    if-eqz v6, :cond_63

    move-object/from16 v6, v27

    invoke-static {v6, v4}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    :goto_45
    move-object/from16 v7, v26

    goto :goto_46

    :cond_62
    move-object/from16 v7, v26

    goto :goto_47

    :cond_63
    move-object/from16 v6, v27

    goto :goto_45

    :goto_46
    invoke-static {v7, v4}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_66

    invoke-virtual {v9}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v12

    if-eqz v12, :cond_64

    invoke-static {v2, v4}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_65

    :cond_64
    invoke-virtual {v9}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v12

    if-nez v12, :cond_65

    invoke-virtual {v9}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v12

    if-eqz v12, :cond_68

    :cond_65
    invoke-virtual {v13, v4}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_66

    goto :goto_47

    :cond_66
    move-object/from16 v12, v25

    goto :goto_49

    :cond_67
    move-object/from16 v7, v26

    move-object/from16 v6, v27

    :cond_68
    :goto_47
    invoke-virtual {v9}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v12

    if-eqz v12, :cond_6a

    invoke-virtual {v9}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v12

    if-eqz v12, :cond_69

    invoke-static {v6, v4}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6a

    :cond_69
    move-object/from16 v12, v25

    goto :goto_48

    :cond_6a
    move-object/from16 v12, v25

    goto :goto_4b

    :goto_48
    invoke-static {v12, v4}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6d

    invoke-virtual {v9}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v15

    if-eqz v15, :cond_6b

    invoke-static {v2, v4}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6c

    :cond_6b
    invoke-virtual {v9}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v15

    if-nez v15, :cond_6c

    invoke-virtual {v9}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v15

    if-eqz v15, :cond_6e

    :cond_6c
    invoke-virtual {v13, v4}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6e

    :cond_6d
    :goto_49
    invoke-virtual {v11, v9}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v4

    if-eqz v4, :cond_6f

    :goto_4a
    const/16 v19, 0x1

    goto :goto_4c

    :cond_6e
    :goto_4b
    invoke-virtual {v11, v9}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v4

    if-eqz v4, :cond_6f

    goto :goto_4a

    :cond_6f
    :goto_4c
    invoke-virtual {v13, v14}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object v4

    if-eqz v4, :cond_70

    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v4

    :goto_4d
    const v14, 0x3fbff

    goto :goto_4e

    :cond_70
    const/4 v4, 0x0

    goto :goto_4d

    :goto_4e
    invoke-virtual {v11, v9, v14, v4}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    :goto_4f
    move-object/from16 v27, v6

    move-object/from16 v26, v7

    move-object/from16 v25, v12

    move-object/from16 v14, v20

    move/from16 v12, v28

    move/from16 v4, v29

    move-object/from16 v9, v34

    move-object/from16 v15, v35

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    goto/16 :goto_2a

    :cond_71
    move/from16 v29, v4

    move-object/from16 v34, v9

    move/from16 v28, v12

    move-object/from16 v20, v14

    move-object/from16 v12, v25

    move-object/from16 v7, v26

    move-object/from16 v6, v27

    const/16 v18, 0x48

    if-nez v19, :cond_72

    if-eqz p2, :cond_73

    :cond_72
    invoke-interface/range {v30 .. v30}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v9, v5, Lcom/android/server/pm/permission/UserPermissionState;->mInstallPermissionsFixed:Landroid/util/ArraySet;

    invoke-virtual {v9, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_73

    invoke-interface/range {v30 .. v30}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_74

    :cond_73
    invoke-interface/range {v30 .. v30}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v4

    if-eqz v4, :cond_75

    :cond_74
    invoke-interface/range {v30 .. v30}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    invoke-virtual {v5, v4, v9}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    :cond_75
    if-eqz v19, :cond_77

    if-eqz p3, :cond_76

    if-eqz p2, :cond_76

    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    :cond_76
    move-object v5, v1

    const/16 v23, 0x1

    goto :goto_50

    :cond_77
    move-object v5, v1

    :goto_50
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move v4, v3

    move-object/from16 v27, v6

    move-object/from16 v26, v7

    move-object v1, v11

    move/from16 v3, v29

    const/4 v14, 0x0

    move-object v7, v2

    move-object/from16 v2, v22

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/util/Collection;II[I)[I

    move-result-object v6

    move-object/from16 v22, v2

    move/from16 v29, v3

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object v2, v1

    move v5, v4

    move-object v1, v13

    move-object/from16 v4, v20

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/util/ArraySet;I[I)[I

    move-result-object v1

    const/16 v21, 0x1

    add-int/lit8 v0, v32, 0x1

    move-object/from16 v6, p1

    move v14, v0

    move-object v2, v7

    move-object/from16 v25, v12

    move-object/from16 v3, v22

    move/from16 v5, v23

    move/from16 v11, v24

    move/from16 v12, v28

    move/from16 v4, v29

    move-object/from16 v13, v30

    move-object/from16 v15, v33

    move-object/from16 v9, v34

    move-object/from16 v0, p0

    move-object/from16 v7, p3

    goto/16 :goto_1d

    :cond_78
    move/from16 v23, v5

    move/from16 v28, v12

    move-object/from16 v33, v15

    const/16 v21, 0x1

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz p2, :cond_7a

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    :cond_79
    invoke-virtual/range {v33 .. v33}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [I

    :cond_7a
    if-eqz p4, :cond_7e

    if-eqz p3, :cond_7b

    if-eqz p2, :cond_7b

    if-nez v23, :cond_7c

    :cond_7b
    if-eqz v28, :cond_7d

    :cond_7c
    move/from16 v12, v21

    goto :goto_51

    :cond_7d
    const/4 v12, 0x0

    :goto_51
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    move-object/from16 v8, p4

    invoke-virtual {v8, v1, v12, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->onPermissionUpdated([IZI)V

    :cond_7e
    :goto_52
    return-void

    :goto_53
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method

.method public final restoreRuntimePermissions([BI)V
    .locals 2

    const-string/jumbo v0, "backup"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    int-to-float v0, p2

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/permission/PermissionControllerManager;->stageAndApplyRuntimePermissionsBackup([BLandroid/os/UserHandle;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceImpl$1;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/16 v1, 0x3e8

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    move-object v1, v5

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x17

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "default:0"

    invoke-virtual {p0, v1, p2, p1, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    const/16 v5, 0x3e8

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v6, p4

    move-object v8, p5

    :try_start_0
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "Failed to revoke "

    const-string p2, " from "

    invoke-static {p1, v2, p2, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "PermissionManager"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/util/Collection;II[I)[I
    .locals 7

    const/16 v0, 0x17

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p3, v0, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v3}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v5

    and-int/lit16 v6, v5, 0x80

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;

    invoke-static {v6, v3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {p1, v3}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v3}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v3

    and-int/lit16 v3, v3, 0x88

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    and-int/lit8 v5, v5, 0x34

    if-nez v5, :cond_3

    if-eqz p3, :cond_3

    if-nez v3, :cond_3

    invoke-virtual {p1, v4}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    const/16 v3, 0x83

    goto :goto_3

    :cond_3
    const/16 v3, 0x80

    :goto_3
    invoke-virtual {p1, v4, v3, v2}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    invoke-static {p5, p4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p5

    goto :goto_1

    :cond_4
    return-object p5
.end method

.method public final revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const-string/jumbo v0, "default:0"

    const-string/jumbo v1, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {p0, v5, v1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.REVOKE_POST_NOTIFICATIONS_WITHOUT_KILL"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    const/4 v4, 0x1

    const-string/jumbo v7, "skip permission revoke app kill for notification test"

    const-string/jumbo v2, "android.permission.POST_NOTIFICATIONS"

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    return-void
.end method

.method public final revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const-string/jumbo p3, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    const-string/jumbo v0, "default:0"

    invoke-virtual {p0, v5, p3, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    :goto_0
    move v3, p3

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    goto :goto_0

    :goto_1
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    return-void
.end method

.method public final revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    move/from16 v2, p5

    move/from16 v4, p6

    const-string v3, "Cannot revoke policy fixed permission "

    const-string/jumbo v6, "Non-System UID cannot revoke system fixed permission "

    const-string/jumbo v7, "Package "

    const-string/jumbo v8, "Missing permissions state for "

    const-string/jumbo v9, "Permission "

    const-string/jumbo v10, "Permission "

    const-string/jumbo v11, "Unknown permission: "

    const-string/jumbo v12, "Unknown permission: "

    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v13, v4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v13

    if-nez v13, :cond_0

    const-string/jumbo v0, "PermissionManager"

    const-string/jumbo v1, "No such user:"

    invoke-static {v4, v1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    const-string/jumbo v15, "revokeRuntimePermission"

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "revokeRuntimePermission"

    const/4 v14, 0x1

    invoke-virtual {v0, v2, v4, v13, v14}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IILjava/lang/String;Z)V

    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v13, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v13

    if-nez v13, :cond_1

    const-string/jumbo v0, "PermissionManager"

    const-string/jumbo v2, "Unknown package: "

    invoke-static {v2, v1, v0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v15, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v14, 0x0

    invoke-virtual {v15, v2, v4, v1, v14}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result v15

    if-nez v15, :cond_1a

    iget-object v15, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v16, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v15

    :try_start_0
    iget-object v14, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v14, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v14

    if-eqz v14, :cond_19

    invoke-virtual {v14}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v12

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v12, :cond_4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    if-eq v2, v12, :cond_3

    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v12}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v12

    :try_start_1
    iget-object v14, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v14, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v14

    if-eqz v14, :cond_18

    invoke-virtual {v14}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v14}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v15

    if-eqz v15, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v14}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v15

    if-eqz v15, :cond_7

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is managed by role"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " requested by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a changeable permission type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_2
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-virtual {v0, v2, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v2

    if-nez v2, :cond_9

    const-string/jumbo v0, "PermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v12

    return-void

    :cond_9
    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has not requested permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_3
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v7

    const/16 v8, 0x17

    if-ge v7, v8, :cond_c

    invoke-virtual {v14}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v7

    if-eqz v7, :cond_c

    monitor-exit v12

    return-void

    :cond_c
    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v7

    and-int/lit8 v8, v7, 0x10

    if-eqz v8, :cond_e

    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v9

    const/16 v10, 0x3e8

    if-ne v9, v10, :cond_d

    goto :goto_4

    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_4
    if-nez p3, :cond_10

    and-int/lit8 v6, v7, 0x4

    if-nez v6, :cond_f

    goto :goto_5

    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_5
    invoke-virtual {v2, v14}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v2

    if-nez v2, :cond_11

    monitor-exit v12

    return-void

    :cond_11
    if-eqz v8, :cond_12

    const/4 v14, 0x1

    goto :goto_6

    :cond_12
    const/4 v14, 0x0

    :goto_6
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_15

    if-eqz v14, :cond_14

    const/4 v2, -0x1

    if-eq v4, v2, :cond_13

    if-nez v4, :cond_14

    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " system_fixed permission revoked for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v6, "revoke was called by"

    invoke-direct {v3, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :cond_14
    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x4dd

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v2, v1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    const/16 v1, 0x4d9

    invoke-virtual {v2, v1, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_15
    if-eqz p8, :cond_17

    if-eqz v11, :cond_16

    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v4, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    move/from16 v3, p4

    move-object/from16 v1, p7

    move-object/from16 v0, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionRevoked(Ljava/lang/String;IZILjava/lang/String;)V

    return-void

    :cond_16
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    :cond_17
    return-void

    :cond_18
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_7
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_19
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_8
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unknown package: "

    invoke-static {v2, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;II)Z
    .locals 7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    int-to-float v0, p4

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p4, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setAllowlistedRestrictedPermissions for user "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v4, v3, v5, p1, v1}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    return v1

    :cond_3
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {p1, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    move p1, v2

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    check-cast v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lcom/android/server/pm/Computer;->isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z

    move-result v3

    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_6

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Modifying system allowlist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    and-int/lit8 v4, p3, 0x4

    if-eqz v4, :cond_e

    if-nez p1, :cond_8

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Modifying upgrade allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_4
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_9
    return v2

    :cond_a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    :goto_5
    if-ge v1, v5, :cond_e

    if-eqz v4, :cond_b

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    :cond_b
    if-eqz p1, :cond_d

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Adding to upgrade allowlist requiresandroid.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_10

    if-nez p1, :cond_10

    if-eqz v3, :cond_f

    goto :goto_6

    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Modifying installer allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move/from16 v4, p4

    const/4 v10, 0x1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v1, 0x0

    move-object v6, v1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v3

    :try_start_0
    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v7, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, v7, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v7, v7, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v7, v7, 0xc

    if-eqz v7, :cond_0

    move v7, v10

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_2

    :cond_1
    const/16 v16, 0x4

    goto/16 :goto_7

    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v7

    invoke-virtual {v0, v7, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v7

    if-nez v7, :cond_3

    const-string/jumbo v2, "PermissionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Missing permissions state for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " and user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    const/16 v16, 0x4

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_3
    invoke-virtual {v7, v2}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v7

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_5

    if-nez v6, :cond_4

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    :cond_4
    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v14, v6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v4, v3, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    move/from16 v6, p3

    move v8, v3

    const/4 v15, 0x0

    :goto_2
    if-eqz v6, :cond_c

    invoke-static {v6}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v16

    shl-int v13, v10, v16

    not-int v11, v13

    and-int/2addr v6, v11

    if-eq v13, v10, :cond_a

    const/4 v11, 0x2

    if-eq v13, v11, :cond_8

    const/4 v11, 0x4

    if-eq v13, v11, :cond_6

    goto :goto_2

    :cond_6
    or-int/lit16 v15, v15, 0x2000

    if-eqz v9, :cond_7

    invoke-interface {v9, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    or-int/lit16 v8, v8, 0x2000

    goto :goto_2

    :cond_7
    and-int/lit16 v8, v8, -0x2001

    goto :goto_2

    :cond_8
    or-int/lit16 v15, v15, 0x800

    if-eqz v9, :cond_9

    invoke-interface {v9, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    or-int/lit16 v8, v8, 0x800

    goto :goto_2

    :cond_9
    and-int/lit16 v8, v8, -0x801

    goto :goto_2

    :cond_a
    or-int/lit16 v15, v15, 0x1000

    if-eqz v9, :cond_b

    invoke-interface {v9, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    or-int/lit16 v8, v8, 0x1000

    goto :goto_2

    :cond_b
    and-int/lit16 v8, v8, -0x1001

    goto :goto_2

    :cond_c
    if-ne v3, v8, :cond_d

    :goto_3
    move-object v6, v14

    goto/16 :goto_0

    :cond_d
    and-int/lit16 v1, v3, 0x3800

    if-eqz v1, :cond_e

    move v1, v10

    goto :goto_4

    :cond_e
    const/4 v1, 0x0

    :goto_4
    and-int/lit16 v6, v8, 0x3800

    if-eqz v6, :cond_f

    move v6, v10

    :goto_5
    const/16 v16, 0x4

    goto :goto_6

    :cond_f
    const/4 v6, 0x0

    goto :goto_5

    :goto_6
    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_10

    if-nez v6, :cond_10

    if-eqz v7, :cond_10

    or-int/lit8 v15, v15, 0x4

    and-int/lit8 v8, v8, -0x5

    :cond_10
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    const/16 v7, 0x17

    if-ge v3, v7, :cond_11

    if-nez v1, :cond_11

    if-eqz v6, :cond_11

    or-int/lit8 v15, v15, 0x40

    or-int/lit8 v8, v8, 0x40

    :cond_11
    move v3, v15

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    move v4, v8

    const/4 v8, 0x0

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    move/from16 v4, p4

    move v1, v10

    goto :goto_3

    :goto_7
    :try_start_1
    monitor-exit v3

    :goto_8
    move/from16 v4, p4

    goto/16 :goto_0

    :goto_9
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_12
    if-eqz v1, :cond_16

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->restorePermissionState(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;I)V

    move v4, v5

    if-nez v6, :cond_13

    goto :goto_d

    :cond_13
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v1, :cond_16

    invoke-virtual {v6, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v3

    :try_start_2
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v5

    invoke-virtual {v0, v5, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v5

    if-nez v5, :cond_14

    const-string/jumbo v2, "PermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Missing permissions state for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " and user "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto :goto_b

    :catchall_1
    move-exception v0

    goto :goto_c

    :cond_14
    invoke-virtual {v5, v2}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_15

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-static {v4, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->onPermissionRevoked(Ljava/lang/String;IZILjava/lang/String;)V

    return-void

    :cond_15
    :goto_b
    add-int/2addr v13, v10

    move/from16 v4, p4

    goto :goto_a

    :goto_c
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_16
    :goto_d
    return-void
.end method

.method public final setDefaultPermissionGrantFingerprint(I)V
    .locals 0

    return-void
.end method

.method public final setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/util/ArraySet;I[I)[I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/SystemConfig;->mSplitPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_2

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/permission/PermissionManager$SplitPermissionInfo;

    invoke-virtual {v8}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_1

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArraySet;

    if-nez v13, :cond_0

    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v3, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v8}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArraySet;->size()I

    move-result v4

    move-object/from16 v5, p6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_11

    move-object/from16 v8, p4

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    if-eqz v10, :cond_e

    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v11, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v11

    if-eqz v11, :cond_f

    invoke-virtual {v11}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v12

    if-eqz v12, :cond_e

    const-string/jumbo v12, "android.permission.ACTIVITY_RECOGNITION"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    sget-object v12, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;

    check-cast v12, Landroid/util/ArraySet;

    invoke-virtual {v12, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    sget-object v12, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

    check-cast v12, Landroid/util/ArraySet;

    invoke-virtual {v12, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const/16 v12, 0x80

    invoke-virtual {v2, v11, v12, v12}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    :cond_3
    move/from16 v11, p5

    invoke-static {v5, v11}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    iget-object v12, v1, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v12, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_6

    invoke-virtual {v10, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iget-object v15, v1, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-ge v12, v13, :cond_10

    invoke-virtual {v10, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iget-object v14, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v14, v13}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v14

    if-eqz v14, :cond_d

    invoke-virtual {v14}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v13

    if-nez v13, :cond_c

    :goto_6
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_7
    if-ge v13, v12, :cond_a

    invoke-virtual {v10, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    if-nez v14, :cond_7

    const/4 v15, 0x0

    :cond_7
    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v15, v6

    const/4 v14, 0x1

    goto :goto_8

    :cond_8
    if-nez v14, :cond_9

    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v15, v6

    :cond_9
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_a
    if-eqz v14, :cond_b

    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v6, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    :cond_b
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v6, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    invoke-virtual {v2, v6, v15, v15}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    goto :goto_9

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unknown source permission in split permission: "

    invoke-static {v1, v13}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move/from16 v11, p5

    goto :goto_9

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unknown new permission in split permission: "

    invoke-static {v1, v9}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_11
    return-object v5
.end method

.method public final setLicensePermissionsForMDM(Ljava/lang/String;Ljava/util/Set;)I
    .locals 13

    const-string/jumbo v0, "PermissionManager"

    const-string/jumbo v1, "setLicensePermissionsForMDM : setLicensePermissionsForMDM start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "PermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setLicensePermissions : packageName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds$1()[I

    move-result-object v1

    if-nez v0, :cond_0

    const-string/jumbo v2, "PermissionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setLicensePermissions : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is invalid (NULL)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    move v4, v2

    :goto_0
    const-string/jumbo v5, "PermissionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Package name: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cannot be found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 p0, -0x3

    return p0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    array-length v9, v8

    if-lez v9, :cond_5

    move v7, v2

    :goto_3
    array-length v9, v8

    if-ge v7, v9, :cond_2

    aget-object v9, v8, v7

    iget-object v10, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v10, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v11, v10, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v12, v11}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    if-eqz v11, :cond_4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    const-string/jumbo v8, "PermissionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setLicensePermissions : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " : invalid permission "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const-string/jumbo p2, "PermissionManager"

    const-string/jumbo v7, "setLicensePermissionsForMDM : revokeLicensePermissionForMDM start"

    invoke-static {p2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter p2

    :try_start_2
    array-length v7, v1

    move v8, v2

    :goto_5
    if-ge v8, v7, :cond_8

    aget v9, v1, v8

    iget-object v10, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v10, v9}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v9

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v9

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v2

    :goto_6
    if-ge v11, v10, :cond_7

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Lcom/android/server/pm/permission/Permission;

    invoke-virtual {v9, v12}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    goto :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_11

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_8
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean p2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const-string/jumbo p2, "PermissionManager"

    const-string/jumbo v6, "setLicensePermissionsForMDM : revokeLicensePermissionForMDM end"

    invoke-static {p2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v6, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p2

    if-eqz p2, :cond_a

    iget-object v6, p2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    if-eqz v6, :cond_a

    if-nez v3, :cond_a

    if-nez v4, :cond_a

    const-string/jumbo v3, "PermissionManager"

    const-string/jumbo v4, "setLicensePermissionsForMDM : READ_PRIVILEGED_PHONE_STATE start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3

    :try_start_3
    array-length v4, v1

    move v6, v2

    :goto_7
    if-ge v6, v4, :cond_9

    aget v7, v1, v6

    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v7

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_8

    :cond_9
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-boolean p2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const-string/jumbo p2, "PermissionManager"

    const-string/jumbo v3, "setLicensePermissionsForMDM : READ_PRIVILEGED_PHONE_STATE end"

    invoke-static {p2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :goto_8
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_a
    :goto_9
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    :try_start_5
    const-string/jumbo v3, "enterprise_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getMamPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    const-string/jumbo v4, "PermissionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getMamPermissions: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_b

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p2, p1

    goto :goto_b

    :catch_2
    move-exception p1

    goto :goto_a

    :cond_b
    invoke-interface {p2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_b

    :goto_a
    const-string/jumbo v3, "PermissionManager"

    const-string v4, "Error while getting MAM permissions"

    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_b
    if-nez p2, :cond_d

    const/4 p0, -0x4

    return p0

    :cond_d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_e
    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    if-eqz v4, :cond_e

    iget-object v6, v4, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_f

    move v6, v2

    goto :goto_d

    :cond_f
    const-string/jumbo v7, "com.samsung.knoxlicense.permissions"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    :goto_d
    if-eqz v6, :cond_10

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "PermissionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "hasSelectivePermissionsForMdm(): permission granted = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_10
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_11
    const-string/jumbo p2, "PermissionManager"

    const-string/jumbo v3, "setLicensePermissionsForMDM : grantLicensePermissionForMDM start"

    invoke-static {p2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v3

    :try_start_6
    array-length v4, v1

    move v6, v2

    :goto_e
    if-ge v6, v4, :cond_14

    aget v7, v1, v6

    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v7

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v2

    :cond_12
    :goto_f
    if-ge v9, v8, :cond_13

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/android/server/pm/permission/Permission;

    invoke-virtual {v7, v10}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v11

    if-eqz v11, :cond_12

    iget-object v10, v10, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v10, v10, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :catchall_2
    move-exception p0

    goto :goto_10

    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_14
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const-string/jumbo p1, "PermissionManager"

    const-string/jumbo v1, "setLicensePermissionsForMDM : grantLicensePermissionForMDM end"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "PermissionManager"

    const-string/jumbo p1, "setLicensePermissionsForMDM : setLicensePermissionsForMDM end"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :goto_10
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :goto_11
    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z
    .locals 8

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v0

    iget-object v1, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v1, v1, 0x4000

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_c

    :cond_1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    check-cast v5, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    invoke-interface {v5, v6}, Lcom/android/server/pm/Computer;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    if-nez v5, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_7

    if-eqz v0, :cond_3

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    if-eqz v1, :cond_7

    invoke-static {v5, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->canGrantOemPermission(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_4
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    :goto_2
    move p4, v2

    goto :goto_3

    :cond_6
    invoke-virtual {p4, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_7
    move p4, v3

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_9

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result p4

    if-nez p4, :cond_5

    :cond_9
    if-eqz v1, :cond_7

    invoke-static {p2, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->canGrantOemPermission(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_7

    goto :goto_2

    :goto_3
    if-eqz p4, :cond_d

    if-eqz v0, :cond_d

    iget-object v0, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    const-string/jumbo p4, "Permission "

    const-string v0, " cannot be granted to privileged vendor apk "

    invoke-static {p4, v4, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because it isn\'t a \'vendorPrivileged\' permission."

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string/jumbo v0, "PermissionManager"

    invoke-static {v0, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move p4, v3

    :cond_d
    :goto_4
    if-nez p4, :cond_e

    iget-object v0, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_e

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x17

    if-ge v0, v1, :cond_e

    move p4, v2

    :cond_e
    if-nez p4, :cond_10

    iget-object v0, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    move p4, v2

    :cond_10
    if-nez p4, :cond_11

    iget-object v0, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move p4, v2

    :cond_11
    if-nez p4, :cond_12

    iget-object v0, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_12

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p2

    if-eqz p2, :cond_12

    move p4, v2

    :cond_12
    if-nez p4, :cond_13

    iget-object p2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v0, 0x8000000

    and-int/2addr p2, v0

    if-eqz p2, :cond_13

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    iget-object p4, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p4, p4, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    invoke-virtual {p2, p4}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelfWithDigest(Ljava/util/Set;)Z

    move-result p4

    :cond_13
    if-nez p4, :cond_14

    iget-object p2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 p2, p2, 0x800

    if-eqz p2, :cond_14

    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p2, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    move p4, v2

    :cond_14
    if-nez p4, :cond_15

    iget-object p2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v0, 0x10000

    and-int/2addr p2, v0

    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v0, 0x6

    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    move p4, v2

    :cond_15
    if-nez p4, :cond_16

    iget-object p2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v0, 0x80000

    and-int/2addr p2, v0

    if-eqz p2, :cond_16

    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v0, 0xa

    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    move p4, v2

    :cond_16
    if-nez p4, :cond_17

    iget-object p2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v0, 0x100000

    and-int/2addr p2, v0

    if-eqz p2, :cond_17

    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v0, 0xb

    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    move p4, v2

    :cond_17
    if-nez p4, :cond_18

    iget-object p2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v0, 0x200000

    and-int/2addr p2, v0

    if-eqz p2, :cond_18

    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v0, 0xc

    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    move p4, v2

    :cond_18
    if-nez p4, :cond_19

    iget-object p2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v0, 0x800000

    and-int/2addr p2, v0

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v0, 0xf

    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    move p4, v2

    :cond_19
    if-nez p4, :cond_1b

    iget-object p2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v0, 0x1000000

    and-int/2addr p2, v0

    if-eqz p2, :cond_1b

    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v0, 0x10

    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result p2

    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveProfileOwner(I)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    move-result p2

    if-eqz p2, :cond_1b

    :cond_1a
    move p4, v2

    :cond_1b
    if-nez p4, :cond_1c

    iget-object p2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v0, 0x2000000

    and-int/2addr p2, v0

    if-eqz p2, :cond_1c

    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v0, 0x11

    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    move p4, v2

    :cond_1c
    if-nez p4, :cond_1d

    iget-object p2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 p3, 0x400000

    and-int/2addr p2, p3

    if-eqz p2, :cond_1d

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1d

    return v2

    :cond_1d
    return p4
.end method

.method public final shouldGrantPermissionBySignature(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/Permission;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    iget-object p2, p2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p2, p2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    const/4 v2, 0x4

    invoke-virtual {p0, p2, v2}, Landroid/content/pm/SigningDetails;->hasCommonSignerWithCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final shouldShowRequestPermissionRationale(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "canShowRequestPermissionRationale for user "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v1, 0x10000000

    invoke-virtual {v0, p2, v1, v2, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v2, 0x0

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "default:0"

    invoke-virtual {p0, p2, p3, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(IILjava/lang/String;Ljava/lang/String;)I

    move-result p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    and-int/lit8 v0, p4, 0x16

    if-eqz v0, :cond_3

    :goto_0
    return v2

    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v3

    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    if-nez v0, :cond_4

    monitor-exit v3

    return v2

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_4
    iget-object v0, v0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    if-eqz v0, :cond_6

    and-int/lit16 v0, p4, 0x3800

    if-nez v0, :cond_6

    monitor-exit v3

    return v2

    :cond_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_2
    const-string/jumbo v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    const-wide/32 v5, 0x8c7dff3

    invoke-interface {p0, v5, v6, p2, p1}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_7

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_7
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :goto_3
    :try_start_3
    const-string/jumbo p1, "PermissionManager"

    const-string/jumbo p2, "Unable to check if compatibility change is enabled."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_4
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_8

    move v2, v1

    :cond_8
    return v2

    :goto_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_6
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :catchall_2
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final updateAllPermissions(Ljava/lang/String;Z)V
    .locals 7

    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    if-eqz p2, :cond_0

    const/4 p2, 0x6

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x1

    or-int v5, v0, p2

    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    throw p0
.end method

.method public final updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 p6, 0x3e8

    if-eq v5, p6, :cond_2

    if-eqz v5, :cond_2

    and-int/lit8 p6, p3, 0x4

    if-eqz p6, :cond_2

    if-eqz p5, :cond_0

    iget-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo p6, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    const-string/jumbo v0, "Need android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY to change policy flags"

    invoke-virtual {p5, p6, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p5, v5}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result p5

    const/16 p6, 0x1d

    if-ge p5, p6, :cond_1

    :goto_0
    const/4 p5, 0x1

    :goto_1
    move v7, p5

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY needs  to be checked for packages targeting 29 or later when changing policy flags"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 p5, 0x0

    goto :goto_1

    :goto_2
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    return-void
.end method

.method public final updatePermissionFlagsForAllApps(III)V
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, p3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    const-string/jumbo v1, "updatePermissionFlagsForAllApps"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p3, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IILjava/lang/String;Z)V

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    :goto_0
    move v7, p1

    goto :goto_1

    :cond_1
    and-int/lit8 p1, p1, -0x11

    goto :goto_0

    :goto_1
    if-eq v0, v1, :cond_2

    :goto_2
    move v8, p2

    goto :goto_3

    :cond_2
    and-int/lit8 p2, p2, -0x11

    goto :goto_2

    :goto_3
    new-array v6, v2, [Z

    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda0;

    move-object v4, p0

    move v5, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;I[ZII)V

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    aget-boolean p0, v6, p0

    if-eqz p0, :cond_3

    iget-object p0, v4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    filled-new-array {v5}, [I

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    :cond_3
    :goto_4
    return-void
.end method

.method public final updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .locals 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, p6}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string/jumbo v1, "updatePermissionFlags"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    const-string/jumbo v1, "updatePermissionFlags"

    invoke-virtual {p0, p5, p6, v1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IILjava/lang/String;Z)V

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_2

    if-eqz p7, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "updatePermissionFlags requires android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/16 p7, 0x3e8

    if-eq p5, p7, :cond_3

    and-int/lit8 p3, p3, -0x31

    and-int/lit16 p4, p4, -0x7831

    :cond_3
    iget-object p7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p7, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p7

    if-nez p7, :cond_4

    const-string/jumbo p0, "PermissionManager"

    const-string/jumbo p2, "Unknown package: "

    invoke-static {p2, p1, p0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, p5, p6, p1, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result p5

    if-nez p5, :cond_c

    invoke-interface {p7}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_6

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p6, p1}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_6

    aget-object v5, v1, v4

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    add-int/2addr v4, v0

    goto :goto_1

    :cond_6
    move v0, p5

    :goto_2
    iget-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter p5

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v3

    invoke-interface {p7}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v4

    invoke-virtual {p0, v4, p6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object p0

    if-nez p0, :cond_7

    const-string/jumbo p0, "PermissionManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "Missing permissions state for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and user "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p5

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    if-nez v0, :cond_8

    const-string/jumbo p0, "PermissionManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "Permission "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isn\'t requested by package "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p5

    return-void

    :cond_8
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    move-result p0

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_a

    if-eqz p8, :cond_a

    if-nez v3, :cond_9

    invoke-virtual {p8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionUpdated()V

    return-void

    :cond_9
    filled-new-array {p6}, [I

    move-result-object p0

    invoke-interface {p7}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result p1

    invoke-virtual {p8, p0, v2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionUpdated([IZI)V

    :cond_a
    :goto_3
    return-void

    :cond_b
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "Unknown permission: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_4
    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "Unknown package: "

    invoke-static {p2, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updatePermissionStatesAndFlagsInternalForMDM(IIILjava/lang/String;Ljava/util/List;Z)Z
    .locals 19

    move-object/from16 v1, p0

    move/from16 v8, p1

    move/from16 v2, p3

    move-object/from16 v0, p4

    const/4 v9, 0x1

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    move-object v11, v3

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v0, v9

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v12, :cond_6

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v13, v3, 0x1

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    :try_start_1
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    const-string v4, "AndroidPackage is null "

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v14, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v14
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d

    :try_start_2
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v4

    invoke-virtual {v1, v4, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Missing permissions state for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v15, p5

    :try_start_4
    invoke-virtual {v1, v3, v15}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getRequestedRuntimePermissionsLocked(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    if-eqz p6, :cond_1

    const-string/jumbo v6, "android.permission.READ_EXTERNAL_STORAGE"

    move-object v7, v5

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_4

    :catchall_0
    move-exception v0

    move/from16 v2, p2

    :goto_3
    const/16 v18, 0x0

    goto/16 :goto_e

    :cond_1
    :goto_4
    move-object v7, v5

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v16, v0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v5, :cond_5

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v17, v0, 0x1

    check-cast v6, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v18, 0x0

    :try_start_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BasePermission is null: "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v2, v3, v4, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPossibleToModify(ILcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    move v9, v5

    move-object v5, v6

    move-object v6, v0

    :try_start_7
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->handleGrantLocked(ILcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v1, p0

    move-object v10, v7

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    :goto_6
    move/from16 v2, p2

    goto/16 :goto_e

    :catch_0
    move-exception v0

    move-object/from16 v1, p0

    move/from16 v2, p2

    :goto_7
    move-object v10, v7

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    move/from16 v2, p2

    :goto_8
    move-object v10, v7

    goto/16 :goto_b

    :cond_2
    move v9, v5

    move-object v5, v6

    move-object v6, v0

    const/4 v0, 0x2

    if-ne v8, v0, :cond_3

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object v10, v7

    move/from16 v7, p6

    :try_start_8
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->handleDenyLocked(ILcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;Z)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move/from16 v2, p2

    goto :goto_a

    :catch_3
    move-exception v0

    move/from16 v2, p2

    goto :goto_b

    :cond_3
    move-object/from16 v1, p0

    move-object v10, v7

    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_4

    const/4 v0, 0x4

    move/from16 v2, p2

    :try_start_9
    invoke-virtual {v4, v6, v0, v2}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_d

    :catchall_3
    move-exception v0

    goto/16 :goto_e

    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_b

    :cond_4
    move/from16 v2, p2

    goto :goto_c

    :catch_6
    move-exception v0

    move/from16 v2, p2

    move v9, v5

    goto :goto_7

    :catch_7
    move-exception v0

    move/from16 v2, p2

    move v9, v5

    goto :goto_8

    :catch_8
    move-exception v0

    move/from16 v2, p2

    move v9, v5

    move-object v10, v7

    const/16 v18, 0x0

    goto :goto_a

    :catch_9
    move-exception v0

    move/from16 v2, p2

    move v9, v5

    move-object v10, v7

    const/16 v18, 0x0

    goto :goto_b

    :goto_a
    :try_start_a
    const-string/jumbo v5, "PermissionManager"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :goto_b
    const-string/jumbo v5, "PermissionManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    move/from16 v16, v18

    :goto_d
    move/from16 v2, p3

    move v5, v9

    move-object v7, v10

    move/from16 v0, v17

    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_5
    move/from16 v2, p2

    const/16 v18, 0x0

    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    move/from16 v0, v16

    goto :goto_10

    :catch_a
    move-exception v0

    goto :goto_11

    :catch_b
    move-exception v0

    goto :goto_f

    :catchall_4
    move-exception v0

    move/from16 v2, p2

    move-object/from16 v15, p5

    goto/16 :goto_3

    :catch_c
    move-exception v0

    move/from16 v2, p2

    move-object/from16 v15, p5

    const/16 v18, 0x0

    :try_start_c
    const-string/jumbo v3, "PermissionManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    return v18

    :goto_e
    :try_start_d
    monitor-exit v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    :catch_d
    move-exception v0

    const/16 v18, 0x0

    goto :goto_11

    :catch_e
    move-exception v0

    move/from16 v2, p2

    move-object/from16 v15, p5

    const/16 v18, 0x0

    :goto_f
    :try_start_f
    const-string/jumbo v3, "PermissionManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v18

    :goto_10
    move/from16 v2, p3

    move v3, v13

    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_6
    const/16 v18, 0x0

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    filled-new-array/range {p3 .. p3}, [I

    move-result-object v2

    const/4 v9, 0x1

    invoke-virtual {v1, v2, v9}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    return v0

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "PermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed with Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v1}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v18
.end method

.method public final updatePermissions(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$1;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v1, p2

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-nez v3, :cond_0

    move v5, v8

    goto :goto_2

    :cond_0
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v2

    :try_start_0
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/Permission;

    iget-object v10, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v10, v10, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v5, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->hasPermission(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :cond_2
    :goto_1
    const-string/jumbo v5, "PermissionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Removing permission tree "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " that used to be declared by "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    :cond_3
    move v5, v8

    goto :goto_0

    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    :goto_2
    if-nez v3, :cond_5

    move-object/from16 v9, p5

    move v10, v8

    move/from16 v16, v10

    goto/16 :goto_b

    :cond_5
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v4

    :try_start_1
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/permission/Permission;

    iget v12, v11, Lcom/android/server/pm/permission/Permission;->mType:I

    if-ne v12, v7, :cond_6

    move v12, v8

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    :goto_4
    if-eqz v12, :cond_7

    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v12, v12, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v12

    iget v13, v11, Lcom/android/server/pm/permission/Permission;->mType:I

    if-ne v13, v7, :cond_7

    iget-object v13, v11, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v13, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v13, v12}, Lcom/android/server/pm/permission/Permission;->findPermissionTree(Ljava/lang/String;Ljava/util/Collection;)Lcom/android/server/pm/permission/Permission;

    move-result-object v12

    if-eqz v12, :cond_7

    iget-object v13, v11, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v14, v12, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v14, v13, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-boolean v8, v11, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    iget v12, v12, Lcom/android/server/pm/permission/Permission;->mUid:I

    iput v12, v11, Lcom/android/server/pm/permission/Permission;->mUid:I

    goto :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_f

    :cond_7
    :goto_5
    iget-object v12, v11, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v12, v12, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_3

    :cond_8
    if-nez v6, :cond_9

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    :cond_9
    invoke-virtual {v6, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move v10, v8

    goto :goto_3

    :cond_a
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v6, :cond_12

    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/Permission;

    if-eqz v2, :cond_d

    iget-object v11, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v2, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->hasPermission(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b

    goto :goto_8

    :cond_b
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v12, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v12, v12, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v13, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v13, v13, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v14, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v13

    if-eqz v11, :cond_c

    if-eqz v12, :cond_c

    :try_start_2
    monitor-exit v13

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_c
    const-string/jumbo v11, "PermissionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Removing dangling permission: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " from package "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v6, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v11, v11, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v13

    goto :goto_6

    :goto_7
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_d
    :goto_8
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v12, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v12, v12, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    check-cast v11, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v11

    invoke-interface {v11, v12}, Lcom/android/server/pm/Computer;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v11

    if-eqz v11, :cond_10

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    if-eqz v12, :cond_10

    iget-object v12, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v12, v12, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPermissions()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_e

    iget-object v14, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v14, v14, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v13

    if-ne v14, v13, :cond_e

    :cond_f
    move-object/from16 v9, p5

    move/from16 v16, v8

    goto :goto_a

    :cond_10
    const-string/jumbo v11, "PermissionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Removing permission "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v13, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " that used to be declared by "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v13, v13, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v11

    if-eqz v11, :cond_11

    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v11}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v12, :cond_f

    aget v14, v11, v13

    iget-object v15, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move/from16 v16, v8

    new-instance v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda16;

    move-object/from16 v9, p5

    invoke-direct {v8, v0, v6, v14, v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$1;)V

    invoke-virtual {v15, v8}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v16

    goto :goto_9

    :cond_11
    move-object/from16 v9, p5

    move/from16 v16, v8

    iget-object v8, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v11, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;

    invoke-direct {v11, v0, v6, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Ljava/lang/Object;I)V

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    :goto_a
    iget-object v8, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v11, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v8

    :try_start_3
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v6, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v11, v11, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v8

    move/from16 v8, v16

    goto/16 :goto_6

    :catchall_3
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_12
    move-object/from16 v9, p5

    move/from16 v16, v8

    :goto_b
    or-int v2, v5, v10

    if-eqz v2, :cond_13

    const-string/jumbo v2, "PermissionManager"

    const-string/jumbo v4, "Permission ownership changed. Updating all permissions."

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v2, p4, 0x1

    move v8, v2

    goto :goto_c

    :cond_13
    move/from16 v8, p4

    :goto_c
    const-string/jumbo v2, "restorePermissionState"

    const-wide/32 v10, 0x40000

    invoke-static {v10, v11, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    and-int/lit8 v2, v8, 0x1

    if-eqz v2, :cond_15

    and-int/lit8 v2, v8, 0x4

    if-eqz v2, :cond_14

    move/from16 v3, v16

    goto :goto_d

    :cond_14
    const/4 v3, 0x0

    :goto_d
    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda9;

    move-object/from16 v5, p1

    move-object/from16 v4, p3

    move-object v2, v1

    move-object v6, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;)V

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    :cond_15
    if-eqz p2, :cond_17

    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getVolumeUuidForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    and-int/lit8 v1, v8, 0x2

    if-eqz v1, :cond_16

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move/from16 v2, v16

    goto :goto_e

    :cond_16
    const/4 v2, 0x0

    :goto_e
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v1, p2

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->restorePermissionState(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;I)V

    :cond_17
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_f
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :goto_10
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method

.method public final writeLegacyPermissionStateTEMP()V
    .locals 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    iget-object v3, v2, Lcom/android/server/pm/permission/DevicePermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    new-array v4, v3, [I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    iget-object v6, v2, Lcom/android/server/pm/permission/DevicePermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v4, v5

    add-int/2addr v5, v0

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v4, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->forEachPackageSetting(Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v3

    if-nez v1, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/Permission;

    new-instance v6, Lcom/android/server/pm/permission/LegacyPermission;

    iget-object v7, v5, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v5, v5, Lcom/android/server/pm/permission/Permission;->mType:I

    sget-object v8, Llibcore/util/EmptyArray;->INT:[I

    invoke-direct {v6, v7, v5, v0, v8}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-nez v1, :cond_2

    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissions(Ljava/util/List;)V

    goto :goto_3

    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissionTrees(Ljava/util/List;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_3
    return-void
.end method
