.class public final Lcom/android/server/pm/Settings;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;
.implements Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;


# static fields
.field public static final FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field public static final PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;


# instance fields
.field public final mAppIds:Lcom/android/server/pm/AppIdSettingMap;

.field public final mBackupStoppedPackagesFilename:Ljava/io/File;

.field public final mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

.field public final mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

.field public final mCrossProfileIntentResolversSnapshot:Lcom/android/server/utils/SnapshotCache;

.field final mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap;"
        }
    .end annotation
.end field

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mHandler:Landroid/os/Handler;

.field public final mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

.field public final mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

.field public final mKernelMappingFilename:Ljava/io/File;

.field public final mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

.field public final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

.field public final mObserver:Lcom/android/server/pm/Settings$1;

.field public final mPackageListFilename:Ljava/io/File;

.field public final mPackageRestrictionsLock:Ljava/lang/Object;

.field final mPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap;"
        }
    .end annotation
.end field

.field public final mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

.field public final mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

.field public final mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

.field public final mPendingPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mPermissionDataProvider:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

.field public final mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

.field public final mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

.field public final mPersistentPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

.field public final mPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mPreviousSettingsFilename:Ljava/io/File;

.field public final mReadMessages:Ljava/lang/StringBuilder;

.field public final mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

.field public final mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

.field public final mSettingsFilename:Ljava/io/File;

.field public final mSettingsReserveCopyFilename:Ljava/io/File;

.field public final mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mStoppedPackagesFilename:Ljava/io/File;

.field public final mSystemDir:Ljava/io/File;

.field public mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

.field public final mVersion:Lcom/android/server/utils/WatchedArrayMap;

.field public final mWatchable:Lcom/android/server/utils/WatchableImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 51

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    const v0, 0x8000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/high16 v0, 0x40000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    const/high16 v0, 0x100000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v30, "LARGE_HEAP"

    const-string/jumbo v2, "SYSTEM"

    const-string v4, "DEBUGGABLE"

    const-string v6, "HAS_CODE"

    const-string/jumbo v8, "PERSISTENT"

    const-string v10, "FACTORY_TEST"

    const-string v12, "ALLOW_TASK_REPARENTING"

    const-string v14, "ALLOW_CLEAR_USER_DATA"

    const-string/jumbo v16, "UPDATED_SYSTEM_APP"

    const-string/jumbo v18, "TEST_ONLY"

    const-string/jumbo v20, "VM_SAFE_MODE"

    const-string v22, "ALLOW_BACKUP"

    const-string v24, "KILL_AFTER_RESTORE"

    const-string/jumbo v26, "RESTORE_ANY_VERSION"

    const-string v28, "EXTERNAL_STORAGE"

    move-object/from16 v13, v17

    move-object/from16 v9, v19

    move-object/from16 v15, v23

    move-object/from16 v17, v29

    move-object/from16 v19, v35

    move-object/from16 v27, v37

    move-object/from16 v23, v43

    move-object/from16 v29, v0

    filled-new-array/range {v1 .. v30}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v17

    move-object/from16 v19, v9

    move-object/from16 v17, v13

    move-object/from16 v23, v15

    sput-object v0, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x800

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/high16 v4, 0x8000000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/high16 v6, 0x20000000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v6, 0x2000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v8, 0x200

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/high16 v8, 0x80000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    const/high16 v8, 0x200000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    const/high16 v8, 0x40000000  # 2.0f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    const/high16 v8, -0x80000000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    const/high16 v8, 0x1000000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    const-string/jumbo v50, "PRIVATE_FLAG_HAS_FRAGILE_USER_DATA"

    move-object v13, v3

    move-object v3, v2

    const-string/jumbo v2, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE"

    move-object/from16 v31, v7

    move-object v7, v4

    const-string/jumbo v4, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION"

    move-object v15, v11

    move-object v11, v6

    const-string/jumbo v6, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_UNRESIZEABLE"

    const-string v8, "ALLOW_AUDIO_PLAYBACK_CAPTURE"

    const-string/jumbo v10, "PRIVATE_FLAG_REQUEST_LEGACY_EXTERNAL_STORAGE"

    const-string v12, "BACKUP_IN_FOREGROUND"

    const-string v14, "CANT_SAVE_STATE"

    const-string v16, "DEFAULT_TO_DEVICE_PROTECTED_STORAGE"

    const-string v18, "DIRECT_BOOT_AWARE"

    const-string v20, "HAS_DOMAIN_URLS"

    const-string v22, "HIDDEN"

    const-string v24, "EPHEMERAL"

    const-string v26, "ISOLATED_SPLIT_LOADING"

    const-string/jumbo v28, "OEM"

    const-string/jumbo v30, "PARTIALLY_DIRECT_BOOT_AWARE"

    const-string/jumbo v32, "PRIVILEGED"

    const-string/jumbo v34, "REQUIRED_FOR_SYSTEM_USER"

    const-string/jumbo v36, "STATIC_SHARED_LIBRARY"

    const-string/jumbo v38, "VENDOR"

    const-string/jumbo v40, "PRODUCT"

    const-string/jumbo v42, "SYSTEM_EXT"

    const-string/jumbo v44, "VIRTUAL_PRELOAD"

    const-string/jumbo v46, "ODM"

    const-string/jumbo v48, "PRIVATE_FLAG_ALLOW_NATIVE_HEAP_POINTER_TAGGING"

    move-object/from16 v27, v25

    move-object/from16 v25, v21

    move-object/from16 v21, v1

    move-object v1, v0

    filled-new-array/range {v1 .. v50}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/Settings;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    new-instance v2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    new-instance v3, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v3, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    new-instance v4, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v4, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    new-instance v5, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v5, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    iput-object v5, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    new-instance v6, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v6}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    new-instance v6, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v6}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v7, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v7, Lcom/android/server/pm/Settings$1;

    invoke-direct {v7, p0}, Lcom/android/server/pm/Settings$1;-><init>(Lcom/android/server/pm/Settings;)V

    iput-object v7, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/pm/Settings$1;

    iget-object v7, p1, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v7}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/utils/WatchedArrayMap;

    iput-object v7, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    new-instance v8, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v8}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    iget-object v8, p1, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v8}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/utils/WatchedArrayMap;

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    new-instance v8, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v8}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    iget-object v8, p1, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v8}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/utils/WatchedArraySet;

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    new-instance v8, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v8}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    new-instance v8, Lcom/android/server/pm/KeySetManagerService;

    iget-object v9, p1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {v8, v9, v7}, Lcom/android/server/pm/KeySetManagerService;-><init>(Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/utils/WatchedArrayMap;)V

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    iput-object v7, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v8, p1, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iput-object v7, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    iput-object v7, p0, Lcom/android/server/pm/Settings;->mSettingsReserveCopyFilename:Ljava/io/File;

    iput-object v7, p0, Lcom/android/server/pm/Settings;->mPreviousSettingsFilename:Ljava/io/File;

    iput-object v7, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    iput-object v7, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    iput-object v7, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    iput-object v7, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    iget-object v8, p1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iget-object v8, p1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v0, v8}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V

    iget-object v0, p1, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-static {v2, v0}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;Lcom/android/server/utils/WatchedSparseArray;)V

    iget-object v0, p1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v0}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    iget-object v0, p1, Lcom/android/server/pm/Settings;->mPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedSparseArray;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    iget-object v0, p1, Lcom/android/server/pm/Settings;->mPersistentPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedSparseArray;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    iget-object v0, p1, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolversSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedSparseArray;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolversSnapshot:Lcom/android/server/utils/SnapshotCache;

    iget-object v0, p1, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v4, v0}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V

    iget-object v0, p1, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/pm/AppIdSettingMap;

    invoke-direct {v2, v0}, Lcom/android/server/pm/AppIdSettingMap;-><init>(Lcom/android/server/pm/AppIdSettingMap;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    iget-object v0, p1, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v5, v0}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V

    iget-object v0, p1, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    iget-object v2, v6, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-nez v2, :cond_161

    iget-object v2, v0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    :goto_11b
    if-ge v1, v2, :cond_131

    iget-object v3, v6, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    iget-object v4, v0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    iget-object v5, v0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11b

    :cond_131
    invoke-virtual {v6}, Lcom/android/server/utils/WatchableImpl;->seal()V

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p1, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;Lcom/android/server/utils/WatchedSparseArray;)V

    iget-object v0, p1, Lcom/android/server/pm/Settings;->mPendingPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedArrayList;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    iput-object v7, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    iget-object v0, p1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    iget-object p1, p1, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void

    :cond_161
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "snapshot destination is not empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/permission/persistence/RuntimePermissionsPersistence;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    new-instance v0, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/server/pm/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/Settings$1;-><init>(Lcom/android/server/pm/Settings;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/pm/Settings$1;

    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    new-instance v2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string/jumbo v3, "Settings.mPackages"

    const/4 v4, 0x0

    invoke-direct {v2, v0, v0, v3, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string/jumbo v4, "Settings.mKernelMapping"

    const/4 v5, 0x0

    invoke-direct {v3, v2, v2, v4, v5}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    new-instance v2, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string/jumbo v4, "Settings.mInstallerPackages"

    const/4 v5, 0x0

    invoke-direct {v3, v2, v2, v4, v5}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    new-instance v2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string/jumbo v4, "Settings.mPreferredActivities"

    const/4 v5, 0x0

    invoke-direct {v3, v2, v2, v4, v5}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    new-instance v2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string/jumbo v4, "Settings.mPersistentPreferredActivities"

    const/4 v5, 0x0

    invoke-direct {v3, v2, v2, v4, v5}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    new-instance v2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string/jumbo v4, "Settings.mCrossProfileIntentResolvers"

    const/4 v5, 0x0

    invoke-direct {v3, v2, v2, v4, v5}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolversSnapshot:Lcom/android/server/utils/SnapshotCache;

    new-instance v2, Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {v2, v1}, Lcom/android/server/utils/WatchedArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string/jumbo v3, "Settings.mPendingPackages"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v2, v3, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPendingPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    new-instance v1, Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {v1, v0}, Lcom/android/server/pm/KeySetManagerService;-><init>(Lcom/android/server/utils/WatchedArrayMap;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    iput-object p5, p0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    new-instance p5, Lcom/android/server/pm/AppIdSettingMap;

    invoke-direct {p5}, Lcom/android/server/pm/AppIdSettingMap;-><init>()V

    iput-object p5, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    new-instance p5, Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-direct {p5}, Lcom/android/server/pm/permission/LegacyPermissionSettings;-><init>()V

    iput-object p5, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    new-instance p5, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    new-instance p6, Lcom/android/server/pm/Settings$3;

    invoke-direct {p6, p0}, Lcom/android/server/pm/Settings$3;-><init>(Lcom/android/server/pm/Settings;)V

    invoke-direct {p5, p2, p6}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;-><init>(Lcom/android/permission/persistence/RuntimePermissionsPersistence;Lcom/android/server/pm/Settings$3;)V

    iput-object p5, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iput-object p3, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    new-instance p2, Ljava/io/File;

    const-string/jumbo p3, "system"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x1fd

    const/4 p5, -0x1

    invoke-static {p1, p3, p5, p5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages.xml.reservecopy"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSettingsReserveCopyFilename:Ljava/io/File;

    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages-backup.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPreviousSettingsFilename:Ljava/io/File;

    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages.list"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    const/16 p3, 0x408

    const/16 p5, 0x1a0

    const/16 p6, 0x3e8

    invoke-static {p1, p5, p6, p3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    new-instance p1, Ljava/io/File;

    const-string p3, "/config/sdcardfs"

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    const/4 p5, 0x0

    if-eqz p3, :cond_154

    goto :goto_155

    :cond_154
    move-object p1, p5

    :goto_155
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages-stopped.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages-stopped-backup.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    iput-object p4, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->registerObservers$1()V

    new-instance p1, Lcom/android/server/pm/Settings$2;

    invoke-direct {p1, p0, p0, p5}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    new-instance v0, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/server/pm/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/Settings$1;-><init>(Lcom/android/server/pm/Settings;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/pm/Settings$1;

    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    new-instance v2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string/jumbo v3, "Settings.mPackages"

    const/4 v4, 0x0

    invoke-direct {v2, v0, v0, v3, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string/jumbo v4, "Settings.mKernelMapping"

    const/4 v5, 0x0

    invoke-direct {v3, v2, v2, v4, v5}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    new-instance v2, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string/jumbo v4, "Settings.mInstallerPackages"

    const/4 v5, 0x0

    invoke-direct {v3, v2, v2, v4, v5}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    new-instance v2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string/jumbo v4, "Settings.mPreferredActivities"

    const/4 v5, 0x0

    invoke-direct {v3, v2, v2, v4, v5}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    new-instance v2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string/jumbo v4, "Settings.mPersistentPreferredActivities"

    const/4 v5, 0x0

    invoke-direct {v3, v2, v2, v4, v5}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    new-instance v2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string/jumbo v4, "Settings.mCrossProfileIntentResolvers"

    const/4 v5, 0x0

    invoke-direct {v3, v2, v2, v4, v5}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolversSnapshot:Lcom/android/server/utils/SnapshotCache;

    new-instance v2, Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {v2, v1}, Lcom/android/server/utils/WatchedArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string/jumbo v3, "Settings.mPendingPackages"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v2, v3, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPendingPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    new-instance v1, Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {v1, v0}, Lcom/android/server/pm/KeySetManagerService;-><init>(Lcom/android/server/utils/WatchedArrayMap;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageManagerTracedLock;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    new-instance p1, Lcom/android/server/pm/AppIdSettingMap;

    invoke-direct {p1}, Lcom/android/server/pm/AppIdSettingMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mSettingsReserveCopyFilename:Ljava/io/File;

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPreviousSettingsFilename:Ljava/io/File;

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->registerObservers$1()V

    new-instance p1, Lcom/android/server/pm/Settings$2;

    invoke-direct {p1, p0, p0, v2}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public static dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .registers 5

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getActivities()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "activities:"

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getServices()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "services:"

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getReceivers()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "receivers:"

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getProviders()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "providers:"

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object p2, p2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getInstrumentations()Ljava/util/List;

    move-result-object p2

    const-string/jumbo v0, "instrumentations:"

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7

    invoke-static {p3}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2c

    :cond_7
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p2, 0x0

    :goto_e
    if-ge p2, v0, :cond_2c

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_e

    :cond_2c
    :goto_2c
    return-void
.end method

.method public static dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V
    .registers 5

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p1, "gids="

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p1, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_32

    const/4 v0, 0x0

    :goto_20
    array-length v1, p2

    if-ge v0, v1, :cond_32

    if-lez v0, :cond_2a

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    aget v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_32
    const/16 p2, 0x5d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3e
    return-void
.end method

.method public static dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V
    .registers 16

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_d
    if-ge v3, v1, :cond_41

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v4}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    iget-boolean v6, v5, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    if-eqz v6, :cond_32

    goto :goto_21

    :cond_32
    iget-object v5, v5, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    if-eqz p2, :cond_3d

    invoke-virtual {p2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    goto :goto_21

    :cond_3d
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_41
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v0, v2

    :cond_46
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/pm/permission/LegacyPermissionState;->checkUserId(I)V

    iget-object v3, p3, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    const/4 v4, 0x0

    if-nez v3, :cond_65

    move-object v3, v4

    goto :goto_6d

    :cond_65
    iget-object v3, v3, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    :goto_6d
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :goto_72
    if-ge v6, v5, :cond_46

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    if-nez v7, :cond_82

    move-object v8, v3

    goto :goto_a0

    :cond_82
    invoke-static {v7}, Lcom/android/server/pm/permission/LegacyPermissionState;->checkUserId(I)V

    iget-object v8, p3, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    if-nez v8, :cond_91

    move-object v8, v4

    goto :goto_99

    :cond_91
    iget-object v8, v8, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    :goto_99
    invoke-static {v8, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a0

    goto :goto_72

    :cond_a0
    :goto_a0
    const/4 v9, 0x1

    if-nez v0, :cond_ad

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "install permissions:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v9

    :cond_ad
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "  "

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, ": granted="

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v8, :cond_c4

    iget-boolean v10, v8, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    if-eqz v10, :cond_c4

    goto :goto_c5

    :cond_c4
    move v9, v2

    :goto_c5
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Z)V

    if-eqz v8, :cond_cd

    iget v8, v8, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    goto :goto_ce

    :cond_cd
    move v8, v2

    :goto_ce
    invoke-static {v8}, Lcom/android/server/pm/Settings;->permissionFlagsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v7, :cond_db

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    goto :goto_72

    :cond_db
    const-string v8, ", userId="

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_72

    :cond_e4
    return-void
.end method

.method public static dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/Collection;Z)V
    .registers 7

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    iget-boolean v1, v1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    if-eqz v1, :cond_4

    goto :goto_17

    :cond_15
    if-eqz p4, :cond_5f

    :goto_17
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p4, "runtime permissions:"

    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_24
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    iget-boolean v0, p4, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    if-nez v0, :cond_35

    goto :goto_24

    :cond_35
    iget-object v0, p4, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    if-eqz p2, :cond_40

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    goto :goto_24

    :cond_40
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ": granted="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p4, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Z)V

    iget p4, p4, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    invoke-static {p4}, Lcom/android/server/pm/Settings;->permissionFlagsToString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_24

    :cond_5f
    return-void
.end method

.method public static getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x1

    :try_start_5
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_9} :catch_12
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseArchiveState(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/pkg/ArchiveState;
    .registers 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-string/jumbo v2, "installer-title"

    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "archive-time"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v6

    :cond_1c
    :goto_1c
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x1

    const-string/jumbo v9, "PackageSettings"

    if-eq v7, v8, :cond_bf

    const/4 v10, 0x3

    if-ne v7, v10, :cond_2f

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v6, :cond_bf

    :cond_2f
    if-eq v7, v10, :cond_1c

    const/4 v8, 0x4

    if-ne v7, v8, :cond_35

    goto :goto_1c

    :cond_35
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "archive-activity-info"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    const-string/jumbo v7, "activity-title"

    invoke-interface {v0, v1, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v7, "original-component-name"

    invoke-interface {v0, v1, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v7, "icon-path"

    invoke-interface {v0, v1, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_5c

    move-object v7, v1

    goto :goto_62

    :cond_5c
    new-array v10, v8, [Ljava/lang/String;

    invoke-static {v7, v10}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    :goto_62
    const-string/jumbo v10, "monochrome-icon-path"

    invoke-interface {v0, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_6d

    move-object v8, v1

    goto :goto_73

    :cond_6d
    new-array v8, v8, [Ljava/lang/String;

    invoke-static {v10, v8}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v8

    :goto_73
    if-eqz v12, :cond_a1

    if-eqz v14, :cond_a1

    if-nez v7, :cond_7a

    goto :goto_a1

    :cond_7a
    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    if-nez v10, :cond_97

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Incorrect component name: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from the attributes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_97
    new-instance v9, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    invoke-direct {v9, v12, v10, v7, v8}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c

    :cond_a1
    :goto_a1
    const-string/jumbo v13, "original-component-name"

    const-string/jumbo v15, "icon-path"

    const-string/jumbo v10, "archive-activity-info"

    const-string/jumbo v11, "activity-title"

    move-object/from16 v16, v7

    filled-new-array/range {v10 .. v16}, [Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "Missing attributes in tag %s. %s: %s, %s: %s, %s: %s"

    invoke-static {v8, v7}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    :cond_bf
    if-nez v2, :cond_c8

    const-string/jumbo v0, "parseArchiveState: installerTitle is null"

    invoke-static {v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_c8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v8, :cond_d5

    const-string/jumbo v0, "parseArchiveState: activityInfos is empty"

    invoke-static {v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_d5
    new-instance v0, Lcom/android/server/pm/pkg/ArchiveState;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/pm/pkg/ArchiveState;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-object v0
.end method

.method public static permissionFlagsToString(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :cond_1
    :goto_1
    if-eqz p0, :cond_22

    if-nez v0, :cond_b

    const-string v0, ", flags=[ "

    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_b
    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int/2addr v1, v2

    not-int v2, v1

    and-int/2addr p0, v2

    invoke-static {v1}, Landroid/content/pm/PackageManager;->permissionFlagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_22
    if-eqz v0, :cond_2e

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    const-string p0, ""

    return-object p0
.end method

.method public static printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V
    .registers 5

    const-string/jumbo v0, "[ "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_7
    array-length v1, p2

    if-ge v0, v1, :cond_24

    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_21

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p2, v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_21
    add-int/lit8 v0, v0, 0x2

    goto :goto_7

    :cond_24
    const-string/jumbo p1, "]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static readComponentsLPr(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/util/ArraySet;
    .registers 7

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_6
    :goto_6
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3d

    const/4 v4, 0x3

    if-ne v3, v4, :cond_16

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_3d

    :cond_16
    if-eq v3, v4, :cond_6

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1c

    goto :goto_6

    :cond_1c
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "name"

    invoke-interface {p0, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    if-nez v2, :cond_39

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    :cond_39
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_3d
    return-object v2
.end method

.method public static readDefaultApps(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 7

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_6
    :goto_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_58

    const/4 v4, 0x3

    if-ne v3, v4, :cond_16

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_58

    :cond_16
    if-eq v3, v4, :cond_6

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1c

    goto :goto_6

    :cond_1c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "default-browser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    const-string/jumbo v2, "packageName"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_31
    const-string/jumbo v4, "default-dialer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_6

    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unknown element under default-apps: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    :cond_58
    return-object v2
.end method

.method public static readInstallPermissionsLPr(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V
    .registers 11

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    :cond_4
    :goto_4
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_76

    const/4 v3, 0x3

    if-ne v1, v3, :cond_14

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_76

    :cond_14
    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1a

    goto :goto_4

    :cond_1a
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    const/4 v1, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p0, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "granted"

    invoke-interface {p0, v1, v4, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v4, "flags"

    const/4 v5, 0x0

    invoke-interface {p0, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    new-instance v7, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    invoke-direct {v7, v3, v1, v5, v2}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;IZZ)V

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v7, v6}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    goto :goto_42

    :cond_59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown element under <permissions>: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_76
    return-void
.end method

.method public static readSuspensionParamsLPr(ILcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/Map$Entry;
    .registers 14

    const/4 v0, 0x0

    const-string/jumbo v1, "suspending-package"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    const-string/jumbo p0, "PackageSettings"

    const-string/jumbo p1, "No suspendingPackage found inside tag suspend-params"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_14
    invoke-static {p0, v1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p0

    const-string v1, "FrameworkPackageUserState"

    const-string/jumbo v2, "quarantined"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    move-object v5, v0

    move-object v6, v5

    :cond_28
    :goto_28
    :try_start_28
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_b8

    const/4 v9, 0x3

    if-ne v7, v9, :cond_3c

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v4, :cond_b8

    goto :goto_3c

    :catch_39
    move-exception p1

    goto/16 :goto_b3

    :cond_3c
    :goto_3c
    if-eq v7, v9, :cond_28

    const/4 v9, 0x4

    if-ne v7, v9, :cond_42

    goto :goto_28

    :cond_42
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x20149871

    const/4 v11, 0x2

    if-eq v9, v10, :cond_71

    const v10, -0x15b69ed

    if-eq v9, v10, :cond_66

    const v10, 0x61017530

    if-eq v9, v10, :cond_5b

    goto :goto_7c

    :cond_5b
    const-string/jumbo v9, "launcher-extras"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7c

    move v7, v11

    goto :goto_7d

    :cond_66
    const-string/jumbo v9, "dialog-info"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7c

    move v7, v3

    goto :goto_7d

    :cond_71
    const-string/jumbo v9, "app-extras"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7c

    move v7, v8

    goto :goto_7d

    :cond_7c
    :goto_7c
    const/4 v7, -0x1

    :goto_7d
    if-eqz v7, :cond_ad

    if-eq v7, v8, :cond_a7

    if-eq v7, v11, :cond_a2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown tag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " in SuspendParams. Ignoring"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_a2
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v6

    goto :goto_28

    :cond_a7
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v5

    goto/16 :goto_28

    :cond_ad
    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v0
    :try_end_b1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_b1} :catch_39

    goto/16 :goto_28

    :goto_b3
    const-string v3, "Exception while trying to parse SuspendParams, some fields may default"

    invoke-static {v1, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b8
    new-instance p1, Lcom/android/server/pm/pkg/SuspendParams;

    invoke-direct {p1, v0, v5, v6, v2}, Lcom/android/server/pm/pkg/SuspendParams;-><init>(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Z)V

    invoke-static {p0, p1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static readUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V
    .registers 10

    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "version"

    const-wide/16 v3, -0x1

    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    const-string/jumbo v4, "optional"

    const/4 v5, 0x1

    invoke-interface {p0, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v1, :cond_77

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-ltz v4, :cond_77

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    const-class v6, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ne v4, v6, :cond_5d

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v4

    aput-wide v2, v4, v1

    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesOptional()[Z

    move-result-object v2

    aput-boolean v0, v2, v1

    iput-object v2, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_77

    :cond_5d
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v1

    invoke-static {v1, v2, v3, v5}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesOptional()[Z

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->appendBooleanDuplicatesAllowed([ZZ)[Z

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_77
    :goto_77
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public static readUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V
    .registers 8

    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "version"

    const-wide/16 v3, -0x1

    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    if-eqz v1, :cond_58

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_58

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const-class v4, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ne v0, v4, :cond_4a

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibrariesVersions()[J

    move-result-object v1

    aput-wide v2, v1, v0

    iput-object v1, p1, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_58

    :cond_4a
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibrariesVersions()[J

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_58
    :goto_58
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public static removeFilters(Lcom/android/server/pm/PreferredIntentResolver;Ljava/util/List;)V
    .registers 5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1a

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PreferredActivity;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    const-string/jumbo v2, "Removing preference<replace>"

    invoke-static {v1, v2}, Lcom/android/server/pm/PreferredActivityLog;->logPreferenceChange(Lcom/android/server/pm/PreferredActivity;Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1a
    return-void
.end method

.method public static restorePackages(Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)Ljava/io/FileInputStream;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_60

    iget v1, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPackages:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_9

    goto :goto_60

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getLatestBackupItemDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_24

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "packages.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_39

    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "!@Invalid file or not exists in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PmBackupController"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    :goto_39
    if-eqz v2, :cond_60

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_60

    const-string/jumbo v0, "Restoring "

    invoke-static {v2, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPackages:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPackages:I

    const-string/jumbo v3, "reboot_cnt_by_packages"

    invoke-virtual {p0, v0, v3, v1}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->putBackupConfigInt(ILjava/lang/String;Z)V

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object p0

    :cond_60
    :goto_60
    return-object v0
.end method

.method public static restorePackagesState(Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;I)Ljava/io/FileInputStream;
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_6e

    iget v1, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPackages:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_9

    goto :goto_6e

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getLatestBackupItemDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2a

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "users/"

    const-string v4, "/package-restrictions.xml"

    invoke-static {p1, v3, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_47

    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "!@Invalid dir or not exists in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for user "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "PmBackupController"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    :goto_47
    if-eqz v2, :cond_6e

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6e

    const-string/jumbo p1, "Restoring "

    invoke-static {v2, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v0, 0x4

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPackages:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPackages:I

    const-string/jumbo v1, "reboot_cnt_by_packages"

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->putBackupConfigInt(ILjava/lang/String;Z)V

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object p0

    :cond_6e
    :goto_6e
    return-object v0
.end method

.method public static writeArchiveStateLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/pkg/ArchiveState;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    const-string/jumbo v1, "archive-state"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "installer-title"

    iget-object v3, p1, Lcom/android/server/pm/pkg/ArchiveState;->mInstallerTitle:Ljava/lang/String;

    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "archive-time"

    iget-wide v3, p1, Lcom/android/server/pm/pkg/ArchiveState;->mArchiveTimeMillis:J

    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p1, p1, Lcom/android/server/pm/pkg/ArchiveState;->mActivityInfos:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v2, :cond_6f

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    const-string/jumbo v5, "archive-activity-info"

    invoke-interface {p0, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, v4, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mTitle:Ljava/lang/String;

    const-string/jumbo v7, "activity-title"

    invoke-interface {p0, v0, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, v4, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mOriginalComponentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "original-component-name"

    invoke-interface {p0, v0, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, v4, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mIconBitmap:Ljava/nio/file/Path;

    if-eqz v6, :cond_59

    invoke-interface {v6}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "icon-path"

    invoke-interface {p0, v0, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_59
    iget-object v4, v4, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mMonochromeIconBitmap:Ljava/nio/file/Path;

    if-eqz v4, :cond_6b

    invoke-interface {v4}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "monochrome-icon-path"

    invoke-interface {p0, v0, v6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6b
    invoke-interface {p0, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_23

    :cond_6f
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeDefaultApps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    const-string/jumbo v1, "default-apps"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string/jumbo v2, "default-browser"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "packageName"

    invoke-interface {p0, v0, v3, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1c
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeDisabledSysPackageLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .registers 7

    const/4 v0, 0x0

    const-string/jumbo v1, "updated-package"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    if-eqz v2, :cond_19

    const-string/jumbo v3, "realName"

    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_19
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    const-string/jumbo v3, "codePath"

    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, p1, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    const-string/jumbo v4, "ft"

    invoke-interface {p0, v0, v4, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, p1, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    const-string/jumbo v4, "ut"

    invoke-interface {p0, v0, v4, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, p1, Lcom/android/server/pm/PackageSetting;->versionCode:J

    const-string/jumbo v4, "version"

    invoke-interface {p0, v0, v4, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, p1, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    const-string/jumbo v3, "targetSdkVersion"

    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    if-eqz v2, :cond_4b

    const-string/jumbo v3, "restrictUpdateHash"

    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4b
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result v2

    const-string/jumbo v3, "scannedAsStoppedSystemApp"

    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    if-eqz v2, :cond_61

    const-string/jumbo v3, "nativeLibraryPath"

    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_61
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    if-eqz v2, :cond_6b

    const-string/jumbo v3, "primaryCpuAbi"

    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6b
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    if-eqz v2, :cond_75

    const-string/jumbo v3, "secondaryCpuAbi"

    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_75
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    if-eqz v2, :cond_7f

    const-string/jumbo v3, "cpuAbiOverride"

    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7f
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v2

    if-nez v2, :cond_8e

    iget v2, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    const-string/jumbo v3, "userId"

    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_96

    :cond_8e
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    const-string/jumbo v3, "sharedUserId"

    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :goto_96
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    const-string/jumbo v3, "loadingProgress"

    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, p1, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    const-string/jumbo v4, "loadingCompletedTime"

    invoke-interface {p0, v0, v4, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    if-eqz v2, :cond_b0

    const-string/jumbo v3, "appMetadataFilePath"

    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b0
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    const-string/jumbo v3, "appMetadataSource"

    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesOptional()[Z

    move-result-object v4

    invoke-static {p0, v2, v3, v4}, Lcom/android/server/pm/Settings;->writeUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J[Z)V

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibrariesVersions()[J

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J)V

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeIntToFile(Ljava/io/File;I)V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    const-string v0, "Couldn\'t write "

    const-string v1, " to "

    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PackageSettings"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static writePackageLPr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/ArrayList;Lcom/android/server/pm/PackageSetting;)V
    .registers 14

    const/4 v0, 0x0

    const-string/jumbo v1, "package"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    if-eqz v2, :cond_19

    const-string/jumbo v4, "realName"

    invoke-interface {p0, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_19
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    const-string/jumbo v4, "codePath"

    invoke-interface {p0, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    if-eqz v2, :cond_2b

    const-string/jumbo v4, "nativeLibraryPath"

    invoke-interface {p0, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2b
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    if-eqz v2, :cond_35

    const-string/jumbo v4, "primaryCpuAbi"

    invoke-interface {p0, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_35
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    if-eqz v2, :cond_3f

    const-string/jumbo v4, "secondaryCpuAbi"

    invoke-interface {p0, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3f
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    if-eqz v2, :cond_49

    const-string/jumbo v4, "cpuAbiOverride"

    invoke-interface {p0, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_49
    iget v2, p2, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    const-string/jumbo v4, "publicFlags"

    invoke-interface {p0, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, p2, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    const-string/jumbo v4, "privateFlags"

    invoke-interface {p0, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v4, p2, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    const-string/jumbo v2, "ft"

    invoke-interface {p0, v0, v2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v4, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    const-string/jumbo v2, "ut"

    invoke-interface {p0, v0, v2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v4, p2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    const-string/jumbo v2, "version"

    invoke-interface {p0, v0, v2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget v4, p2, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    const-string/jumbo v5, "targetSdkVersion"

    invoke-interface {p0, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    if-eqz v4, :cond_83

    const-string/jumbo v5, "restrictUpdateHash"

    invoke-interface {p0, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;

    :cond_83
    const/16 v4, 0x8

    invoke-virtual {p2, v4}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result v4

    const-string/jumbo v5, "scannedAsStoppedSystemApp"

    invoke-interface {p0, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_b3

    iget v4, p2, Lcom/android/server/pm/PackageSetting;->mAppId:I

    const-string/jumbo v7, "userId"

    invoke-interface {p0, v0, v7, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v4, :cond_ab

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isSdkLibrary()Z

    move-result v4

    if-eqz v4, :cond_ab

    move v4, v5

    goto :goto_ac

    :cond_ab
    move v4, v6

    :goto_ac
    const-string/jumbo v7, "isSdkLibrary"

    invoke-interface {p0, v0, v7, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_bb

    :cond_b3
    iget v4, p2, Lcom/android/server/pm/PackageSetting;->mAppId:I

    const-string/jumbo v7, "sharedUserId"

    invoke-interface {p0, v0, v7, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :goto_bb
    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v7, v4, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    if-eqz v7, :cond_c7

    const-string/jumbo v8, "installer"

    invoke-interface {p0, v0, v8, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c7
    const/4 v7, -0x1

    iget v8, v4, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    if-eq v8, v7, :cond_d2

    const-string/jumbo v9, "installerUid"

    invoke-interface {p0, v0, v9, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d2
    iget-object v8, v4, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    if-eqz v8, :cond_dc

    const-string/jumbo v9, "updateOwner"

    invoke-interface {p0, v0, v9, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_dc
    iget-object v8, v4, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    if-eqz v8, :cond_e6

    const-string/jumbo v9, "installerAttributionTag"

    invoke-interface {p0, v0, v9, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e6
    const-string/jumbo v8, "packageSource"

    iget v9, v4, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    invoke-interface {p0, v0, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v8, v4, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    if-eqz v8, :cond_f8

    const-string/jumbo v8, "isOrphaned"

    invoke-interface {p0, v0, v8, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f8
    iget-object v8, v4, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    if-eqz v8, :cond_102

    const-string/jumbo v9, "installInitiator"

    invoke-interface {p0, v0, v9, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_102
    iget-boolean v8, v4, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    if-eqz v8, :cond_10c

    const-string/jumbo v8, "installInitiatorUninstalled"

    invoke-interface {p0, v0, v8, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_10c
    iget-object v8, v4, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    if-eqz v8, :cond_116

    const-string/jumbo v9, "installOriginator"

    invoke-interface {p0, v0, v9, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_116
    iget-object v8, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v8, :cond_120

    const-string/jumbo v9, "volumeUuid"

    invoke-interface {p0, v0, v9, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_120
    iget v8, p2, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    if-eq v8, v7, :cond_12a

    const-string/jumbo v7, "categoryHint"

    invoke-interface {p0, v0, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_12a
    const/4 v7, 0x2

    invoke-virtual {p2, v7}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_137

    const-string/jumbo v7, "updateAvailable"

    invoke-interface {p0, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_137
    const/4 v7, 0x4

    invoke-virtual {p2, v7}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_144

    const-string/jumbo v7, "forceQueryable"

    invoke-interface {p0, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_144
    const/16 v7, 0x10

    invoke-virtual {p2, v7}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_152

    const-string/jumbo v7, "pendingRestore"

    invoke-interface {p0, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_152
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_160

    const-string/jumbo v7, "debuggable"

    invoke-interface {p0, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_160
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->isLoading()Z

    move-result v7

    if-eqz v7, :cond_16c

    const-string/jumbo v7, "isLoading"

    invoke-interface {p0, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_16c
    iget v5, p2, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    if-eqz v5, :cond_176

    const-string/jumbo v7, "baseRevisionCode"

    invoke-interface {p0, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_176
    iget v5, p2, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    if-eqz v5, :cond_180

    const-string/jumbo v7, "pageSizeCompat"

    invoke-interface {p0, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_180
    iget v5, p2, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    const-string/jumbo v7, "loadingProgress"

    invoke-interface {p0, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v7, p2, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    const-string/jumbo v5, "loadingCompletedTime"

    invoke-interface {p0, v0, v5, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, p2, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "domainSetId"

    invoke-interface {p0, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, p2, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    if-eqz v5, :cond_1a6

    const-string/jumbo v7, "appMetadataFilePath"

    invoke-interface {p0, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1a6
    iget v5, p2, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    const-string/jumbo v7, "appMetadataSource"

    invoke-interface {p0, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesOptional()[Z

    move-result-object v8

    invoke-static {p0, v5, v7, v8}, Lcom/android/server/pm/Settings;->writeUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J[Z)V

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibrariesVersions()[J

    move-result-object v7

    invoke-static {p0, v5, v7}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J)V

    iget-object v5, p2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string/jumbo v7, "sigs"

    invoke-virtual {v5, p0, v7, p1}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    if-eqz v4, :cond_1da

    const-string/jumbo v5, "install-initiator-sigs"

    invoke-virtual {v4, p0, v5, p1}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1da
    iget-object p1, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    const-string/jumbo v4, "proper-signing-keyset"

    invoke-interface {p0, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v7, p1, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    const-string/jumbo p1, "identifier"

    invoke-interface {p0, v0, p1, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    iget-object v4, v4, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    if-eqz v4, :cond_20b

    array-length v5, v4

    if-lez v5, :cond_20b

    array-length v5, v4

    move v7, v6

    :goto_1f8
    if-ge v7, v5, :cond_20b

    aget-wide v8, v4, v7

    const-string/jumbo v10, "upgrade-keyset"

    invoke-interface {p0, v0, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, p1, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1f8

    :cond_20b
    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    iget-object v4, v4, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_217
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_246

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    const-string/jumbo v7, "defined-keyset"

    invoke-interface {p0, v0, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v9, "alias"

    invoke-interface {p0, v0, v9, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {p0, v0, p1, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_217

    :cond_246
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getMimeGroups()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_24d

    goto :goto_294

    :cond_24d
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_255
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_294

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v7, "mime-group"

    invoke-interface {p0, v0, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_274
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_290

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v9, "mime-type"

    invoke-interface {p0, v0, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "value"

    invoke-interface {p0, v0, v10, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_274

    :cond_290
    invoke-interface {p0, v0, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_255

    :cond_294
    :goto_294
    iget-object p1, p2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-nez p1, :cond_2ca

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSplitNames()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSplitRevisionCodes()[I

    move-result-object p2

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2ca

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v4

    if-nez v4, :cond_2ca

    array-length v4, p1

    array-length v5, p2

    if-eq v4, v5, :cond_2b1

    goto :goto_2ca

    :cond_2b1
    array-length v4, p1

    :goto_2b2
    if-ge v6, v4, :cond_2ca

    aget-object v5, p1, v6

    aget v7, p2, v6

    const-string/jumbo v8, "split-version"

    invoke-interface {p0, v0, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, v2, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2b2

    :cond_2ca
    :goto_2ca
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J[Z)V
    .registers 13

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-nez v0, :cond_3a

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_11

    goto :goto_3a

    :cond_11
    array-length v0, p1

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_3a

    aget-object v2, p1, v1

    aget-wide v3, p2, v1

    aget-boolean v5, p3, v1

    const/4 v6, 0x0

    const-string/jumbo v7, "uses-sdk-lib"

    invoke-interface {p0, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "name"

    invoke-interface {p0, v6, v8, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "version"

    invoke-interface {p0, v6, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "optional"

    invoke-interface {p0, v6, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_3a
    :goto_3a
    return-void
.end method

.method public static writeUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J)V
    .registers 11

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-nez v0, :cond_32

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_11

    goto :goto_32

    :cond_11
    array-length v0, p1

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_32

    aget-object v2, p1, v1

    aget-wide v3, p2, v1

    const/4 v5, 0x0

    const-string/jumbo v6, "uses-static-lib"

    invoke-interface {p0, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    invoke-interface {p0, v5, v7, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "version"

    invoke-interface {p0, v5, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_32
    :goto_32
    return-void
.end method


# virtual methods
.method public final addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V
    .registers 3

    iget-object v0, p1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v0, p1, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    if-eqz p1, :cond_17

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    :cond_17
    return-void
.end method

.method public final addOemSharedUserLPw(ILjava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "android.uid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x6

    if-nez v0, :cond_16

    const-string p0, "Failed to add oem defined shared user because of invalid name: "

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    return-void

    :cond_16
    const/16 v0, 0xb54

    if-lt p1, v0, :cond_26

    const/16 v0, 0xbb7

    if-le p1, v0, :cond_1f

    goto :goto_26

    :cond_1f
    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    return-void

    :cond_26
    :goto_26
    const-string p0, "Failed to add oem defined shared user because of invalid uid: "

    invoke-static {p1, p0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    return-void
.end method

.method public final addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IIILjava/util/UUID;)Lcom/android/server/pm/PackageSetting;
    .registers 17

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    iget p0, v0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    if-ne p0, p4, :cond_12

    return-object v0

    :cond_12
    const-string p0, "Adding duplicate package, keeping first: "

    invoke-static {p0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    return-object v1

    :cond_1f
    new-instance v2, Lcom/android/server/pm/PackageSetting;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IILjava/util/UUID;)V

    iput p4, v2, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget-object p2, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p2, p4, v2, p1}, Lcom/android/server/pm/AppIdSettingMap;->registerExistingAppId(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3e

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_3e
    return-object v1
.end method

.method public addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_82

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    const-string v1, "; I am not changing its files so it will probably fail!"

    const-string/jumbo v2, "Package "

    const/4 v3, 0x6

    if-eqz v0, :cond_41

    if-eq v0, p2, :cond_41

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was user "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but is now "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_75

    :cond_41
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    if-eqz v0, :cond_75

    iget v4, p2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    if-eq v0, v4, :cond_75

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was app id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but is now user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with app id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-static {v2, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :cond_75
    :goto_75
    invoke-virtual {p2, p1}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    iget v0, p2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    iget v0, p2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageSetting;->setAppId(I)V

    :cond_82
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    if-nez p2, :cond_96

    if-eqz v0, :cond_9f

    if-eq v0, p1, :cond_9f

    iget p2, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/AppIdSettingMap;->replaceSetting(ILcom/android/server/pm/SettingBase;)V

    return-void

    :cond_96
    if-eqz v0, :cond_9f

    if-eq v0, p2, :cond_9f

    iget p1, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/AppIdSettingMap;->replaceSetting(ILcom/android/server/pm/SettingBase;)V

    :cond_9f
    return-void
.end method

.method public final addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    iget p0, v1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    if-ne p0, p1, :cond_12

    return-object v1

    :cond_12
    const-string p0, "Adding duplicate shared user, keeping first: "

    invoke-static {p0, p4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    return-object v2

    :cond_1f
    new-instance v1, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v1, p2, p3, p4}, Lcom/android/server/pm/SharedUserSetting;-><init>(IILjava/lang/String;)V

    iput p1, v1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/pm/AppIdSettingMap;->registerExistingAppId(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    invoke-virtual {v0, p4, v1}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_32
    return-object v2
.end method

.method public final applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V
    .registers 29

    move/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    int-to-long v3, v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v6, p9

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1f

    const/4 v3, 0x0

    goto :goto_23

    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_23
    const/4 v4, 0x1

    const-string/jumbo v5, "PackageSettings"

    if-ge v3, v4, :cond_48

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No potential matches found for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " while setting preferred "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_48
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v11, v6, [Landroid/content/ComponentName;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_53
    if-ge v12, v3, :cond_ac

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v2, v17

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move/from16 v17, v4

    new-instance v4, Landroid/content/ComponentName;

    iget-object v13, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v18, v3

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v13, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v11, v12

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget v15, v2, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v16, v17

    goto :goto_a5

    :cond_91
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_a5

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget v2, v2, Landroid/content/pm/ResolveInfo;->match:I

    if-ltz v2, :cond_a5

    aget-object v14, v11, v12

    :cond_a5
    :goto_a5
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v17

    move/from16 v3, v18

    goto :goto_53

    :cond_ac
    if-eqz v14, :cond_b1

    if-lez v15, :cond_b1

    const/4 v14, 0x0

    :cond_b1
    if-eqz v16, :cond_171

    if-nez v14, :cond_171

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c7

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    :cond_c7
    invoke-virtual {v1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_e5

    invoke-virtual {v1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_d5

    :cond_e5
    const/high16 v2, 0x10000

    and-int/2addr v2, v7

    if-eqz v2, :cond_f0

    const-string/jumbo v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    :cond_f0
    if-eqz v8, :cond_f5

    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    :cond_f5
    if-eqz p6, :cond_107

    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    invoke-virtual {v0, v0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    :cond_107
    if-eqz v9, :cond_111

    iget-object v2, v0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    invoke-virtual {v0, v0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    :cond_111
    if-eqz v10, :cond_11b

    iget-object v2, v0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    invoke-virtual {v0, v0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    :cond_11b
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_152

    :try_start_121
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_128
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_121 .. :try_end_128} :catch_12f

    move-object/from16 v2, p0

    move-object/from16 v1, p4

    :goto_12c
    move/from16 v6, p9

    goto :goto_155

    :catch_12f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Malformed mimetype "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14f
    move-object/from16 v2, p0

    goto :goto_12c

    :cond_152
    move-object/from16 v1, p4

    goto :goto_14f

    :goto_155
    invoke-virtual {v2, v6}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/pm/WatchedIntentResolver;->findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_162

    invoke-static {v2, v3}, Lcom/android/server/pm/Settings;->removeFilters(Lcom/android/server/pm/PreferredIntentResolver;Ljava/util/List;)V

    :cond_162
    new-instance v7, Lcom/android/server/pm/PreferredActivity;

    const/4 v12, 0x1

    move-object v8, v0

    move-object v10, v11

    move v9, v15

    move-object v11, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v7}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;)V

    return-void

    :cond_171
    move-object v10, v11

    if-nez v14, :cond_1ae

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No component "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " found setting preferred "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; possible matches are "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_191
    if-ge v2, v6, :cond_1a6

    if-lez v2, :cond_19a

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19a
    aget-object v1, v10, v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_191

    :cond_1a6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1ae
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Not setting preferred "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; found third party match "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .registers 26

    move-object/from16 v0, p2

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0xc0000

    move v7, v3

    move v3, v1

    :goto_13
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v4

    if-ge v3, v4, :cond_30

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const/high16 v4, 0xd0000

    move v7, v4

    goto :goto_2d

    :cond_2a
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_30
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v3

    const/4 v14, 0x1

    move v15, v1

    move/from16 v16, v15

    move v4, v14

    :goto_39
    if-ge v15, v3, :cond_14c

    invoke-virtual {v0, v15}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_49

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_49

    move/from16 v16, v14

    :cond_49
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v4

    move v5, v1

    move v6, v14

    :goto_4f
    if-ge v5, v4, :cond_88

    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v6, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-object v8, v6

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p3

    move/from16 v13, p4

    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    add-int/lit8 v5, v18, 0x1

    move v6, v1

    move/from16 v4, v17

    goto :goto_4f

    :cond_88
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v4

    move v5, v1

    :goto_8d
    if-ge v5, v4, :cond_123

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v11

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v8

    move v10, v1

    move v12, v14

    :goto_99
    if-ge v10, v8, :cond_e8

    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v6, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_b0

    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_b0
    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-object v13, v6

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move v13, v10

    const/4 v10, 0x0

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v8

    move/from16 v20, v13

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    move/from16 v13, p4

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    add-int/lit8 v10, v20, 0x1

    move v6, v1

    move v12, v6

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v8, v19

    goto :goto_99

    :cond_e8
    move/from16 v17, v4

    move/from16 v18, v5

    if-eqz v12, :cond_11d

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v4, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_103

    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_103
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    move/from16 v13, p4

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    move v6, v1

    :cond_11d
    add-int/lit8 v5, v18, 0x1

    move/from16 v4, v17

    goto/16 :goto_8d

    :cond_123
    if-eqz v6, :cond_147

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v4, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    move/from16 v13, p4

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    :cond_147
    add-int/lit8 v15, v15, 0x1

    move v4, v1

    goto/16 :goto_39

    :cond_14c
    move v3, v1

    :goto_14d
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v5

    if-ge v3, v5, :cond_1b1

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v16, :cond_196

    new-instance v15, Landroid/net/Uri$Builder;

    invoke-direct {v15}, Landroid/net/Uri$Builder;-><init>()V

    move v4, v1

    :goto_15f
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v5

    if-ge v4, v5, :cond_1ad

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_191

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_191

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v15, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v15}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v6, v5, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    move/from16 v13, p4

    move/from16 v17, v4

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    goto :goto_193

    :cond_191
    move/from16 v17, v4

    :goto_193
    add-int/lit8 v4, v17, 0x1

    goto :goto_15f

    :cond_196
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v6, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    move/from16 v13, p4

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    :cond_1ad
    add-int/lit8 v3, v3, 0x1

    move v4, v1

    goto :goto_14d

    :cond_1b1
    if-eqz v4, :cond_1c3

    move v3, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move/from16 v9, p4

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    :cond_1c3
    return-void
.end method

.method public final applyDefaultPreferredAppsLPw(I)V
    .registers 19

    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "Error reading apps file "

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iget-object v4, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_64

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    iget v8, v5, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    and-int/2addr v6, v8

    if-eqz v6, :cond_18

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v6, :cond_18

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPreferredActivityFilters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_18

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPreferredActivityFilters()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    :goto_3f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_18

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v9

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v5, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-direct {v10, v11, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v9, v10, v2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    :cond_64
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_6b
    if-ge v5, v4, :cond_1b6

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ScanPartition;

    new-instance v8, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v9, "etc/preferred-apps"

    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_91

    :cond_8d
    :goto_8d
    move/from16 v16, v4

    goto/16 :goto_1af

    :cond_91
    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v0

    const-string v9, " cannot be read"

    const-string/jumbo v10, "PackageSettings"

    if-nez v0, :cond_b1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "Directory "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    :cond_b1
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    goto :goto_8d

    :cond_bc
    array-length v12, v11

    const/4 v13, 0x0

    :goto_be
    if-ge v13, v12, :cond_8d

    aget-object v14, v11, v13

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v15, ".xml"

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "Non-xml file "

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " in "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " directory, ignoring"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ed
    move/from16 v16, v4

    goto/16 :goto_1a8

    :cond_f1
    invoke-virtual {v14}, Ljava/io/File;->canRead()Z

    move-result v0

    const-string/jumbo v15, "Preferred apps file "

    if-nez v0, :cond_10d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ed

    :cond_10d
    :try_start_10d
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_112
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10d .. :try_end_112} :catch_185
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_112} :catch_181

    :try_start_112
    invoke-static {v7}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    :goto_116
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v6
    :try_end_11a
    .catchall {:try_start_112 .. :try_end_11a} :catchall_174

    move/from16 v16, v4

    const/4 v4, 0x2

    if-eq v6, v4, :cond_126

    const/4 v4, 0x1

    if-eq v6, v4, :cond_125

    move/from16 v4, v16

    goto :goto_116

    :cond_125
    const/4 v4, 0x2

    :cond_126
    if-eq v6, v4, :cond_14b

    :try_start_128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not have start tag"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13f
    .catchall {:try_start_128 .. :try_end_13f} :catchall_148

    :goto_13f
    :try_start_13f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_142
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13f .. :try_end_142} :catch_146
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_142} :catch_144

    goto/16 :goto_1a8

    :catch_144
    move-exception v0

    goto :goto_189

    :catch_146
    move-exception v0

    goto :goto_199

    :catchall_148
    move-exception v0

    :goto_149
    move-object v4, v0

    goto :goto_178

    :cond_14b
    :try_start_14b
    const-string/jumbo v4, "preferred-activities"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_170

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not start with \'preferred-activities\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13f

    :cond_170
    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/Settings;->readDefaultPreferredActivitiesLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_173
    .catchall {:try_start_14b .. :try_end_173} :catchall_148

    goto :goto_13f

    :catchall_174
    move-exception v0

    move/from16 v16, v4

    goto :goto_149

    :goto_178
    :try_start_178
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_17b
    .catchall {:try_start_178 .. :try_end_17b} :catchall_17c

    goto :goto_180

    :catchall_17c
    move-exception v0

    :try_start_17d
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_180
    throw v4
    :try_end_181
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17d .. :try_end_181} :catch_146
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_181} :catch_144

    :catch_181
    move-exception v0

    move/from16 v16, v4

    goto :goto_189

    :catch_185
    move-exception v0

    move/from16 v16, v4

    goto :goto_199

    :goto_189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a8

    :goto_199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a8
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v16

    const/4 v6, 0x1

    goto/16 :goto_be

    :goto_1af
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v16

    const/4 v6, 0x1

    goto/16 :goto_6b

    :cond_1b6
    return-void
.end method

.method public final checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z
    .registers 4

    if-nez p2, :cond_16

    iget-object p2, p1, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object p2, p2, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_27

    iget-object p2, p1, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object p2, p2, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_27

    :cond_16
    iget-object p2, p1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p2}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_27

    iget p1, p1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    const/4 p0, 0x1

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public final clearPackagePersistentPreferredActivities(ILjava/lang/String;)Z
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_4
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v5, v4, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_61

    iget-object v5, v4, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v4, v4, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    if-eq p1, v5, :cond_1f

    goto :goto_5e

    :cond_1f
    invoke-virtual {v4}, Lcom/android/server/IntentResolver;->filterIterator()Lcom/android/server/IntentResolver$IteratorWrapper;

    move-result-object v5

    :cond_23
    :goto_23
    iget-object v6, v5, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-virtual {v5}, Lcom/android/server/IntentResolver$IteratorWrapper;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PersistentPreferredActivity;

    iget-object v7, v6, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    if-nez v0, :cond_44

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_44
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_48
    if-eqz v0, :cond_5e

    move v3, v1

    :goto_4b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5d

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    :cond_5d
    const/4 v3, 0x1

    :cond_5e
    :goto_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_61
    if-eqz v3, :cond_66

    invoke-virtual {p0, p0}, Lcom/android/server/pm/Settings;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    :cond_66
    return v3
.end method

.method public final clearPersistentPreferredActivity(Landroid/content/IntentFilter;I)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v0, v0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    invoke-virtual {p2}, Lcom/android/server/IntentResolver;->filterIterator()Lcom/android/server/IntentResolver$IteratorWrapper;

    move-result-object v0

    const/4 v1, 0x0

    :cond_f
    :goto_f
    iget-object v2, v0, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {v0}, Lcom/android/server/IntentResolver$IteratorWrapper;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersistentPreferredActivity;

    iget-object v3, v2, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-static {v3, p1}, Landroid/content/IntentFilter;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_f

    if-nez v1, :cond_2c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_2c
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_30
    const/4 p1, 0x0

    if-eqz v1, :cond_46

    :goto_33
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_45

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-virtual {p2, v0}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_33

    :cond_45
    const/4 p1, 0x1

    :cond_46
    if-eqz p1, :cond_4b

    invoke-virtual {p0, p0}, Lcom/android/server/pm/Settings;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    :cond_4b
    return p1
.end method

.method public final createNewUserLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/util/Set;[Ljava/lang/String;)V
    .registers 32

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    new-instance v10, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string/jumbo v3, "PackageSettingsTiming"

    const-wide/32 v4, 0x40000

    invoke-direct {v10, v4, v5, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(JLjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "createNewUser-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v11, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v11}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    const/4 v13, 0x0

    if-nez p4, :cond_2d

    const/4 v14, 0x1

    goto :goto_2e

    :cond_2d
    move v14, v13

    :goto_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v15, v1, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v15

    :try_start_37
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getGuestUsers()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_49

    const/4 v5, -0x1

    goto :goto_51

    :cond_49
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    :goto_51
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v7, v7, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    move v8, v13

    :goto_67
    if-ge v8, v7, :cond_1c7

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v9, v9, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    const/16 v16, 0x1

    iget-object v12, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-nez v12, :cond_8f

    invoke-virtual {v9, v2, v13}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    invoke-virtual {v1, v9}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    move-object/from16 v13, p5

    move-wide/from16 v20, v3

    move/from16 v18, v5

    move-object/from16 v19, v6

    move/from16 v17, v7

    :goto_89
    move v0, v8

    goto/16 :goto_1b8

    :catchall_8c
    move-exception v0

    goto/16 :goto_1f4

    :cond_8f
    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    iget-object v13, v12, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    move/from16 v17, v7

    iget-object v7, v12, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mMultiUserInstallPolicyProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-virtual {v12, v7, v13}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;

    invoke-virtual {v7, v9, v6, v5}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->applyInstallPolicyPackageInternalLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/List;I)V

    invoke-virtual {v9, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v7

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v12

    if-eqz v12, :cond_c1

    iget-object v12, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    move-object/from16 v13, p5

    invoke-static {v13, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c3

    if-eqz v7, :cond_c3

    iget-object v7, v9, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-boolean v7, v7, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    if-nez v7, :cond_c3

    move/from16 v7, v16

    goto :goto_c4

    :cond_c1
    move-object/from16 v13, p5

    :cond_c3
    const/4 v7, 0x0

    :goto_c4
    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v12

    if-eqz v12, :cond_fa

    if-eqz v7, :cond_f4

    iget-object v7, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    sget-object v12, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_f4

    const-string v12, ""

    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_db

    goto :goto_f4

    :cond_db
    sget-object v12, Lcom/android/server/DualAppManagerService;->DUALAPP_DEFAULT_PACKAGES:[Ljava/lang/String;

    move/from16 v18, v5

    move-object/from16 v19, v6

    const/4 v5, 0x0

    :goto_e2
    const/16 v6, 0x1b

    if-ge v5, v6, :cond_f8

    aget-object v6, v12, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f1

    move/from16 v7, v16

    goto :goto_fe

    :cond_f1
    add-int/lit8 v5, v5, 0x1

    goto :goto_e2

    :cond_f4
    :goto_f4
    move/from16 v18, v5

    move-object/from16 v19, v6

    :cond_f8
    const/4 v7, 0x0

    goto :goto_fe

    :cond_fa
    move/from16 v18, v5

    move-object/from16 v19, v6

    :goto_fe
    if-eqz v7, :cond_111

    if-nez v14, :cond_10e

    iget-object v5, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    move-object/from16 v6, p4

    check-cast v6, Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_111

    :cond_10e
    move/from16 v5, v16

    goto :goto_112

    :cond_111
    const/4 v5, 0x0

    :goto_112
    invoke-virtual {v9, v2, v5}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    if-eqz v5, :cond_11a

    invoke-virtual {v9, v2, v3, v4}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(IJ)V

    :cond_11a
    iget-boolean v6, v0, Lcom/android/server/pm/PackageManagerService;->mShouldStopSystemPackagesByDefault:Z

    if-eqz v6, :cond_137

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v6

    if-eqz v6, :cond_137

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->isApex()Z

    move-result v6

    if-nez v6, :cond_137

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mInitialNonStoppedSystemPackages:Ljava/util/Set;

    iget-object v12, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-interface {v6, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_137

    move/from16 v6, v16

    goto :goto_138

    :cond_137
    const/4 v6, 0x0

    :goto_138
    if-eqz v6, :cond_165

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v20

    const/16 v25, 0x0

    const/16 v22, 0x0

    const-wide/32 v23, 0xc0000

    move-object/from16 v21, v12

    invoke-interface/range {v20 .. v25}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_165

    const/4 v6, 0x0

    :cond_165
    invoke-virtual {v9, v2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    const/4 v12, 0x2

    invoke-virtual {v0, v12, v6}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    if-eqz v7, :cond_17a

    if-nez v5, :cond_17a

    move/from16 v0, v16

    goto :goto_17b

    :cond_17a
    const/4 v0, 0x0

    :goto_17b
    invoke-virtual {v9, v0, v2}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    if-eqz v5, :cond_1b2

    iget v0, v9, Lcom/android/server/pm/PackageSetting;->mAppId:I

    if-gez v0, :cond_188

    move-wide/from16 v20, v3

    goto/16 :goto_89

    :cond_188
    move v0, v8

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getSeInfo()Ljava/lang/String;

    move-result-object v8

    iget-object v5, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    iget-object v6, v9, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    iget-object v7, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    move-wide/from16 v20, v3

    iget v4, v9, Lcom/android/server/pm/PackageSetting;->mAppId:I

    iget-object v3, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    move-result v3

    move v9, v5

    move v5, v3

    const/4 v3, 0x1

    invoke-static/range {v2 .. v9}, Lcom/android/server/pm/Installer;->buildCreateAppDataArgs(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/CreateAppDataArgs;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/android/server/pm/Installer$Batch;->createAppData(Landroid/os/CreateAppDataArgs;)Ljava/util/concurrent/CompletableFuture;

    goto :goto_1b8

    :cond_1b2
    move-wide/from16 v20, v3

    move v0, v8

    invoke-virtual {v1, v9}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    :goto_1b8
    add-int/lit8 v8, v0, 0x1

    move-object/from16 v0, p1

    move/from16 v7, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move-wide/from16 v3, v20

    const/4 v13, 0x0

    goto/16 :goto_67

    :cond_1c7
    monitor-exit v15
    :try_end_1c8
    .catchall {:try_start_37 .. :try_end_1c8} :catchall_8c

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const-string/jumbo v0, "createAppData"

    invoke-virtual {v10, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    move-object/from16 v0, p2

    :try_start_1d2
    invoke-virtual {v11, v0}, Lcom/android/server/pm/Installer$Batch;->execute(Lcom/android/server/pm/Installer;)V
    :try_end_1d5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1d2 .. :try_end_1d5} :catch_1d6

    goto :goto_1df

    :catch_1d6
    move-exception v0

    const-string/jumbo v3, "PackageSettings"

    const-string v4, "Failed to prepare app data"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1df
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v3

    :try_start_1e7
    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(I)V

    monitor-exit v3
    :try_end_1eb
    .catchall {:try_start_1e7 .. :try_end_1eb} :catchall_1ef

    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_1ef
    move-exception v0

    :try_start_1f0
    monitor-exit v3
    :try_end_1f1
    .catchall {:try_start_1f0 .. :try_end_1f1} :catchall_1ef

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :goto_1f4
    :try_start_1f4
    monitor-exit v15
    :try_end_1f5
    .catchall {:try_start_1f4 .. :try_end_1f5} :catchall_8c

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method

.method public final disableSystemPackageLPw(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    const/4 v1, 0x0

    if-nez v0, :cond_28

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Package "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not an installed package"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_28
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v2, v2, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    if-nez v2, :cond_62

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v2, :cond_62

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_62

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-boolean v3, v2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    if-nez v3, :cond_62

    new-instance v3, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v3, v0, v1}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Z)V

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    iget-object v1, v2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1, v3}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object p0

    if-eqz p0, :cond_61

    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {p0, v3}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    :cond_61
    return v0

    :cond_62
    return v1
.end method

.method public final dispatchChange(Lcom/android/server/utils/Watchable;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public final dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V
    .registers 29
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v5, p7

    iget-object v8, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz p2, :cond_1b5

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    if-eqz v2, :cond_1b

    goto :goto_1d

    :cond_1b
    iget-object v2, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    :goto_1d
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v3, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v3, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v3, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {v1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    const-string v4, "?"

    if-eqz v2, :cond_44

    goto :goto_45

    :cond_44
    move-object v2, v4

    :goto_45
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget v2, v2, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    iget-object v2, v3, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_56

    goto :goto_57

    :cond_56
    move-object v2, v4

    :goto_57
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    if-eqz v2, :cond_72

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v5, v5, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    const-string v7, ")"

    invoke-static {v2, v5, v7}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_74

    :cond_72
    const-string v2, ""

    :goto_74
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget v2, v2, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "-"

    if-eqz v8, :cond_ca

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "splt,"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "base,"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(I)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object v7

    const/4 v10, 0x0

    :goto_a6
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    if-ge v10, v11, :cond_ca

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v10

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v11, v7, v10

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_a6

    :cond_ca
    move-object/from16 v5, p8

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v9, 0x0

    :goto_d3
    if-ge v9, v6, :cond_e1b

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v9, v9, 0x1

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v3, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v10, "usr"

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v10

    if-eqz v10, :cond_103

    const-string v10, "I"

    goto :goto_106

    :cond_103
    const-string/jumbo v10, "i"

    :goto_106
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v10

    if-eqz v10, :cond_112

    const-string v10, "B"

    goto :goto_115

    :cond_112
    const-string/jumbo v10, "b"

    :goto_115
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v10

    if-eqz v10, :cond_122

    const-string/jumbo v10, "SU"

    goto :goto_125

    :cond_122
    const-string/jumbo v10, "su"

    :goto_125
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v10

    if-eqz v10, :cond_132

    const-string/jumbo v10, "S"

    goto :goto_135

    :cond_132
    const-string/jumbo v10, "s"

    :goto_135
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v10

    if-eqz v10, :cond_142

    const-string/jumbo v10, "l"

    goto :goto_144

    :cond_142
    const-string v10, "L"

    :goto_144
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v10

    if-eqz v10, :cond_150

    const-string v10, "IA"

    goto :goto_153

    :cond_150
    const-string/jumbo v10, "ia"

    :goto_153
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v10

    if-eqz v10, :cond_160

    const-string/jumbo v10, "VPI"

    goto :goto_163

    :cond_160
    const-string/jumbo v10, "vpi"

    :goto_163
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isQuarantined()Z

    move-result v10

    if-eqz v10, :cond_170

    const-string/jumbo v10, "Q"

    goto :goto_173

    :cond_170
    const-string/jumbo v10, "q"

    :goto_173
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_17f

    const-string v10, "HA"

    goto :goto_182

    :cond_17f
    const-string/jumbo v10, "ha"

    :goto_182
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(I)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v8, :cond_199

    goto :goto_19a

    :cond_199
    move-object v8, v4

    :goto_19a
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v7}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_d3

    :cond_1b5
    const-string v10, "  "

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "Package ["

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v3, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    if-eqz v11, :cond_1c5

    goto :goto_1c7

    :cond_1c5
    iget-object v11, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    :goto_1c7
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "] ("

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "):"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v11, v3, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    if-eqz v11, :cond_1f1

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  compat name="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1f1
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  appId="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v3, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v11

    if-eqz v11, :cond_20f

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  sharedUser="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_20f
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  pkg="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  codePath="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v3, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v11, v3, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    if-eqz v11, :cond_258

    invoke-virtual {v11}, Ljava/util/LinkedHashSet;->size()I

    move-result v11

    if-lez v11, :cond_258

    iget-object v11, v3, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    invoke-virtual {v11}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_237
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_258

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    const-string v13, "    oldCodePath="

    invoke-static {v1, v10, v13}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_237

    :cond_258
    if-nez v2, :cond_2a6

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  resourcePath="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v3, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    const-string v12, "  legacyNativeLibraryDir="

    invoke-static {v1, v11, v10, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v3, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    const-string v12, "  extractNativeLibs="

    invoke-static {v1, v11, v10, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v11, v3, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    const/high16 v12, 0x10000000

    and-int/2addr v11, v12

    if-eqz v11, :cond_27b

    const-string/jumbo v11, "true"

    goto :goto_27e

    :cond_27b
    const-string/jumbo v11, "false"

    :goto_27e
    const-string v12, "  primaryCpuAbi="

    invoke-static {v1, v11, v10, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v3, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  secondaryCpuAbi="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  cpuAbiOverride="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2a6
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  versionCode="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    if-eqz v8, :cond_2c3

    const-string v11, " minSdk="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getMinSdkVersion()I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    :cond_2c3
    const-string v11, " targetSdk="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getTargetSdkVersion()I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v11, "]"

    const-string v12, ", "

    if-eqz v8, :cond_322

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getMinExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v13

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, "  minExtensionVersions=["

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v13, :cond_31f

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v15

    const/4 v9, 0x0

    :goto_2ee
    if-ge v9, v15, :cond_318

    move/from16 p2, v15

    invoke-virtual {v13, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v13, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    move/from16 v16, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v16, 0x1

    move/from16 v15, p2

    goto :goto_2ee

    :cond_318
    invoke-static {v12, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_31f
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_322
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    sget-object v7, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    sget-object v9, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    const-string v13, "    "

    const-string v15, "  pendingRestore=true"

    if-eqz v8, :cond_76d

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p2, 0x1

    const-string v14, "  versionName="

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, "  hiddenApiEnforcementPolicy="

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getHiddenApiEnforcementPolicy()I

    move-result v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, "  usesNonSdkApi="

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->isNonSdkApiRequested()Z

    move-result v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, "  splits="

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v14, "["

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v14, "base"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v14

    move/from16 v16, v14

    const-string v14, ":"

    if-eqz v16, :cond_386

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_386
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v4, v17

    :goto_392
    array-length v6, v0

    if-ge v4, v6, :cond_3ae

    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v6, v0, v4

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v6, v16, v4

    if-eqz v6, :cond_3ab

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v6, v16, v4

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(I)V

    :cond_3ab
    add-int/lit8 v4, v4, 0x1

    goto :goto_392

    :cond_3ae
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v0

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  apkSigningVersion="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  flags="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v3, v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v0

    invoke-static {v1, v0, v9}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-static {v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v0

    if-eqz v0, :cond_3f0

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  privateFlags="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1, v0, v7}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_3f0
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isPendingRestore()Z

    move-result v0

    if-eqz v0, :cond_3ff

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_3ff
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->isUpdatableSystem()Z

    move-result v0

    if-nez v0, :cond_410

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  updatableSystem=false"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_410
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getEmergencyInstaller()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_425

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  emergencyInstaller="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getEmergencyInstaller()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_425
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->hasPreserveLegacyExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_436

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  hasPreserveLegacyExternalStorage=true"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_436
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  forceQueryable="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isForceQueryable()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isForceQueryableOverride()Z

    move-result v0

    if-eqz v0, :cond_454

    const-string v0, " (override=true)"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_454
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pageSizeCompat="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getQueriesPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48a

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v4, "  queriesPackages="

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getQueriesPackages()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_48a
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getQueriesIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4ad

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v4, "  queriesIntents="

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getQueriesIntents()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4ad
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  scannedAsStoppedSystemApp="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isScannedAsStoppedSystemApp()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  supportsScreens=["

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->isSmallScreensSupported()Z

    move-result v0

    if-eqz v0, :cond_4d2

    const-string/jumbo v0, "small"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_4d4

    :cond_4d2
    move/from16 v0, p2

    :goto_4d4
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->isNormalScreensSupported()Z

    move-result v4

    if-eqz v4, :cond_4e6

    if-nez v0, :cond_4df

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4df
    const-string/jumbo v0, "medium"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_4e6
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->isLargeScreensSupported()Z

    move-result v4

    if-eqz v4, :cond_4f8

    if-nez v0, :cond_4f1

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4f1
    const-string/jumbo v0, "large"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_4f8
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtraLargeScreensSupported()Z

    move-result v4

    if-eqz v4, :cond_50a

    if-nez v0, :cond_503

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_503
    const-string/jumbo v0, "xlarge"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_50a
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->isResizeable()Z

    move-result v4

    if-eqz v4, :cond_51c

    if-nez v0, :cond_515

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_515
    const-string/jumbo v0, "resizeable"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_51c
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->isAnyDensity()Z

    move-result v4

    if-eqz v4, :cond_52d

    if-nez v0, :cond_527

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_527
    const-string/jumbo v0, "anyDensity"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_52d
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_55d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_55d

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  dynamic libraries:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_545
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_55d

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_545

    :cond_55d
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "name:"

    const-string v6, " version:"

    if-eqz v0, :cond_58a

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  static library:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Ljava/io/PrintWriter;->println(J)V

    :cond_58a
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5b4

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  SDK library:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " versionMajor:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibVersionMajor()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_5b4
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5df

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  usesLibraries:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_5c7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_5df

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5c7

    :cond_5df
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesStaticLibrariesVersions()[J

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_617

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  usesStaticLibraries:"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_5f6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_617

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v14, v11

    aget-wide v11, v4, v14

    invoke-virtual {v1, v11, v12}, Ljava/io/PrintWriter;->println(J)V

    add-int/lit8 v11, v14, 0x1

    goto :goto_5f6

    :cond_617
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v4

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibrariesOptional()[Z

    move-result-object v11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_668

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  usesSdkLibraries:"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_636
    if-ge v14, v12, :cond_668

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v0, v11

    move/from16 v16, v12

    aget-wide v11, v4, v14

    invoke-virtual {v1, v11, v12}, Ljava/io/PrintWriter;->println(J)V

    const-string v11, " optional:"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-boolean v11, v0, v14

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v14, v14, 0x1

    move-object v11, v0

    move/from16 v12, v16

    move-object/from16 v0, v17

    goto :goto_636

    :cond_668
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_693

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  usesOptionalLibraries:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_67b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_693

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_67b

    :cond_693
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesNativeLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6be

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  usesNativeLibraries:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_6a6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_6be

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6a6

    :cond_6be
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesOptionalNativeLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6e9

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  usesOptionalNativeLibraries:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_6d1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_6e9

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6d1

    :cond_6e9
    iget-object v0, v3, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-object v0, v0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_714

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  usesLibraryFiles:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_6fc
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_714

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6fc

    :cond_714
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcesses()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_76f

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  processes:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_72e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_76f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedProcess;

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_72e

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_755
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_72e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "      deny: "

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_755

    :cond_76d
    const/16 p2, 0x1

    :cond_76f
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  timeStamp="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getLastModifiedTime()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Ljava/util/Date;->setTime(J)V

    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  lastUpdateTime="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getLastUpdateTime()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Ljava/util/Date;->setTime(J)V

    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installerPackageName="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installerPackageUid="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  initiatingPackageName="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  originatingPackageName="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_7f8

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  updateOwnerPackageName="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7f8
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    if-eqz v0, :cond_811

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installerAttributionTag="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_811
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getCategoryOverride()I

    move-result v0

    const/4 v4, -0x1

    if-eqz v8, :cond_81d

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getCategory()I

    move-result v6

    goto :goto_81e

    :cond_81d
    move v6, v4

    :goto_81e
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "  category=manifest: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, ", override: "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, ", by user: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/pm/PackageManagerService;->sAppCategoryHintHelper:Lcom/android/server/pm/AppCategoryHintHelper;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/android/server/pm/AppCategoryHintHelper;->getAppCategoryHintUser(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sAppCategoryHintHelper:Lcom/android/server/pm/AppCategoryHintHelper;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/pm/AppCategoryHintHelper;->getAppCategoryHintDeveloper(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_87b

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, ", by dev: "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_87b
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sAppCategoryHintHelper:Lcom/android/server/pm/AppCategoryHintHelper;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v0, Lcom/android/server/pm/AppCategoryHintHelper;->mAppCategoryFilter:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    invoke-virtual {v0, v6}, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->getPackageCategory(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_89a

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, ", by scpm: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_89a
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  packageSource="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget v0, v0, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, v3, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f2

    const-string v0, "  loadingProgress="

    invoke-static {v1, v10, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getLoadingProgress()F

    move-result v4

    const/high16 v6, 0x42c80000  # 100.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getLoadingCompletedTime()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Ljava/util/Date;->setTime(J)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "  loadingCompletedTime="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8f2
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  appMetadataFilePath="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppMetadataFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  appMetadataSource="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppMetadataSource()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_925

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  volumeUuid="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_925
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  signatures="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installPermissionsFixed="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isInstallPermissionsFixed()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pkgFlags="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v0

    invoke-static {v1, v0, v9}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  privatePkgFlags="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v0

    invoke-static {v1, v0, v7}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isPendingRestore()Z

    move-result v0

    if-eqz v0, :cond_974

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_974
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  apexModuleName="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getApexModuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v8, :cond_9a9

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9a9

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayTarget="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayCategory="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9a9
    if-eqz v8, :cond_9d0

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  componentsDeclared="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v0

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_9d0
    if-eqz v8, :cond_a4d

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a4d

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  declared permissions:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_9e9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_a4d

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    if-eqz v2, :cond_a02

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a02

    goto :goto_a4a

    :cond_a02
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ": prot="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v7

    invoke-static {v7}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getFlags()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_a2c

    const-string v7, ", COSTS_MONEY"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_a2c
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getFlags()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_a39

    const-string v7, ", HIDDEN"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_a39
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getFlags()I

    move-result v6

    const/high16 v7, 0x40000000  # 2.0f

    and-int/2addr v6, v7

    if-eqz v6, :cond_a47

    const-string v6, ", INSTALLED"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_a47
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :goto_a4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9e9

    :cond_a4d
    if-nez v2, :cond_a51

    if-eqz p9, :cond_a92

    :cond_a51
    if-eqz v8, :cond_a92

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_a92

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_a92

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  requested permissions:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a73
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a92

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v2, :cond_a88

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a88

    goto :goto_a73

    :cond_a88
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a73

    :cond_a92
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v0

    if-eqz v0, :cond_a9c

    if-nez v2, :cond_a9c

    if-eqz p9, :cond_aa1

    :cond_a9c
    move-object/from16 v4, p5

    move-object/from16 v6, p8

    goto :goto_aa6

    :cond_aa1
    move-object/from16 v4, p5

    move-object/from16 v6, p8

    goto :goto_aa9

    :goto_aa6
    invoke-static {v1, v13, v2, v4, v6}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    :goto_aa9
    if-eqz p10, :cond_aae

    invoke-static {v1, v13, v3}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V

    :cond_aae
    move-object v0, v6

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_ab6
    if-ge v7, v6, :cond_e1b

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Landroid/content/pm/UserInfo;

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v3, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v9

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  User "

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, ": "

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "ceDataInode="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    const-string v11, " deDataInode="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->getDeDataInode()J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    const-string v11, " installed="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " hidden="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " suspended="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " distractionFlags="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, " stopped="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " notLaunched="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " enabled="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, " instant="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " virtual="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " quarantined="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->isQuarantined()Z

    move-result v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string v12, "      installReason="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(I)V

    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3, v12}, Lcom/android/server/pm/parsing/PackageInfoUtils;->getDataDir(Lcom/android/server/pm/PackageSetting;I)Ljava/io/File;

    move-result-object v12

    const-string v14, "      dataDir="

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v12, :cond_b89

    const-string/jumbo v12, "null"

    goto :goto_b8d

    :cond_b89
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    :goto_b8d
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v12}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v12

    const-string v14, "      firstInstallTime="

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v14

    invoke-virtual {v5, v14, v15}, Ljava/util/Date;->setTime(J)V

    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v14

    if-eqz v14, :cond_bed

    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v12

    const-string v14, "      archiveTime="

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v12, Lcom/android/server/pm/pkg/ArchiveState;->mArchiveTimeMillis:J

    invoke-virtual {v5, v14, v15}, Ljava/util/Date;->setTime(J)V

    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v14, "      unarchiveInstallerTitle="

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v14, v12, Lcom/android/server/pm/pkg/ArchiveState;->mInstallerTitle:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v12, v12, Lcom/android/server/pm/pkg/ArchiveState;->mActivityInfos:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_bd4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_bed

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    const-string v15, "        archiveActivityInfo="

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_bd4

    :cond_bed
    const-string v12, "      uninstallReason="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(I)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v12

    if-eqz v12, :cond_c4d

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  Suspend params:"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v12, 0x0

    :goto_c08
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v14

    if-ge v12, v14, :cond_c4d

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, "    suspendingPackage="

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/pkg/SuspendParams;

    if-eqz v14, :cond_c47

    const-string v15, " dialogInfo="

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v15, v14, Lcom/android/server/pm/pkg/SuspendParams;->mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v14, v14, Lcom/android/server/pm/pkg/SuspendParams;->mQuarantined:Z

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Z)V

    :cond_c47
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_c08

    :cond_c4d
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v11

    const-string v12, "      "

    if-eqz v11, :cond_cb5

    invoke-virtual {v11}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_c85

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, "    overlay paths:"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_c6f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c85

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c6f

    :cond_c85
    invoke-virtual {v11}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_cb5

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, "    legacy overlay paths:"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_c9f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_cb5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c9f

    :cond_cb5
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->getSharedLibraryOverlayPaths()Ljava/util/Map;

    move-result-object v11

    if-eqz v11, :cond_d60

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_cc3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d60

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/overlay/OverlayPaths;

    if-nez v15, :cond_cd8

    goto :goto_cc3

    :cond_cd8
    invoke-virtual {v15}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_d1e

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p2, v0

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " overlay paths:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d02
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_d20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p8, v0

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p8

    goto :goto_d02

    :cond_d1e
    move-object/from16 p2, v0

    :cond_d20
    invoke-virtual {v15}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d5c

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " legacy overlay paths:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d46

    :cond_d5c
    move-object/from16 v0, p2

    goto/16 :goto_cc3

    :cond_d60
    move-object/from16 p2, v0

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d73

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "    lastDisabledCaller: "

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d73
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v0

    if-nez v0, :cond_d9a

    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v11

    invoke-static {v0, v11}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    move-object/from16 v11, p0

    iget-object v14, v11, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-virtual {v14, v0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->getGidsForUid(I)[I

    move-result-object v0

    invoke-static {v1, v12, v0}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v0}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v0

    move/from16 v8, p9

    invoke-static {v1, v12, v2, v0, v8}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/Collection;Z)V

    goto :goto_d9e

    :cond_d9a
    move-object/from16 v11, p0

    move/from16 v8, p9

    :goto_d9e
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_daf

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, "      harmfulAppWarning: "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_daf
    if-nez v2, :cond_e17

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    if-eqz v0, :cond_de4

    iget-object v14, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v14

    if-lez v14, :cond_de4

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, "    disabledComponents:"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v14, 0x0

    :goto_dc8
    iget-object v15, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v15

    if-ge v14, v15, :cond_de4

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v15, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v15, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_dc8

    :cond_de4
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    if-eqz v0, :cond_e17

    iget-object v9, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-lez v9, :cond_e17

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "    enabledComponents:"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_dfb
    iget-object v14, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v14

    if-ge v9, v14, :cond_e17

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v14, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v14, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_dfb

    :cond_e17
    move-object/from16 v0, p2

    goto/16 :goto_ab6

    :cond_e1b
    return-void
.end method

.method public final editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    if-nez v0, :cond_14

    new-instance v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    invoke-direct {v0}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public final editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    if-nez v0, :cond_14

    new-instance v0, Lcom/android/server/pm/PreferredIntentResolver;

    invoke-direct {v0}, Lcom/android/server/pm/PreferredIntentResolver;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public final enableSystemPackageLPw(Ljava/lang/String;)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-nez v0, :cond_27

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Package "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not disabled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    :cond_32
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    iget-object v1, v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    iget v7, v0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    iget v8, v0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    iget v9, v0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    check-cast v3, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    if-nez v1, :cond_58

    :goto_55
    move-object v3, p0

    move-object v4, p1

    goto :goto_5c

    :cond_58
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isSdkLibrary()Z

    goto :goto_55

    :goto_5c
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IIILjava/util/UUID;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    if-eqz p0, :cond_f5

    iget-object p1, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget-object p1, v0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget-object p1, v0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget-object p1, v0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget-wide v5, v0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    iput-wide v5, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesOptional()[Z

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibrariesVersions()[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getMimeGroups()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_be

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->copyMimeGroups(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_be
    iget-object p1, v0, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)V

    iget p1, v0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)V

    iget-object p1, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iput-boolean v2, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    iget-object p1, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget p1, v0, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget-object p1, v0, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget-object p1, v0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_f5
    iget-object p0, v3, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, v4}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    if-nez v0, :cond_14

    new-instance v0, Lcom/android/server/pm/Settings$VersionInfo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method public final getAllSharedUsersLPw()Ljava/util/Collection;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public final getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .registers 2

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object p0
.end method

.method public final getLegacyPermissionsState(I)Lcom/android/permission/persistence/RuntimePermissionsState;
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v2, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    iget-object v3, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_27

    new-instance v2, Lcom/android/permission/persistence/RuntimePermissionsState;

    invoke-static {p1, v1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getPackagePermissions(ILcom/android/server/utils/WatchedArrayMap;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getShareUsersPermissions(ILcom/android/server/utils/WatchedArrayMap;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v2, v3, v0, v1, p0}, Lcom/android/permission/persistence/RuntimePermissionsState;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-object v2

    :catchall_27
    move-exception p0

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public final getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public final getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getSettingLPr(I)Lcom/android/server/pm/SettingBase;
    .registers 4

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1c

    iget-object p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    iget-object v1, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v0

    if-ge p1, v1, :cond_1a

    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/SettingBase;

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0

    :cond_1c
    iget-object p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/SettingBase;

    return-object p0
.end method

.method public final getSharedUserLPw(Ljava/lang/String;Z)Lcom/android/server/pm/SharedUserSetting;
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    if-nez v1, :cond_42

    if-eqz p2, :cond_42

    new-instance p2, Lcom/android/server/pm/SharedUserSetting;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, p1}, Lcom/android/server/pm/SharedUserSetting;-><init>(IILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/AppIdSettingMap;->acquireAndRegisterNewAppId(Lcom/android/server/pm/SettingBase;)I

    move-result p0

    iput p0, p2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    if-ltz p0, :cond_33

    const-string/jumbo p0, "New shared user "

    const-string v1, ": id="

    invoke-static {p0, p1, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v1, p2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    const-string/jumbo v2, "PackageManager"

    invoke-static {p0, v1, v2}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_33
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p2, "Creating shared user "

    const-string v0, " failed"

    invoke-static {p2, p1, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x4

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_42
    return-object v1
.end method

.method public final getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;
    .registers 3

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    :cond_9
    iget p1, p1, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    return-object p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUserPackagesStateFile(I)Lcom/android/server/pm/ResilientAtomicFile;
    .registers 9

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "package-restrictions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v3, "package-restrictions-backup.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v0, "package-restrictions.xml.reservecopy"

    invoke-direct {v3, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/ResilientAtomicFile;

    const/16 v4, 0x1b0

    const-string/jumbo v5, "package restrictions"

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V

    return-object v0
.end method

.method public final getUserSystemDirectory(I)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "users"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v2, v2, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v2, v2, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_28
    return-object v0
.end method

.method public final logEvent(ILjava/lang/String;)V
    .registers 4

    const-string v0, "\n"

    invoke-static {p2, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    return-void
.end method

.method public final readBlockUninstallPackagesLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 8

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    :cond_9
    :goto_9
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4e

    const/4 v3, 0x3

    if-ne v2, v3, :cond_19

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4e

    :cond_19
    if-eq v2, v3, :cond_9

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1f

    goto :goto_9

    :cond_1f
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "block-uninstall"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const/4 v2, 0x0

    const-string/jumbo v3, "packageName"

    invoke-interface {p2, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_38
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unknown element under block-uninstall-packages: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    :cond_4e
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    if-eqz p2, :cond_5a

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->delete(I)V

    return-void

    :cond_5a
    invoke-virtual {p0, p1, v1}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final readCrossProfileIntentFiltersLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 7

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    :cond_4
    :goto_4
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_46

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_46

    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    goto :goto_4

    :cond_1a
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "item"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    new-instance v1, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-direct {v1, p2}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;)V

    goto :goto_4

    :cond_35
    const-string/jumbo v2, "Unknown element under crossProfile-intent-filters: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_46
    return-void
.end method

.method public final readDefaultPreferredActivitiesLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 9

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    :cond_c
    :goto_c
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7a

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1c

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_7a

    :cond_1c
    if-eq v2, v3, :cond_c

    const/4 v3, 0x4

    if-ne v2, v3, :cond_22

    goto :goto_c

    :cond_22
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_65

    new-instance v2, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v2, p2}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    iget-object v4, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v5, v4, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v5, :cond_43

    iget-object v2, v2, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    iget-object v3, v4, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    goto :goto_c

    :cond_43
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Error in package manager settings: <preferred-activity> "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_c

    :cond_65
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unknown element under <preferred-activities>: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c

    :cond_7a
    return-void
.end method

.method public final readDisabledSysPackageLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/List;)V
    .registers 22

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v3, "realName"

    invoke-interface {v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v3, "codePath"

    invoke-interface {v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "requiredCpuAbi"

    invoke-interface {v1, v2, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "nativeLibraryPath"

    invoke-interface {v1, v2, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v7, "primaryCpuAbi"

    invoke-interface {v1, v2, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "secondaryCpuAbi"

    invoke-interface {v1, v2, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v8, "cpuAbiOverride"

    invoke-interface {v1, v2, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v7, :cond_41

    if-eqz v4, :cond_41

    move-object v14, v4

    goto :goto_42

    :cond_41
    move-object v14, v7

    :goto_42
    const-string/jumbo v4, "version"

    const-wide/16 v7, 0x0

    invoke-interface {v1, v2, v4, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v9

    const-string/jumbo v4, "targetSdkVersion"

    const/4 v15, 0x0

    invoke-interface {v1, v2, v4, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v7, "restrictUpdateHash"

    invoke-interface {v1, v2, v7, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v7

    const-string/jumbo v8, "scannedAsStoppedSystemApp"

    invoke-interface {v1, v2, v8, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    const-string v15, "/priv-app/"

    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    move-wide/from16 v16, v9

    if-eqz v15, :cond_6e

    const/16 v9, 0x8

    goto :goto_6f

    :cond_6e
    const/4 v9, 0x0

    :goto_6f
    sget-object v10, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->DISABLED_ID:Ljava/util/UUID;

    move v15, v4

    new-instance v4, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v18, v7

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v3, v8

    const/4 v8, 0x1

    move v1, v3

    move-wide/from16 v2, v16

    move-object/from16 v0, v18

    invoke-direct/range {v4 .. v10}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IILjava/util/UUID;)V

    iput-object v11, v4, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v14, v4, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v12, v4, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v13, v4, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-wide v2, v4, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput v15, v4, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v0, v4, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    const/16 v0, 0x8

    invoke-virtual {v4, v0, v1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    const-string/jumbo v0, "ft"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    invoke-interface {v1, v2, v0, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-nez v0, :cond_c7

    const-string/jumbo v0, "ts"

    invoke-interface {v1, v2, v0, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    :cond_c7
    iput-wide v8, v4, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    const-string/jumbo v0, "ut"

    invoke-interface {v1, v2, v0, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)V

    const-string/jumbo v0, "userId"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageSetting;->setAppId(I)V

    iget v0, v4, Lcom/android/server/pm/PackageSetting;->mAppId:I

    if-gtz v0, :cond_f2

    const-string/jumbo v0, "sharedUserId"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageSetting;->setAppId(I)V

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    :cond_f2
    const-string/jumbo v0, "appMetadataFilePath"

    invoke-interface {v1, v2, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)V

    const-string/jumbo v0, "appMetadataSource"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)V

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    :cond_10a
    :goto_10a
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_11b

    const/4 v6, 0x3

    if-ne v3, v6, :cond_11f

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v0, :cond_11b

    goto :goto_11f

    :cond_11b
    move-object/from16 v6, p0

    goto/16 :goto_198

    :cond_11f
    :goto_11f
    if-eq v3, v6, :cond_192

    const/4 v6, 0x4

    if-ne v3, v6, :cond_125

    goto :goto_10a

    :cond_125
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "perms"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_155

    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v3

    if-eqz v3, :cond_149

    iget v3, v4, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    move-object/from16 v6, p0

    invoke-virtual {v6, v3}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v3

    if-eqz v3, :cond_147

    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v3

    goto :goto_14d

    :cond_147
    move-object v3, v2

    goto :goto_14d

    :cond_149
    move-object/from16 v6, p0

    iget-object v3, v4, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    :goto_14d
    move-object/from16 v7, p2

    if-eqz v3, :cond_10a

    invoke-static {v1, v3, v7}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    goto :goto_10a

    :cond_155
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "uses-static-lib"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16a

    invoke-static {v1, v4}, Lcom/android/server/pm/Settings;->readUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_10a

    :cond_16a
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "uses-sdk-lib"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17b

    invoke-static {v1, v4}, Lcom/android/server/pm/Settings;->readUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_10a

    :cond_17b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Unknown element under <updated-package>: "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v8, 0x5

    invoke-static {v8, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_10a

    :cond_192
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    goto/16 :goto_10a

    :goto_198
    iget-object v0, v6, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v5, v4}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final readLPw(Lcom/android/server/pm/ComputerLocked;Ljava/util/List;Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)Z
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const-string/jumbo v3, "No external VersionInfo found in settings, using current."

    const-string/jumbo v4, "No internal VersionInfo found in settings, using current."

    const-string/jumbo v5, "primary_physical"

    iget-object v6, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    const-string/jumbo v7, "PackageManager"

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    :try_start_1b
    invoke-virtual {v1, v9, v10, v8, v0}, Lcom/android/server/pm/Settings;->readSettingsLPw(Lcom/android/server/pm/ComputerLocked;Ljava/util/List;Landroid/util/ArrayMap;Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)Z

    move-result v9
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_34e

    const/4 v11, 0x0

    if-nez v9, :cond_49

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    invoke-static {v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    :cond_36
    iget-object v0, v6, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-static {v7, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    :cond_48
    return v11

    :cond_49
    sget-object v9, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v12, v6, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v12, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5d

    invoke-static {v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v9}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    :cond_5d
    iget-object v4, v6, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6f

    invoke-static {v7, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    :cond_6f
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    iget-object v4, v3, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v11

    :goto_78
    const/4 v6, 0x6

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    if-ge v5, v4, :cond_d0

    iget-object v12, v3, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    iget v13, v12, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    if-gtz v13, :cond_8c

    :goto_89
    const/16 v16, 0x1

    goto :goto_cd

    :cond_8c
    invoke-virtual {v1, v13}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v14

    instance-of v15, v14, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v15, :cond_9a

    check-cast v14, Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, v12, v14}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    goto :goto_89

    :cond_9a
    const-string v15, " has shared uid "

    const/16 v16, 0x1

    const-string v2, "Bad package setting: package "

    if-eqz v14, :cond_b8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v12, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    const-string v12, " that is not a shared uid\n"

    invoke-static {v13, v2, v15, v12, v14}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v6, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_cd

    :cond_b8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v12, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    const-string v12, " that is not defined\n"

    invoke-static {v13, v2, v15, v12, v14}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v6, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_cd
    add-int/lit8 v5, v5, 0x1

    goto :goto_78

    :cond_d0
    const/16 v16, 0x1

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayList;->clear()V

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_fc

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e6

    goto :goto_fc

    :cond_e6
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ea
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3, v8, v0}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(ILandroid/util/ArrayMap;Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)V

    goto :goto_ea

    :cond_fc
    :goto_fc
    const-string v0, "Cleaning up stopped packages file "

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v2, :cond_13c

    :try_start_108
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v5, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_10f} :catch_13c

    :try_start_10f
    const-string/jumbo v5, "Reading from backup stopped packages file\n"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Need to read from backup stopped packages file"

    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_13d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_13b} :catch_13d

    goto :goto_13d

    :catch_13c
    :cond_13c
    move-object v2, v4

    :catch_13d
    :cond_13d
    :goto_13d
    const/4 v0, 0x2

    const-string v5, "Error reading package manager stopped packages"

    const-string v8, "!@Error reading stopped packages: "

    const-string v12, "Error reading: "

    if-nez v2, :cond_19a

    :try_start_146
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_193

    const-string/jumbo v2, "No stopped packages file found\n"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No stopped packages file file; assuming all started"

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_166
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v4, v11}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v13

    invoke-virtual {v13, v0, v11}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {v13}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v4, v11}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v13

    invoke-virtual {v13, v3, v11}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {v13}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_166

    :catch_18d
    move-exception v0

    goto/16 :goto_268

    :catch_190
    move-exception v0

    goto/16 :goto_291

    :cond_193
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v13, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v2, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :cond_19a
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v13

    :goto_19e
    invoke-interface {v13}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v14

    if-eq v14, v0, :cond_1ab

    move/from16 v15, v16

    if-eq v14, v15, :cond_1ab

    move/from16 v16, v15

    goto :goto_19e

    :cond_1ab
    if-eq v14, v0, :cond_1be

    const-string/jumbo v0, "No start tag found in stopped packages file\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "No start tag found in package manager stopped packages"

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto/16 :goto_2b9

    :cond_1be
    invoke-interface {v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v14

    :goto_1c2
    invoke-interface {v13}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v15

    const/4 v6, 0x1

    if-eq v15, v6, :cond_264

    const/4 v6, 0x3

    if-ne v15, v6, :cond_1d2

    invoke-interface {v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v14, :cond_264

    :cond_1d2
    if-eq v15, v6, :cond_1d6

    if-ne v15, v3, :cond_1d9

    :cond_1d6
    const/4 v0, 0x2

    :goto_1d7
    const/4 v6, 0x6

    goto :goto_1c2

    :cond_1d9
    invoke-interface {v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "pkg"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_243

    const-string/jumbo v0, "name"

    invoke-interface {v13, v4, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v6, v6, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    if-eqz v6, :cond_229

    invoke-virtual {v6, v11}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v15, 0x2

    invoke-virtual {v0, v15, v3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    const-string v0, "1"

    const-string/jumbo v3, "nl"

    invoke-interface {v13, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_227

    invoke-virtual {v6, v11}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_23f

    :cond_227
    const/4 v3, 0x4

    goto :goto_23f

    :cond_229
    const/4 v15, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No package known for stopped package "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23f
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_260

    :cond_243
    const/4 v15, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown element under <stopped-packages>: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_260
    move v0, v15

    const/4 v4, 0x0

    goto/16 :goto_1d7

    :cond_264
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_267
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_146 .. :try_end_267} :catch_190
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_267} :catch_18d

    goto :goto_2b9

    :goto_268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    invoke-static {v7, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b9

    :goto_291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    invoke-static {v7, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2b9
    :goto_2b9
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v15, 0x1

    invoke-virtual {v1, v11, v15}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(IZ)V

    :cond_2c7
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2cb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    new-instance v8, Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "runtime-permissions.xml"

    invoke-direct {v8, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSync(ILcom/android/server/pm/Settings$VersionInfo;Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;Ljava/io/File;)V

    goto :goto_2cb

    :cond_2f5
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2ff
    :goto_2ff
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_322

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    iget v3, v2, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v3

    instance-of v4, v3, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v4, :cond_2ff

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    iget-object v4, v3, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v4, v2}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    iget v3, v3, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    goto :goto_2ff

    :cond_322
    const-string/jumbo v0, "Read completed successfully: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " packages, "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " shared uids\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    const/16 v16, 0x1

    return v16

    :catchall_34e
    move-exception v0

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v8, v6, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_363

    invoke-static {v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    :cond_363
    iget-object v2, v6, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_375

    invoke-static {v7, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    :cond_375
    throw v0
.end method

.method public final readPackageLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;Landroid/util/ArrayMap;Ljava/util/List;Landroid/util/ArrayMap;)V
    .registers 81

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const-string v13, "Failure adding appId "

    const-string v1, "Error in package manager settings: package "

    const-string v2, "Error in package manager settings: package "

    const-string v3, "Error in package manager settings: <package> has no codePath at "

    const-string v4, "Error in package manager settings: <package> has no name at "

    const/4 v14, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x8

    const/16 v17, 0x2

    :try_start_14
    const-string/jumbo v5, "name"

    invoke-interface {v8, v6, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_1b} :catch_707

    :try_start_1b
    const-string/jumbo v7, "realName"

    invoke-interface {v8, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v11, "userId"

    invoke-interface {v8, v6, v11, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_29} :catch_701

    :try_start_29
    const-string/jumbo v12, "isSdkLibrary"

    invoke-interface {v8, v6, v12, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2f} :catch_6bf

    :try_start_2f
    const-string/jumbo v12, "sharedUserId"

    invoke-interface {v8, v6, v12, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_36} :catch_6c8

    :try_start_36
    const-string/jumbo v15, "codePath"

    invoke-interface {v8, v6, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v14, "requiredCpuAbi"

    invoke-interface {v8, v6, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v25, v7

    const-string/jumbo v7, "nativeLibraryPath"

    invoke-interface {v8, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_4d} :catch_6bf

    move-object/from16 v26, v14

    :try_start_4f
    const-string/jumbo v14, "primaryCpuAbi"

    invoke-interface {v8, v6, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_56
    .catch Ljava/lang/NumberFormatException; {:try_start_4f .. :try_end_56} :catch_68b

    move-object/from16 v27, v14

    :try_start_58
    const-string/jumbo v14, "secondaryCpuAbi"

    invoke-interface {v8, v6, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_5f} :catch_680

    :try_start_5f
    const-string/jumbo v10, "cpuAbiOverride"

    invoke-interface {v8, v6, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v9, "updateAvailable"

    move-object/from16 v28, v13

    const/4 v13, 0x0

    invoke-interface {v8, v6, v9, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_5f .. :try_end_70} :catch_65d

    move/from16 v29, v9

    :try_start_72
    const-string/jumbo v9, "forceQueryable"

    invoke-interface {v8, v6, v9, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9
    :try_end_79
    .catch Ljava/lang/NumberFormatException; {:try_start_72 .. :try_end_79} :catch_63a

    move/from16 v30, v9

    :try_start_7b
    const-string/jumbo v9, "pendingRestore"

    invoke-interface {v8, v6, v9, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9
    :try_end_82
    .catch Ljava/lang/NumberFormatException; {:try_start_7b .. :try_end_82} :catch_617

    move/from16 v31, v9

    :try_start_84
    const-string/jumbo v9, "debuggable"

    invoke-interface {v8, v6, v9, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9
    :try_end_8b
    .catch Ljava/lang/NumberFormatException; {:try_start_84 .. :try_end_8b} :catch_5f4

    :try_start_8b
    const-string/jumbo v13, "loadingProgress"
    :try_end_8e
    .catch Ljava/lang/NumberFormatException; {:try_start_8b .. :try_end_8e} :catch_5ec

    move/from16 v32, v9

    const/4 v9, 0x0

    :try_start_91
    invoke-interface {v8, v6, v13, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v9
    :try_end_95
    .catch Ljava/lang/NumberFormatException; {:try_start_91 .. :try_end_95} :catch_5b4

    :try_start_95
    const-string/jumbo v13, "loadingCompletedTime"

    move-object/from16 v23, v1

    move-object/from16 v33, v2

    const-wide/16 v1, 0x0

    invoke-interface {v8, v6, v13, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v34
    :try_end_a2
    .catch Ljava/lang/NumberFormatException; {:try_start_95 .. :try_end_a2} :catch_59e

    if-nez v27, :cond_ab

    if-eqz v26, :cond_ab

    move-object/from16 v13, v26

    :goto_a8
    move/from16 v26, v9

    goto :goto_ae

    :cond_ab
    move-object/from16 v13, v27

    goto :goto_a8

    :goto_ae
    :try_start_ae
    const-string/jumbo v9, "version"
    :try_end_b1
    .catch Ljava/lang/NumberFormatException; {:try_start_ae .. :try_end_b1} :catch_598

    move/from16 v36, v11

    move/from16 v37, v12

    :try_start_b5
    invoke-interface {v8, v6, v9, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v11

    const-string/jumbo v1, "targetSdkVersion"

    const/4 v2, 0x0

    invoke-interface {v8, v6, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9
    :try_end_c1
    .catch Ljava/lang/NumberFormatException; {:try_start_b5 .. :try_end_c1} :catch_567

    :try_start_c1
    const-string/jumbo v1, "restrictUpdateHash"

    invoke-interface {v8, v6, v1, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v27
    :try_end_c8
    .catch Ljava/lang/NumberFormatException; {:try_start_c1 .. :try_end_c8} :catch_553

    :try_start_c8
    const-string/jumbo v1, "installer"

    invoke-interface {v8, v6, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38
    :try_end_cf
    .catch Ljava/lang/NumberFormatException; {:try_start_c8 .. :try_end_cf} :catch_53f

    :try_start_cf
    const-string/jumbo v1, "installerUid"

    const/4 v2, -0x1

    invoke-interface {v8, v6, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v39
    :try_end_d7
    .catch Ljava/lang/NumberFormatException; {:try_start_cf .. :try_end_d7} :catch_531

    :try_start_d7
    const-string/jumbo v1, "updateOwner"

    invoke-interface {v8, v6, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40
    :try_end_de
    .catch Ljava/lang/NumberFormatException; {:try_start_d7 .. :try_end_de} :catch_51c

    :try_start_de
    const-string/jumbo v1, "installerAttributionTag"

    invoke-interface {v8, v6, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41
    :try_end_e5
    .catch Ljava/lang/NumberFormatException; {:try_start_de .. :try_end_e5} :catch_507

    :try_start_e5
    const-string/jumbo v1, "packageSource"

    const/4 v2, 0x0

    invoke-interface {v8, v6, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v42
    :try_end_ed
    .catch Ljava/lang/NumberFormatException; {:try_start_e5 .. :try_end_ed} :catch_4f2

    :try_start_ed
    const-string/jumbo v1, "isOrphaned"

    invoke-interface {v8, v6, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v43
    :try_end_f4
    .catch Ljava/lang/NumberFormatException; {:try_start_ed .. :try_end_f4} :catch_4dd

    :try_start_f4
    const-string/jumbo v1, "installInitiator"

    invoke-interface {v8, v6, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44
    :try_end_fb
    .catch Ljava/lang/NumberFormatException; {:try_start_f4 .. :try_end_fb} :catch_4c8

    :try_start_fb
    const-string/jumbo v1, "installOriginator"

    invoke-interface {v8, v6, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45
    :try_end_102
    .catch Ljava/lang/NumberFormatException; {:try_start_fb .. :try_end_102} :catch_4b3

    :try_start_102
    const-string/jumbo v1, "installInitiatorUninstalled"

    const/4 v2, 0x0

    invoke-interface {v8, v6, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v46
    :try_end_10a
    .catch Ljava/lang/NumberFormatException; {:try_start_102 .. :try_end_10a} :catch_49e

    :try_start_10a
    const-string/jumbo v1, "volumeUuid"

    invoke-interface {v8, v6, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47
    :try_end_111
    .catch Ljava/lang/NumberFormatException; {:try_start_10a .. :try_end_111} :catch_489

    :try_start_111
    const-string/jumbo v1, "categoryHint"

    const/4 v2, -0x1

    invoke-interface {v8, v6, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v20
    :try_end_119
    .catch Ljava/lang/NumberFormatException; {:try_start_111 .. :try_end_119} :catch_476

    :try_start_119
    const-string/jumbo v1, "appMetadataFilePath"

    invoke-interface {v8, v6, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48
    :try_end_120
    .catch Ljava/lang/NumberFormatException; {:try_start_119 .. :try_end_120} :catch_463

    :try_start_120
    const-string/jumbo v1, "appMetadataSource"

    const/4 v2, 0x0

    invoke-interface {v8, v6, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v49
    :try_end_128
    .catch Ljava/lang/NumberFormatException; {:try_start_120 .. :try_end_128} :catch_450

    :try_start_128
    const-string/jumbo v1, "baseRevisionCode"

    invoke-interface {v8, v6, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v50
    :try_end_12f
    .catch Ljava/lang/NumberFormatException; {:try_start_128 .. :try_end_12f} :catch_43d

    :try_start_12f
    const-string/jumbo v1, "pageSizeCompat"

    invoke-interface {v8, v6, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v51
    :try_end_136
    .catch Ljava/lang/NumberFormatException; {:try_start_12f .. :try_end_136} :catch_42a

    :try_start_136
    const-string/jumbo v1, "scannedAsStoppedSystemApp"

    invoke-interface {v8, v6, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v52
    :try_end_13d
    .catch Ljava/lang/NumberFormatException; {:try_start_136 .. :try_end_13d} :catch_417

    :try_start_13d
    const-string/jumbo v1, "domainSetId"

    invoke-interface {v8, v6, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_148
    .catch Ljava/lang/NumberFormatException; {:try_start_13d .. :try_end_148} :catch_40e

    if-eqz v2, :cond_168

    :try_start_14a
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    check-cast v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1
    :try_end_155
    .catch Ljava/lang/NumberFormatException; {:try_start_14a .. :try_end_155} :catch_158

    :goto_155
    move-object/from16 v59, v1

    goto :goto_16d

    :catch_158
    move-object v1, v6

    move-object/from16 v19, v1

    move/from16 v62, v9

    move/from16 v11, v36

    const/4 v15, 0x5

    const-wide/16 v63, 0x0

    :goto_162
    move-object v6, v5

    move-object v9, v7

    move/from16 v7, v39

    goto/16 :goto_722

    :cond_168
    :try_start_168
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    goto :goto_155

    :goto_16d
    const-string/jumbo v1, "publicFlags"

    invoke-interface {v8, v6, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_174
    .catch Ljava/lang/NumberFormatException; {:try_start_168 .. :try_end_174} :catch_40e

    if-eqz v1, :cond_193

    :try_start_176
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_17a
    .catch Ljava/lang/NumberFormatException; {:try_start_176 .. :try_end_17a} :catch_17b

    goto :goto_17c

    :catch_17b
    const/4 v1, 0x0

    :goto_17c
    :try_start_17c
    const-string/jumbo v2, "privateFlags"

    invoke-interface {v8, v6, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_183
    .catch Ljava/lang/NumberFormatException; {:try_start_17c .. :try_end_183} :catch_158

    if-eqz v2, :cond_18e

    :try_start_185
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_189
    .catch Ljava/lang/NumberFormatException; {:try_start_185 .. :try_end_189} :catch_18e

    :goto_189
    move/from16 v57, v1

    move/from16 v58, v2

    goto :goto_1d4

    :catch_18e
    :cond_18e
    :goto_18e
    move/from16 v57, v1

    :goto_190
    const/16 v58, 0x0

    goto :goto_1d4

    :cond_193
    :try_start_193
    const-string/jumbo v1, "flags"

    invoke-interface {v8, v6, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_19a
    .catch Ljava/lang/NumberFormatException; {:try_start_193 .. :try_end_19a} :catch_40e

    if-eqz v1, :cond_1c0

    :try_start_19c
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1a0
    .catch Ljava/lang/NumberFormatException; {:try_start_19c .. :try_end_1a0} :catch_1a1

    goto :goto_1a2

    :catch_1a1
    const/4 v1, 0x0

    :goto_1a2
    const/high16 v2, 0x8000000

    and-int/2addr v2, v1

    if-eqz v2, :cond_1a9

    const/4 v2, 0x1

    goto :goto_1aa

    :cond_1a9
    const/4 v2, 0x0

    :goto_1aa
    const/high16 v53, 0x10000000

    and-int v53, v1, v53

    if-eqz v53, :cond_1b2

    or-int/lit8 v2, v2, 0x2

    :cond_1b2
    const/high16 v53, 0x40000000  # 2.0f

    and-int v53, v1, v53

    if-eqz v53, :cond_1ba

    or-int/lit8 v2, v2, 0x8

    :cond_1ba
    const v53, -0x58000001

    and-int v1, v1, v53

    goto :goto_189

    :cond_1c0
    :try_start_1c0
    const-string/jumbo v1, "system"

    invoke-interface {v8, v6, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1c7
    .catch Ljava/lang/NumberFormatException; {:try_start_1c0 .. :try_end_1c7} :catch_40e

    if-eqz v1, :cond_1d1

    :try_start_1c9
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_1d0
    .catch Ljava/lang/NumberFormatException; {:try_start_1c9 .. :try_end_1d0} :catch_158

    goto :goto_18e

    :cond_1d1
    const/16 v57, 0x1

    goto :goto_190

    :goto_1d4
    :try_start_1d4
    const-string/jumbo v1, "ft"

    move-wide/from16 v60, v11

    const-wide/16 v11, 0x0

    invoke-interface {v8, v6, v1, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_1df
    .catch Ljava/lang/NumberFormatException; {:try_start_1d4 .. :try_end_1df} :catch_40e

    cmp-long v21, v1, v11

    if-nez v21, :cond_1ea

    :try_start_1e3
    const-string/jumbo v1, "ts"

    invoke-interface {v8, v6, v1, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_1ea
    .catch Ljava/lang/NumberFormatException; {:try_start_1e3 .. :try_end_1ea} :catch_1ed

    :cond_1ea
    move/from16 v62, v9

    goto :goto_1f9

    :catch_1ed
    move-object v1, v6

    move-object/from16 v19, v1

    move/from16 v62, v9

    move-wide/from16 v63, v11

    move/from16 v11, v36

    const/4 v15, 0x5

    goto/16 :goto_162

    :goto_1f9
    :try_start_1f9
    const-string/jumbo v9, "it"

    invoke-interface {v8, v6, v9, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v63
    :try_end_200
    .catch Ljava/lang/NumberFormatException; {:try_start_1f9 .. :try_end_200} :catch_3fc

    :try_start_200
    const-string/jumbo v9, "ut"

    move-wide/from16 v65, v1

    invoke-interface {v8, v6, v9, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_209
    .catch Ljava/lang/NumberFormatException; {:try_start_200 .. :try_end_209} :catch_3f5

    if-eqz v25, :cond_21c

    :try_start_20b
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto :goto_21e

    :catch_210
    :goto_210
    move-object v1, v6

    move-object/from16 v19, v1

    :goto_213
    move-object v9, v7

    move/from16 v11, v36

    :goto_216
    move/from16 v7, v39

    const/4 v15, 0x5

    :goto_219
    move-object v6, v5

    goto/16 :goto_722

    :cond_21c
    move-object/from16 v2, v25

    :goto_21e
    if-nez v5, :cond_23b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_236
    move-object/from16 v9, p0

    :goto_238
    const/4 v1, 0x5

    goto/16 :goto_315

    :cond_23b
    if-nez v15, :cond_254

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_253
    .catch Ljava/lang/NumberFormatException; {:try_start_20b .. :try_end_253} :catch_210

    goto :goto_236

    :cond_254
    if-gtz v36, :cond_330

    if-eqz v37, :cond_2e9

    if-lez v37, :cond_2bb

    :try_start_25a
    new-instance v53, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v54

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v55, v2

    move-object/from16 v56, v3

    invoke-direct/range {v53 .. v59}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IILjava/util/UUID;)V

    move-object/from16 v2, v53

    iput-object v7, v2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v13, v2, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v14, v2, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v10, v2, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move-wide/from16 v11, v60

    iput-wide v11, v2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move/from16 v3, v37

    iput v3, v2, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move-wide/from16 v3, v65

    iput-wide v3, v2, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V
    :try_end_29c
    .catch Ljava/lang/NumberFormatException; {:try_start_25a .. :try_end_29c} :catch_2b7

    move-object/from16 v9, p0

    :try_start_29e
    iget-object v0, v9, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    iget-object v1, v0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Lcom/android/server/utils/WatchedArrayList;->registerChild(Ljava/lang/Object;)V

    invoke-virtual {v0, v0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V
    :try_end_2ab
    .catch Ljava/lang/NumberFormatException; {:try_start_29e .. :try_end_2ab} :catch_2b2

    move-object v6, v2

    move-object/from16 v23, v5

    move-object v9, v7

    const/4 v15, 0x5

    goto/16 :goto_3b1

    :catch_2b2
    move-object/from16 v19, v2

    move-object v1, v6

    goto/16 :goto_213

    :catch_2b7
    move-object/from16 v9, p0

    goto/16 :goto_210

    :cond_2bb
    move-object/from16 v9, p0

    move/from16 v3, v37

    :try_start_2bf
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has bad sharedUserAppId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_2e7
    .catch Ljava/lang/NumberFormatException; {:try_start_2bf .. :try_end_2e7} :catch_210

    goto/16 :goto_238

    :cond_2e9
    move-object/from16 v9, p0

    :try_start_2eb
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has bad appId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2fa
    .catch Ljava/lang/NumberFormatException; {:try_start_2eb .. :try_end_2fa} :catch_32d

    move/from16 v2, v36

    :try_start_2fc
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_30f
    .catch Ljava/lang/NumberFormatException; {:try_start_2fc .. :try_end_30f} :catch_326

    :try_start_30f
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z
    :try_end_311
    .catch Ljava/lang/NumberFormatException; {:try_start_30f .. :try_end_311} :catch_31b

    const/4 v1, 0x5

    :try_start_312
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_315
    .catch Ljava/lang/NumberFormatException; {:try_start_312 .. :try_end_315} :catch_31c

    :goto_315
    move v15, v1

    move-object/from16 v23, v5

    move-object v9, v7

    goto/16 :goto_3b1

    :catch_31b
    const/4 v1, 0x5

    :catch_31c
    move v15, v1

    move v11, v2

    move-object v1, v6

    move-object/from16 v19, v1

    move-object v9, v7

    move/from16 v7, v39

    goto/16 :goto_219

    :catch_326
    :goto_326
    move v11, v2

    move-object v1, v6

    move-object/from16 v19, v1

    move-object v9, v7

    goto/16 :goto_216

    :catch_32d
    move/from16 v2, v36

    goto :goto_326

    :cond_330
    move-object/from16 v9, p0

    move-object/from16 v55, v2

    move/from16 v2, v36

    move-wide/from16 v11, v60

    move-wide/from16 v3, v65

    const/16 v19, 0x5

    move-wide/from16 v36, v0

    :try_start_33e
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_347
    .catch Ljava/lang/NumberFormatException; {:try_start_33e .. :try_end_347} :catch_3ef

    move v4, v2

    move-object/from16 v23, v5

    move-object v0, v9

    move/from16 v15, v19

    move-wide/from16 v69, v36

    move-object/from16 v2, v55

    move/from16 v5, v57

    move/from16 v6, v58

    move-wide/from16 v67, v65

    move-object v9, v7

    move-object/from16 v7, v59

    :try_start_35a
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IIILjava/util/UUID;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6
    :try_end_35e
    .catch Ljava/lang/NumberFormatException; {:try_start_35a .. :try_end_35e} :catch_3e4

    move v2, v4

    if-nez v6, :cond_38c

    :try_start_361
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v3, v28

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " while parsing settings at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v3, 0x6

    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_3b1

    :catch_382
    move v11, v2

    move-object/from16 v19, v6

    move-object/from16 v6, v23

    move/from16 v7, v39

    const/4 v1, 0x0

    goto/16 :goto_722

    :cond_38c
    iput-object v9, v6, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v13, v6, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v14, v6, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v10, v6, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-wide v11, v6, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move-wide/from16 v3, v67

    iput-wide v3, v6, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move-wide/from16 v3, v69

    invoke-virtual {v6, v3, v4}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)V
    :try_end_3b1
    .catch Ljava/lang/NumberFormatException; {:try_start_361 .. :try_end_3b1} :catch_382

    :goto_3b1
    move/from16 v28, v39

    :goto_3b3
    move-object v7, v9

    move/from16 v12, v20

    move/from16 v10, v26

    move-object/from16 v15, v27

    move/from16 v9, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    move-wide/from16 v71, v34

    move-object/from16 v27, v38

    move-object/from16 v29, v40

    move-object/from16 v30, v41

    move/from16 v31, v42

    move/from16 v32, v43

    move-object/from16 v25, v44

    move-object/from16 v26, v45

    move/from16 v33, v46

    move-object/from16 v1, v47

    move-object/from16 v0, v48

    move/from16 v5, v49

    move/from16 v8, v50

    move/from16 v73, v51

    move/from16 v74, v52

    move/from16 v11, v62

    goto/16 :goto_73d

    :catch_3e4
    move v2, v4

    :goto_3e5
    move v11, v2

    move-object/from16 v6, v23

    move/from16 v7, v39

    const/4 v1, 0x0

    const/16 v19, 0x0

    goto/16 :goto_722

    :catch_3ef
    move-object/from16 v23, v5

    move-object v9, v7

    move/from16 v15, v19

    goto :goto_3e5

    :catch_3f5
    move-object/from16 v23, v5

    move-object v9, v7

    move/from16 v2, v36

    const/4 v15, 0x5

    goto :goto_3e5

    :catch_3fc
    move-object/from16 v23, v5

    move-object v9, v7

    move/from16 v2, v36

    const/4 v15, 0x5

    :goto_402
    move v11, v2

    move-object/from16 v6, v23

    move/from16 v7, v39

    const/4 v1, 0x0

    const/16 v19, 0x0

    :goto_40a
    const-wide/16 v63, 0x0

    goto/16 :goto_722

    :catch_40e
    move-object/from16 v23, v5

    move/from16 v62, v9

    move/from16 v2, v36

    const/4 v15, 0x5

    move-object v9, v7

    goto :goto_402

    :catch_417
    move-object/from16 v23, v5

    move/from16 v62, v9

    move/from16 v2, v36

    const/4 v15, 0x5

    move-object v9, v7

    move v11, v2

    move-object/from16 v6, v23

    move/from16 v7, v39

    const/4 v1, 0x0

    const/16 v19, 0x0

    :goto_427
    const/16 v52, 0x0

    goto :goto_40a

    :catch_42a
    move-object/from16 v23, v5

    move/from16 v62, v9

    move/from16 v2, v36

    const/4 v15, 0x5

    move-object v9, v7

    move v11, v2

    move-object/from16 v6, v23

    move/from16 v7, v39

    const/4 v1, 0x0

    const/16 v19, 0x0

    :goto_43a
    const/16 v51, 0x0

    goto :goto_427

    :catch_43d
    move-object/from16 v23, v5

    move/from16 v62, v9

    move/from16 v2, v36

    const/4 v15, 0x5

    move-object v9, v7

    move v11, v2

    move-object/from16 v6, v23

    move/from16 v7, v39

    const/4 v1, 0x0

    const/16 v19, 0x0

    :goto_44d
    const/16 v50, 0x0

    goto :goto_43a

    :catch_450
    move-object/from16 v23, v5

    move/from16 v62, v9

    move/from16 v2, v36

    const/4 v15, 0x5

    move-object v9, v7

    move v11, v2

    move-object/from16 v6, v23

    move/from16 v7, v39

    const/4 v1, 0x0

    const/16 v19, 0x0

    :goto_460
    const/16 v49, 0x0

    goto :goto_44d

    :catch_463
    move-object/from16 v23, v5

    move/from16 v62, v9

    move/from16 v2, v36

    const/4 v15, 0x5

    move-object v9, v7

    move v11, v2

    move-object/from16 v6, v23

    move/from16 v7, v39

    const/4 v1, 0x0

    const/16 v19, 0x0

    :goto_473
    const/16 v48, 0x0

    goto :goto_460

    :catch_476
    move-object/from16 v23, v5

    move/from16 v62, v9

    move/from16 v2, v36

    const/4 v15, 0x5

    move-object v9, v7

    move v11, v2

    move-object/from16 v6, v23

    move/from16 v7, v39

    const/4 v1, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    goto :goto_473

    :catch_489
    move-object/from16 v23, v5

    move/from16 v62, v9

    move/from16 v2, v36

    const/4 v15, 0x5

    move-object v9, v7

    move v11, v2

    move-object/from16 v6, v23

    move/from16 v7, v39

    const/4 v1, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    :goto_49b
    const/16 v47, 0x0

    goto :goto_473

    :catch_49e
    move-object/from16 v23, v5

    move/from16 v62, v9

    move/from16 v2, v36

    const/4 v15, 0x5

    move-object v9, v7

    move v11, v2

    move-object/from16 v6, v23

    move/from16 v7, v39

    const/4 v1, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    :goto_4b0
    const/16 v46, 0x0

    goto :goto_49b

    :catch_4b3
    move-object/from16 v23, v5

    move/from16 v62, v9

    move/from16 v2, v36

    const/4 v15, 0x5

    move-object v9, v7

    move v11, v2

    move-object/from16 v6, v23

    move/from16 v7, v39

    const/4 v1, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    :goto_4c5
    const/16 v45, 0x0

    goto :goto_4b0

    :catch_4c8
    move-object/from16 v23, v5

    move/from16 v62, v9

    move/from16 v2, v36

    const/4 v15, 0x5

    move-object v9, v7

    move v11, v2

    move-object/from16 v6, v23

    move/from16 v7, v39

    const/4 v1, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    :goto_4da
    const/16 v44, 0x0

    goto :goto_4c5

    :catch_4dd
    move-object/from16 v23, v5

    move/from16 v62, v9

    move/from16 v2, v36

    const/4 v15, 0x5

    move-object v9, v7

    move v11, v2

    move-object/from16 v6, v23

    move/from16 v7, v39

    const/4 v1, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    :goto_4ef
    const/16 v43, 0x0

    goto :goto_4da

    :catch_4f2
    move-object/from16 v23, v5

    move/from16 v62, v9

    move/from16 v2, v36

    const/4 v15, 0x5

    move-object v9, v7

    move v11, v2

    move-object/from16 v6, v23

    move/from16 v7, v39

    const/4 v1, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    :goto_504
    const/16 v42, 0x0

    goto :goto_4ef

    :catch_507
    move-object/from16 v23, v5

    move/from16 v62, v9

    move/from16 v2, v36

    const/4 v15, 0x5

    move-object v9, v7

    move v11, v2

    move-object/from16 v6, v23

    move/from16 v7, v39

    const/4 v1, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    :goto_519
    const/16 v41, 0x0

    goto :goto_504

    :catch_51c
    move-object/from16 v23, v5

    move/from16 v62, v9

    move/from16 v2, v36

    const/4 v15, 0x5

    move-object v9, v7

    move v11, v2

    move-object/from16 v6, v23

    move/from16 v7, v39

    const/4 v1, 0x0

    :goto_52a
    const/16 v19, 0x0

    const/16 v20, -0x1

    :goto_52e
    const/16 v40, 0x0

    goto :goto_519

    :catch_531
    move-object/from16 v23, v5

    move/from16 v62, v9

    move/from16 v2, v36

    const/4 v15, 0x5

    move-object v9, v7

    move v11, v2

    move-object/from16 v6, v23

    const/4 v1, 0x0

    const/4 v7, -0x1

    goto :goto_52a

    :catch_53f
    move-object/from16 v23, v5

    move/from16 v62, v9

    move/from16 v2, v36

    const/4 v15, 0x5

    move-object v9, v7

    move v11, v2

    move-object/from16 v6, v23

    const/4 v1, 0x0

    const/4 v7, -0x1

    const/16 v19, 0x0

    const/16 v20, -0x1

    :goto_550
    const/16 v38, 0x0

    goto :goto_52e

    :catch_553
    move-object/from16 v23, v5

    move/from16 v62, v9

    move/from16 v2, v36

    const/4 v15, 0x5

    move-object v9, v7

    move v11, v2

    move-object/from16 v6, v23

    const/4 v1, 0x0

    const/4 v7, -0x1

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v27, 0x0

    goto :goto_550

    :catch_567
    move-object/from16 v23, v5

    move-object v9, v7

    move/from16 v2, v36

    const/4 v15, 0x5

    move v11, v2

    :goto_56e
    move-object/from16 v6, v23

    const/4 v1, 0x0

    const/4 v7, -0x1

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v27, 0x0

    :goto_578
    const/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    :goto_58c
    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v62, 0x0

    goto/16 :goto_40a

    :catch_598
    move-object/from16 v23, v5

    move-object v9, v7

    move v2, v11

    const/4 v15, 0x5

    goto :goto_56e

    :catch_59e
    move-object/from16 v23, v5

    move/from16 v26, v9

    move v2, v11

    const/4 v15, 0x5

    move-object v9, v7

    move-object/from16 v6, v23

    move-object/from16 v13, v27

    const/4 v1, 0x0

    const/4 v7, -0x1

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v27, 0x0

    const-wide/16 v34, 0x0

    goto :goto_578

    :catch_5b4
    move-object/from16 v23, v5

    move-object v1, v6

    move v3, v9

    move v2, v11

    :goto_5b9
    const/4 v15, 0x5

    move-object v9, v7

    move-object/from16 v19, v1

    move-object/from16 v38, v19

    move-object/from16 v40, v38

    move-object/from16 v41, v40

    move-object/from16 v44, v41

    move-object/from16 v45, v44

    move-object/from16 v47, v45

    move-object/from16 v48, v47

    move/from16 v26, v3

    move-object/from16 v6, v23

    move-object/from16 v13, v27

    const/4 v7, -0x1

    const/16 v20, -0x1

    :goto_5d4
    const-wide/16 v34, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v46, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v62, 0x0

    const-wide/16 v63, 0x0

    move-object/from16 v27, v48

    goto/16 :goto_722

    :catch_5ec
    move-object/from16 v23, v5

    move-object v1, v6

    move/from16 v32, v9

    move v2, v11

    const/4 v3, 0x0

    goto :goto_5b9

    :catch_5f4
    move-object/from16 v23, v5

    move-object v1, v6

    move-object v9, v7

    move v2, v11

    const/4 v3, 0x0

    const/4 v15, 0x5

    move-object/from16 v19, v1

    move-object/from16 v38, v19

    move-object/from16 v40, v38

    move-object/from16 v41, v40

    move-object/from16 v44, v41

    move-object/from16 v45, v44

    move-object/from16 v47, v45

    move-object/from16 v48, v47

    move/from16 v26, v3

    move-object/from16 v6, v23

    move-object/from16 v13, v27

    const/4 v7, -0x1

    const/16 v20, -0x1

    :goto_614
    const/16 v32, 0x0

    goto :goto_5d4

    :catch_617
    move-object/from16 v23, v5

    move-object v1, v6

    move-object v9, v7

    move v2, v11

    const/4 v3, 0x0

    const/4 v15, 0x5

    move-object/from16 v19, v1

    move-object/from16 v38, v19

    move-object/from16 v40, v38

    move-object/from16 v41, v40

    move-object/from16 v44, v41

    move-object/from16 v45, v44

    move-object/from16 v47, v45

    move-object/from16 v48, v47

    move/from16 v26, v3

    move-object/from16 v6, v23

    move-object/from16 v13, v27

    const/4 v7, -0x1

    const/16 v20, -0x1

    :goto_637
    const/16 v31, 0x0

    goto :goto_614

    :catch_63a
    move-object/from16 v23, v5

    move-object v1, v6

    move-object v9, v7

    move v2, v11

    const/4 v3, 0x0

    const/4 v15, 0x5

    move-object/from16 v19, v1

    move-object/from16 v38, v19

    move-object/from16 v40, v38

    move-object/from16 v41, v40

    move-object/from16 v44, v41

    move-object/from16 v45, v44

    move-object/from16 v47, v45

    move-object/from16 v48, v47

    move/from16 v26, v3

    move-object/from16 v6, v23

    move-object/from16 v13, v27

    const/4 v7, -0x1

    const/16 v20, -0x1

    :goto_65a
    const/16 v30, 0x0

    goto :goto_637

    :catch_65d
    move-object/from16 v23, v5

    move-object v1, v6

    move-object v9, v7

    move v2, v11

    const/4 v3, 0x0

    const/4 v15, 0x5

    move-object/from16 v19, v1

    :goto_666
    move-object/from16 v38, v19

    move-object/from16 v40, v38

    move-object/from16 v41, v40

    move-object/from16 v44, v41

    move-object/from16 v45, v44

    move-object/from16 v47, v45

    move-object/from16 v48, v47

    move/from16 v26, v3

    move-object/from16 v6, v23

    move-object/from16 v13, v27

    const/4 v7, -0x1

    const/16 v20, -0x1

    const/16 v29, 0x0

    goto :goto_65a

    :catch_680
    move-object/from16 v23, v5

    move-object v1, v6

    move-object v9, v7

    move v2, v11

    const/4 v3, 0x0

    const/4 v15, 0x5

    move-object v14, v1

    move-object/from16 v19, v14

    goto :goto_666

    :catch_68b
    move-object/from16 v23, v5

    move-object v1, v6

    move-object v9, v7

    move v2, v11

    const/4 v3, 0x0

    const/4 v15, 0x5

    move-object v13, v1

    :goto_693
    move-object v14, v13

    move-object/from16 v19, v14

    move-object/from16 v27, v19

    move-object/from16 v38, v27

    move-object/from16 v40, v38

    move-object/from16 v41, v40

    move-object/from16 v44, v41

    move-object/from16 v45, v44

    move-object/from16 v47, v45

    move-object/from16 v48, v47

    :goto_6a6
    move/from16 v26, v3

    move-object/from16 v6, v23

    const/4 v7, -0x1

    :goto_6ab
    const/16 v20, -0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v34, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v46, 0x0

    goto/16 :goto_58c

    :catch_6bf
    move-object/from16 v23, v5

    move-object v1, v6

    move v2, v11

    const/4 v3, 0x0

    const/4 v15, 0x5

    move-object v9, v1

    move-object v13, v9

    goto :goto_693

    :catch_6c8
    move-object/from16 v23, v5

    move-object v1, v6

    move v2, v11

    const/4 v3, 0x0

    const/4 v15, 0x5

    move-object v9, v1

    move-object v13, v9

    move-object v14, v13

    move-object/from16 v19, v14

    move-object/from16 v27, v19

    move-object/from16 v38, v27

    move-object/from16 v40, v38

    move-object/from16 v41, v40

    move-object/from16 v44, v41

    move-object/from16 v45, v44

    move-object/from16 v47, v45

    move-object/from16 v48, v47

    move v11, v2

    goto :goto_6a6

    :goto_6e5
    move-object v9, v1

    move-object v13, v9

    move-object v14, v13

    move-object/from16 v19, v14

    move-object/from16 v27, v19

    move-object/from16 v38, v27

    move-object/from16 v40, v38

    move-object/from16 v41, v40

    move-object/from16 v44, v41

    move-object/from16 v45, v44

    move-object/from16 v47, v45

    move-object/from16 v48, v47

    move/from16 v26, v3

    move-object/from16 v6, v23

    :goto_6fe
    const/4 v7, -0x1

    const/4 v11, 0x0

    goto :goto_6ab

    :catch_701
    move-object/from16 v23, v5

    move-object v1, v6

    const/4 v3, 0x0

    const/4 v15, 0x5

    goto :goto_6e5

    :catch_707
    move-object v1, v6

    const/4 v3, 0x0

    const/4 v15, 0x5

    move-object v9, v6

    move-object v13, v9

    move-object v14, v13

    move-object/from16 v19, v14

    move-object/from16 v27, v19

    move-object/from16 v38, v27

    move-object/from16 v40, v38

    move-object/from16 v41, v40

    move-object/from16 v44, v41

    move-object/from16 v45, v44

    move-object/from16 v47, v45

    move-object/from16 v48, v47

    move/from16 v26, v3

    goto :goto_6fe

    :goto_722
    const-string v2, "Error in package manager settings: package "

    const-string v3, " has bad appId "

    const-string v4, " at "

    invoke-static {v11, v2, v6, v3, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v15, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    move-object/from16 v23, v6

    move/from16 v28, v7

    move-object/from16 v6, v19

    goto/16 :goto_3b3

    :goto_73d
    if-eqz v6, :cond_c17

    move-object/from16 v34, v15

    invoke-static/range {v25 .. v33}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZ)Lcom/android/server/pm/InstallSource;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v15, v6, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v1, v6, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput v12, v6, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v7, v6, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v13, v6, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v14, v6, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move/from16 v1, v17

    invoke-virtual {v6, v1, v9}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    const/4 v1, 0x4

    invoke-virtual {v6, v1, v2}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    const/16 v2, 0x10

    invoke-virtual {v6, v2, v3}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    const/16 v2, 0x20

    invoke-virtual {v6, v2, v4}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget v2, v6, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    cmpg-float v2, v2, v10

    if-gez v2, :cond_790

    iput v10, v6, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_790
    move-wide/from16 v2, v71

    iput-wide v2, v6, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v0, v6, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput v5, v6, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput v11, v6, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput v8, v6, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move-object/from16 v0, v34

    iput-object v0, v6, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move/from16 v2, v16

    move/from16 v0, v74

    invoke-virtual {v6, v2, v0}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move/from16 v0, v73

    invoke-virtual {v6, v0}, Lcom/android/server/pm/PackageSetting;->setPageSizeAppCompatFlags(I)V

    const-string/jumbo v0, "enabled"

    move-object/from16 v8, p1

    const/4 v2, 0x0

    invoke-interface {v8, v2, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_825

    :try_start_7cd
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "settings"
    :try_end_7d4
    .catch Ljava/lang/NumberFormatException; {:try_start_7cd .. :try_end_7d4} :catch_7db

    const/4 v13, 0x0

    :try_start_7d5
    invoke-virtual {v6, v2, v13, v3}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V
    :try_end_7d8
    .catch Ljava/lang/NumberFormatException; {:try_start_7d5 .. :try_end_7d8} :catch_7dc

    :goto_7d8
    move-object/from16 v0, p0

    goto :goto_82d

    :catch_7db
    const/4 v13, 0x0

    :catch_7dc
    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7ed

    const-string/jumbo v0, "settings"

    const/4 v2, 0x1

    invoke-virtual {v6, v2, v13, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_7d8

    :cond_7ed
    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7fe

    const-string/jumbo v0, "settings"

    const/4 v2, 0x2

    invoke-virtual {v6, v2, v13, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_7d8

    :cond_7fe
    const-string/jumbo v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_80e

    const-string/jumbo v0, "settings"

    invoke-virtual {v6, v13, v13, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_7d8

    :cond_80e
    const-string v2, "Error in package manager settings: package "

    const-string v3, " has bad enabled value: "

    const-string v4, " at "

    move-object/from16 v5, v23

    invoke-static {v2, v5, v3, v0, v4}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_7d8

    :cond_825
    const-string/jumbo v0, "settings"

    const/4 v2, 0x0

    invoke-virtual {v6, v2, v2, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_7d8

    :goto_82d
    invoke-virtual {v0, v15}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    :goto_834
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_845

    const/4 v4, 0x3

    if-ne v3, v4, :cond_849

    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_845

    goto :goto_849

    :cond_845
    const-wide/16 v21, 0x0

    goto/16 :goto_c07

    :cond_849
    :goto_849
    if-eq v3, v4, :cond_bff

    if-ne v3, v1, :cond_84e

    goto :goto_834

    :cond_84e
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "disabled-components"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8d3

    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    :cond_85f
    :goto_85f
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_8c6

    if-ne v5, v4, :cond_86e

    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_8c6

    :cond_86e
    if-eq v5, v4, :cond_85f

    if-ne v5, v1, :cond_873

    goto :goto_85f

    :cond_873
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "item"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8b0

    const-string/jumbo v5, "name"

    const/4 v7, 0x0

    invoke-interface {v8, v7, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_89e

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v13, 0x0

    invoke-virtual {v6, v13, v7, v13}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v9

    iget-object v7, v9, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v7, v5}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    const/4 v15, 0x5

    goto :goto_8c2

    :cond_89e
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Error in package manager settings: <disabled-components> has no name at "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v5}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v15, 0x5

    invoke-static {v15, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_8c2

    :cond_8b0
    const/4 v15, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Unknown element under <disabled-components>: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v15, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_8c2
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_85f

    :cond_8c6
    :goto_8c6
    move-object/from16 v9, p2

    :goto_8c8
    move-object/from16 v10, p3

    move-object/from16 v5, p4

    :goto_8cc
    move v12, v1

    :cond_8cd
    :goto_8cd
    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v11, 0x1

    :goto_8d0
    const/4 v15, 0x5

    goto/16 :goto_bfc

    :cond_8d3
    const-string/jumbo v5, "enabled-components"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_94c

    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    :cond_8e0
    :goto_8e0
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_8f0

    if-ne v5, v4, :cond_8f2

    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_8f0

    goto :goto_8f2

    :cond_8f0
    const/4 v13, 0x0

    goto :goto_8c6

    :cond_8f2
    :goto_8f2
    if-eq v5, v4, :cond_8e0

    if-ne v5, v1, :cond_8f7

    goto :goto_8e0

    :cond_8f7
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "item"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_935

    const-string/jumbo v5, "name"

    const/4 v7, 0x0

    invoke-interface {v8, v7, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_922

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v13, 0x0

    invoke-virtual {v6, v13, v13, v7}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v9

    iget-object v7, v9, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v7, v5}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    const/4 v15, 0x5

    goto :goto_948

    :cond_922
    const/4 v13, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Error in package manager settings: <enabled-components> has no name at "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v5}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v15, 0x5

    invoke-static {v15, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_948

    :cond_935
    const/4 v13, 0x0

    const/4 v15, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Unknown element under <enabled-components>: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v15, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_948
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8e0

    :cond_94c
    const/4 v13, 0x0

    const-string/jumbo v5, "sigs"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95f

    iget-object v3, v6, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v9, p2

    invoke-virtual {v3, v8, v9}, Lcom/android/server/pm/PackageSignatures;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;)V

    goto/16 :goto_8c8

    :cond_95f
    move-object/from16 v9, p2

    const-string/jumbo v5, "perms"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_990

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v3

    if-eqz v3, :cond_97f

    iget v3, v6, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v3

    if-eqz v3, :cond_97d

    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v3

    goto :goto_981

    :cond_97d
    const/4 v3, 0x0

    goto :goto_981

    :cond_97f
    iget-object v3, v6, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    :goto_981
    move-object/from16 v5, p4

    if-eqz v3, :cond_98c

    invoke-static {v8, v3, v5}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v7}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    :cond_98c
    move-object/from16 v10, p3

    goto/16 :goto_8cc

    :cond_990
    move-object/from16 v5, p4

    const-string/jumbo v7, "proper-signing-keyset"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9d8

    const-string/jumbo v3, "identifier"

    const/4 v7, 0x0

    invoke-interface {v8, v7, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v10, p3

    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_9c5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v18, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9d2

    :cond_9c5
    const/16 v18, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9d2
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    iput-wide v3, v7, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    goto/16 :goto_8cc

    :cond_9d8
    move-object/from16 v10, p3

    const-string/jumbo v7, "signing-keyset"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9e5

    goto/16 :goto_8cc

    :cond_9e5
    const-string/jumbo v7, "upgrade-keyset"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a02

    const-string/jumbo v3, "identifier"

    const/4 v7, 0x0

    invoke-interface {v8, v7, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    iget-object v11, v7, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    invoke-static {v11, v3, v4}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object v3

    iput-object v3, v7, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    goto/16 :goto_8cc

    :cond_a02
    const-string/jumbo v7, "defined-keyset"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a54

    const-string/jumbo v3, "identifier"

    const/4 v7, 0x0

    invoke-interface {v8, v7, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    const-string/jumbo v11, "alias"

    invoke-interface {v8, v7, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_a3a

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v18, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v12, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a47

    :cond_a3a
    const/16 v18, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v7, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a47
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    iget-object v7, v7, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v11, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8cc

    :cond_a54
    const-string/jumbo v7, "install-initiator-sigs"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_aa4

    new-instance v3, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v3}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    invoke-virtual {v3, v8, v9}, Lcom/android/server/pm/PackageSignatures;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;)V

    iget-object v4, v6, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v7, v4, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    if-ne v3, v7, :cond_a6c

    goto :goto_a96

    :cond_a6c
    iget-boolean v7, v4, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    iget-boolean v11, v4, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    iget-object v12, v4, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    iget-object v14, v4, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    iget-object v15, v4, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iget v13, v4, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    iget-object v1, v4, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    move-object/from16 v29, v1

    iget-object v1, v4, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    iget v4, v4, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    move-object/from16 v30, v1

    move-object/from16 v25, v3

    move/from16 v24, v4

    move/from16 v31, v7

    move/from16 v32, v11

    move-object/from16 v26, v12

    move/from16 v23, v13

    move-object/from16 v27, v14

    move-object/from16 v28, v15

    invoke-static/range {v23 .. v32}, Lcom/android/server/pm/InstallSource;->createInternal(IILcom/android/server/pm/PackageSignatures;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/InstallSource;

    move-result-object v4

    :goto_a96
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v6, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :goto_a9e
    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x4

    goto/16 :goto_8d0

    :cond_aa4
    const-string/jumbo v1, "domain-verification"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac8

    new-instance v1, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v1, v8}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iget-object v4, v6, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    check-cast v3, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iget-object v3, v3, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    iget-object v7, v3, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_abd
    invoke-virtual {v3, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getOrCreateStateLocked(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    move-result-object v3

    iput-object v1, v3, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    monitor-exit v7

    goto :goto_a9e

    :catchall_ac5
    move-exception v0

    monitor-exit v7
    :try_end_ac7
    .catchall {:try_start_abd .. :try_end_ac7} :catchall_ac5

    throw v0

    :cond_ac8
    const-string/jumbo v1, "mime-group"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b65

    const-string/jumbo v1, "name"

    const/4 v7, 0x0

    invoke-interface {v8, v7, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_ae1

    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v1, 0x0

    const/4 v12, 0x4

    goto :goto_b37

    :cond_ae1
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v7

    :cond_aea
    :goto_aea
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_afa

    if-ne v11, v4, :cond_afc

    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v12

    if-le v12, v7, :cond_afa

    goto :goto_afc

    :cond_afa
    const/4 v12, 0x4

    goto :goto_b33

    :cond_afc
    :goto_afc
    if-eq v11, v4, :cond_aea

    const/4 v12, 0x4

    if-ne v11, v12, :cond_b02

    goto :goto_aea

    :cond_b02
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "mime-type"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b1d

    const-string/jumbo v11, "value"

    const/4 v13, 0x0

    invoke-interface {v8, v13, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_aea

    invoke-virtual {v3, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_aea

    :cond_b1d
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Unknown element under <mime-group>: "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v11}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    sget-boolean v13, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v15, 0x5

    invoke-static {v15, v11}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_aea

    :goto_b33
    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    :goto_b37
    if-eqz v1, :cond_8cd

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-object v4, v6, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-nez v4, :cond_b4c

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v6, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    :cond_b4c
    iget-object v4, v6, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-nez v4, :cond_b60

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b60
    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_8cd

    :cond_b65
    const/4 v12, 0x4

    const-string/jumbo v1, "uses-static-lib"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b74

    invoke-static {v8, v6}, Lcom/android/server/pm/Settings;->readUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto/16 :goto_8cd

    :cond_b74
    const-string/jumbo v1, "uses-sdk-lib"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b82

    invoke-static {v8, v6}, Lcom/android/server/pm/Settings;->readUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto/16 :goto_8cd

    :cond_b82
    const-string/jumbo v1, "split-version"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_be4

    const-string/jumbo v1, "name"

    const/4 v7, 0x0

    invoke-interface {v8, v7, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "version"

    const/4 v4, -0x1

    invoke-interface {v8, v7, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-eqz v1, :cond_bcf

    if-ltz v3, :cond_bcf

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSplitNames()[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    const-class v13, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSplitNames()[Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    iput-object v13, v6, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSplitNames()[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    if-ne v11, v13, :cond_bd1

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSplitNames()[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSplitRevisionCodes()[I

    move-result-object v11

    aput v3, v11, v1

    iput-object v11, v6, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_bcf
    const/4 v11, 0x1

    goto :goto_bdf

    :cond_bd1
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSplitRevisionCodes()[I

    move-result-object v1

    const/4 v11, 0x1

    invoke-static {v1, v3, v11}, Lcom/android/internal/util/ArrayUtils;->appendInt([IIZ)[I

    move-result-object v1

    iput-object v1, v6, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :goto_bdf
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_8d0

    :cond_be4
    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v11, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unknown element under <package>: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v15, 0x5

    invoke-static {v15, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_bfc
    move v1, v12

    goto/16 :goto_834

    :cond_bff
    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v5, p4

    goto/16 :goto_834

    :goto_c07
    cmp-long v0, v63, v21

    if-eqz v0, :cond_c1c

    iget-object v0, v6, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-static/range {v63 .. v64}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c1c

    :cond_c17
    move-object/from16 v8, p1

    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_c1c
    :goto_c1c
    return-void
.end method

.method public final readPackageRestrictionsLPr(ILandroid/util/ArrayMap;Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)V
    .registers 59

    move-object/from16 v1, p0

    move/from16 v3, p1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_b
    iget-object v7, v1, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_4e5
    .catchall {:try_start_b .. :try_end_e} :catchall_4e0

    :try_start_e
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v8
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_4ce

    if-nez v8, :cond_29

    move-object/from16 v9, p3

    :try_start_16
    invoke-static {v9, v3}, Lcom/android/server/pm/Settings;->restorePackagesState(Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;I)Ljava/io/FileInputStream;

    move-result-object v8
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1d

    :goto_1a
    move-object/from16 v28, v8

    goto :goto_2c

    :catchall_1d
    move-exception v0

    move-object/from16 v30, v2

    move/from16 v33, v4

    move/from16 v32, v5

    move-object/from16 v31, v7

    move-object v6, v8

    goto/16 :goto_4d9

    :cond_29
    move-object/from16 v9, p3

    goto :goto_1a

    :goto_2c
    if-nez v28, :cond_c1

    :try_start_2e
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v6, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v10

    invoke-virtual {v6, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getDeDataInode()J

    move-result-wide v12
    :try_end_54
    .catchall {:try_start_2e .. :try_end_54} :catchall_b0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v14, v5

    move-wide/from16 v53, v10

    move v11, v4

    move-wide/from16 v4, v53

    const/4 v10, 0x0

    move v15, v11

    const/4 v11, 0x0

    move-object/from16 v16, v2

    move-object v2, v6

    move-wide/from16 v53, v12

    move-object v13, v7

    move-wide/from16 v6, v53

    const/4 v12, 0x0

    move-object/from16 v17, v13

    const/4 v13, 0x0

    move/from16 v18, v14

    const/4 v14, 0x0

    move/from16 v19, v15

    const/4 v15, 0x0

    move-object/from16 v20, v16

    const/16 v16, 0x0

    move-object/from16 v21, v17

    const/16 v17, 0x0

    move/from16 v22, v18

    const/16 v18, 0x0

    move/from16 v29, v19

    const/16 v19, 0x0

    move-object/from16 v30, v20

    const/16 v20, 0x0

    move-object/from16 v31, v21

    const/16 v21, 0x0

    move/from16 v32, v22

    const/16 v22, 0x0

    move/from16 v1, v32

    :try_start_97
    invoke-virtual/range {v2 .. v27}, Lcom/android/server/pm/PackageSetting;->setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;)V

    move-object/from16 v9, p3

    move v5, v1

    move-object/from16 v2, v30

    move-object/from16 v7, v31

    const/4 v4, 0x0

    move-object/from16 v1, p0

    goto :goto_38

    :catchall_a5
    move-exception v0

    :goto_a6
    const/16 v33, 0x0

    move/from16 v32, v1

    move-object/from16 v6, v28

    move-object/from16 v1, p0

    goto/16 :goto_4d9

    :catchall_b0
    move-exception v0

    move-object/from16 v30, v2

    move v1, v5

    move-object/from16 v31, v7

    goto :goto_a6

    :cond_b7
    move-object/from16 v30, v2

    move v1, v5

    move-object/from16 v31, v7

    monitor-exit v31
    :try_end_bd
    .catchall {:try_start_97 .. :try_end_bd} :catchall_a5

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :cond_c1
    move-object/from16 v30, v2

    move v1, v5

    move-object/from16 v31, v7

    :try_start_c6
    monitor-exit v31
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_4c4

    :try_start_c7
    invoke-static/range {v28 .. v28}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    :goto_cb
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_cf} :catch_4bb
    .catchall {:try_start_c7 .. :try_end_cf} :catchall_fe

    const/4 v4, 0x2

    if-eq v2, v4, :cond_d5

    if-eq v2, v1, :cond_d5

    goto :goto_cb

    :cond_d5
    const/4 v5, 0x5

    if-eq v2, v4, :cond_102

    move-object/from16 v2, p0

    :try_start_da
    iget-object v0, v2, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "No start tag found in package restrictions file\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "No start tag found in package manager package restrictions file"

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_ea} :catch_100
    .catchall {:try_start_da .. :try_end_ea} :catchall_fe

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :goto_ee
    move-object v1, v0

    move-object/from16 v2, v30

    goto/16 :goto_51b

    :goto_f3
    move/from16 v32, v1

    move-object v1, v2

    move-object/from16 v6, v28

    move-object/from16 v2, v30

    :goto_fa
    const/16 v33, 0x0

    goto/16 :goto_4ee

    :catchall_fe
    move-exception v0

    goto :goto_ee

    :catch_100
    move-exception v0

    goto :goto_f3

    :cond_102
    move-object/from16 v2, p0

    :try_start_104
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v7

    :goto_108
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v8
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_10c} :catch_421
    .catchall {:try_start_104 .. :try_end_10c} :catchall_fe

    if-eq v8, v1, :cond_4b7

    const/4 v9, 0x3

    if-ne v8, v9, :cond_117

    :try_start_111
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v10
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_115} :catch_100
    .catchall {:try_start_111 .. :try_end_115} :catchall_fe

    if-le v10, v7, :cond_4b7

    :cond_117
    if-eq v8, v9, :cond_4b3

    const/4 v10, 0x4

    if-ne v8, v10, :cond_11d

    goto :goto_108

    :cond_11d
    :try_start_11d
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v11, "pkg"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_42b

    const-string/jumbo v8, "name"

    invoke-interface {v0, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v11, v2, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_133} :catch_421
    .catchall {:try_start_11d .. :try_end_133} :catchall_fe

    :try_start_133
    iget-object v11, v11, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_139} :catch_426
    .catchall {:try_start_133 .. :try_end_139} :catchall_fe

    :try_start_139
    check-cast v11, Lcom/android/server/pm/PackageSetting;
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_13b} :catch_421
    .catchall {:try_start_139 .. :try_end_13b} :catchall_fe

    if-nez v11, :cond_159

    :try_start_13d
    const-string/jumbo v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "No package known for package restrictions "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_158} :catch_100
    .catchall {:try_start_13d .. :try_end_158} :catchall_fe

    goto :goto_108

    :cond_159
    :try_start_159
    const-string/jumbo v12, "ceDataInode"

    const-wide/16 v13, 0x0

    invoke-interface {v0, v6, v12, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v15

    const-string/jumbo v12, "deDataInode"

    invoke-interface {v0, v6, v12, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v17

    const-string/jumbo v12, "inst"

    invoke-interface {v0, v6, v12, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    const-string/jumbo v4, "stopped"
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_173} :catch_421
    .catchall {:try_start_159 .. :try_end_173} :catchall_fe

    const/4 v10, 0x0

    :try_start_174
    invoke-interface {v0, v6, v4, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v5, "nl"

    invoke-interface {v0, v6, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    const-string/jumbo v9, "hidden"

    invoke-interface {v0, v6, v9, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_19c

    const-string/jumbo v9, "blocked"

    invoke-interface {v0, v6, v9, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_18f} :catch_190
    .catchall {:try_start_174 .. :try_end_18f} :catchall_fe

    goto :goto_19c

    :catch_190
    move-exception v0

    move/from16 v32, v1

    move-object v1, v2

    move/from16 v33, v10

    :goto_196
    move-object/from16 v6, v28

    :goto_198
    move-object/from16 v2, v30

    goto/16 :goto_4ee

    :cond_19c
    :goto_19c
    :try_start_19c
    const-string/jumbo v1, "distraction_flags"

    invoke-interface {v0, v6, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v13, "suspended"

    invoke-interface {v0, v6, v13, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    const-string/jumbo v14, "suspending-package"

    invoke-interface {v0, v6, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_1b1
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_1b1} :catch_41c
    .catchall {:try_start_19c .. :try_end_1b1} :catchall_fe

    :try_start_1b1
    const-string/jumbo v10, "suspend_dialog_message"

    invoke-interface {v0, v6, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_1b8
    .catch Ljava/lang/Exception; {:try_start_1b1 .. :try_end_1b8} :catch_407
    .catchall {:try_start_1b1 .. :try_end_1b8} :catchall_fe

    if-eqz v13, :cond_1bf

    if-nez v14, :cond_1bf

    :try_start_1bc
    const-string/jumbo v14, "android"
    :try_end_1bf
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1bf} :catch_1c2
    .catchall {:try_start_1bc .. :try_end_1bf} :catchall_fe

    :cond_1bf
    move/from16 v25, v1

    goto :goto_1cc

    :catch_1c2
    move-exception v0

    move-object v1, v2

    move-object/from16 v6, v28

    move-object/from16 v2, v30

    const/16 v32, 0x1

    goto/16 :goto_fa

    :goto_1cc
    :try_start_1cc
    const-string/jumbo v1, "blockUninstall"
    :try_end_1cf
    .catch Ljava/lang/Exception; {:try_start_1cc .. :try_end_1cf} :catch_407
    .catchall {:try_start_1cc .. :try_end_1cf} :catchall_fe

    move/from16 v26, v4

    const/4 v4, 0x0

    :try_start_1d2
    invoke-interface {v0, v6, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    move/from16 v27, v1

    const-string/jumbo v1, "instant-app"

    invoke-interface {v0, v6, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    move/from16 v31, v1

    const-string/jumbo v1, "virtual-preload"

    invoke-interface {v0, v6, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    move/from16 v33, v1

    const-string/jumbo v1, "enabled"

    invoke-interface {v0, v6, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1
    :try_end_1f1
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_1f1} :catch_417
    .catchall {:try_start_1d2 .. :try_end_1f1} :catchall_fe

    :try_start_1f1
    const-string/jumbo v4, "enabledCaller"

    invoke-interface {v0, v6, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move/from16 v34, v1

    const-string/jumbo v1, "harmful-app-warning"

    invoke-interface {v0, v6, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v35, v1

    const-string/jumbo v1, "domainVerificationStatus"
    :try_end_206
    .catch Ljava/lang/Exception; {:try_start_1f1 .. :try_end_206} :catch_407
    .catchall {:try_start_1f1 .. :try_end_206} :catchall_fe

    move-object/from16 v36, v4

    const/4 v4, 0x0

    :try_start_209
    invoke-interface {v0, v6, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    move/from16 v37, v5

    const-string/jumbo v5, "install-reason"

    invoke-interface {v0, v6, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    move/from16 v38, v5

    const-string/jumbo v5, "uninstall-reason"

    invoke-interface {v0, v6, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5
    :try_end_21f
    .catch Ljava/lang/Exception; {:try_start_209 .. :try_end_21f} :catch_417
    .catchall {:try_start_209 .. :try_end_21f} :catchall_fe

    :try_start_21f
    const-string/jumbo v4, "splash-screen-theme"

    invoke-interface {v0, v6, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v39, v4

    const-string/jumbo v4, "first-install-time"

    move-object/from16 v40, v11

    move/from16 v41, v12

    const-wide/16 v11, 0x0

    invoke-interface {v0, v6, v4, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v42

    const-string/jumbo v4, "min-aspect-ratio"
    :try_end_238
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_238} :catch_407
    .catchall {:try_start_21f .. :try_end_238} :catchall_fe

    const/4 v11, 0x0

    :try_start_239
    invoke-interface {v0, v6, v4, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4
    :try_end_23d
    .catch Ljava/lang/Exception; {:try_start_239 .. :try_end_23d} :catch_40f
    .catchall {:try_start_239 .. :try_end_23d} :catchall_fe

    :try_start_23d
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v11

    move/from16 v45, v4

    move/from16 v50, v5

    move-object v4, v6

    move-object v12, v4

    move-object/from16 v19, v12

    move-object/from16 v46, v19

    move-wide/from16 v47, v17

    move/from16 v49, v27

    const/16 v17, 0x2

    move-object/from16 v18, v46

    move-object/from16 v27, v18

    :goto_255
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5
    :try_end_259
    .catch Ljava/lang/Exception; {:try_start_23d .. :try_end_259} :catch_407
    .catchall {:try_start_23d .. :try_end_259} :catchall_fe

    move/from16 v51, v7

    const/4 v7, 0x1

    if-eq v5, v7, :cond_269

    const/4 v7, 0x3

    if-ne v5, v7, :cond_26d

    :try_start_261
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v11, :cond_269

    const/4 v7, 0x3

    goto :goto_26d

    :cond_269
    move/from16 v52, v9

    goto/16 :goto_359

    :cond_26d
    :goto_26d
    if-eq v5, v7, :cond_272

    const/4 v7, 0x4

    if-ne v5, v7, :cond_276

    :cond_272
    move/from16 v52, v9

    goto/16 :goto_353

    :cond_276
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_524

    goto :goto_2d0

    :sswitch_282
    const-string/jumbo v7, "suspended-dialog-info"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d0

    move/from16 v5, v17

    goto :goto_2d1

    :sswitch_28e
    const-string/jumbo v7, "suspend-params"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d0

    const/4 v5, 0x5

    goto :goto_2d1

    :sswitch_299
    const-string/jumbo v7, "suspended-launcher-extras"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d0

    const/4 v5, 0x4

    goto :goto_2d1

    :sswitch_2a4
    const-string/jumbo v7, "suspended-app-extras"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d0

    const/4 v5, 0x3

    goto :goto_2d1

    :sswitch_2af
    const-string/jumbo v7, "enabled-components"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d0

    const/4 v5, 0x0

    goto :goto_2d1

    :sswitch_2ba
    const-string/jumbo v7, "disabled-components"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d0

    const/4 v5, 0x1

    goto :goto_2d1

    :sswitch_2c5
    const-string/jumbo v7, "archive-state"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d0

    const/4 v5, 0x6

    goto :goto_2d1

    :cond_2d0
    :goto_2d0
    const/4 v5, -0x1

    :goto_2d1
    packed-switch v5, :pswitch_data_542

    const-string/jumbo v5, "PackageSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v52, v9

    const-string/jumbo v9, "Unknown tag "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " under tag "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "pkg"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_353

    :pswitch_2fe  #0x6
    move/from16 v52, v9

    invoke-static {v0}, Lcom/android/server/pm/Settings;->parseArchiveState(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v5

    move-object/from16 v27, v5

    goto :goto_353

    :pswitch_307  #0x5
    move/from16 v52, v9

    invoke-static {v3, v0}, Lcom/android/server/pm/Settings;->readSuspensionParamsLPr(ILcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/Map$Entry;

    move-result-object v5

    if-nez v5, :cond_310

    goto :goto_353

    :cond_310
    if-nez v46, :cond_317

    new-instance v46, Landroid/util/ArrayMap;

    invoke-direct/range {v46 .. v46}, Landroid/util/ArrayMap;-><init>()V

    :cond_317
    move-object/from16 v7, v46

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserPackage;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/SuspendParams;

    invoke-virtual {v7, v9, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v46, v7

    goto :goto_353

    :pswitch_32b  #0x4
    move/from16 v52, v9

    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v4

    goto :goto_353

    :pswitch_332  #0x3
    move/from16 v52, v9

    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v5

    move-object v6, v5

    goto :goto_353

    :pswitch_33a  #0x2
    move/from16 v52, v9

    invoke-static {v0}, Landroid/content/pm/SuspendDialogInfo;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v5

    move-object v12, v5

    goto :goto_353

    :pswitch_342  #0x1
    move/from16 v52, v9

    invoke-static {v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/util/ArraySet;

    move-result-object v5

    move-object/from16 v19, v5

    goto :goto_353

    :pswitch_34b  #0x0
    move/from16 v52, v9

    invoke-static {v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/util/ArraySet;

    move-result-object v5

    move-object/from16 v18, v5

    :goto_353
    move/from16 v7, v51

    move/from16 v9, v52

    goto/16 :goto_255

    :goto_359
    if-nez v12, :cond_36e

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_36e

    new-instance v5, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v5}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    invoke-virtual {v5, v10}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v12
    :try_end_36e
    .catch Ljava/lang/Exception; {:try_start_261 .. :try_end_36e} :catch_1c2
    .catchall {:try_start_261 .. :try_end_36e} :catchall_fe

    :cond_36e
    if-eqz v13, :cond_395

    if-nez v46, :cond_395

    :try_start_372
    new-instance v5, Lcom/android/server/pm/pkg/SuspendParams;
    :try_end_374
    .catch Ljava/lang/Exception; {:try_start_372 .. :try_end_374} :catch_392
    .catchall {:try_start_372 .. :try_end_374} :catchall_fe

    const/4 v11, 0x0

    :try_start_375
    invoke-direct {v5, v12, v6, v4, v11}, Lcom/android/server/pm/pkg/SuspendParams;-><init>(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Z)V

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v3, v14}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_384
    .catch Ljava/lang/Exception; {:try_start_375 .. :try_end_384} :catch_386
    .catchall {:try_start_375 .. :try_end_384} :catchall_fe

    move-object v14, v4

    goto :goto_398

    :catch_386
    move-exception v0

    :goto_387
    move-object v1, v2

    move/from16 v33, v11

    move-object/from16 v6, v28

    move-object/from16 v2, v30

    const/16 v32, 0x1

    goto/16 :goto_4ee

    :catch_392
    move-exception v0

    const/4 v11, 0x0

    goto :goto_387

    :cond_395
    const/4 v11, 0x0

    move-object/from16 v14, v46

    :goto_398
    if-eqz v49, :cond_3a9

    const/4 v4, 0x1

    :try_start_39b
    invoke-virtual {v2, v3, v8, v4}, Lcom/android/server/pm/Settings;->setBlockUninstallLPw(ILjava/lang/String;Z)V

    :goto_39e
    const-wide/16 v23, 0x0

    goto :goto_3ab

    :catch_3a1
    move-exception v0

    move-object v1, v2

    move/from16 v32, v4

    move/from16 v33, v11

    goto/16 :goto_196

    :cond_3a9
    const/4 v4, 0x1

    goto :goto_39e

    :goto_3ab
    cmp-long v5, v42, v23

    if-eqz v5, :cond_3e3

    :goto_3af
    move/from16 v29, v1

    move-object v1, v2

    move/from16 v32, v4

    move-wide v4, v15

    move/from16 v13, v25

    move/from16 v10, v26

    move/from16 v15, v31

    move/from16 v16, v33

    move-object/from16 v22, v35

    move/from16 v20, v38

    move-object/from16 v23, v39

    move-object/from16 v2, v40

    move/from16 v9, v41

    move-wide/from16 v24, v42

    move/from16 v26, v45

    move-wide/from16 v6, v47

    move/from16 v21, v50

    move/from16 v12, v52

    const/16 v44, 0x0

    move-object/from16 v35, v0

    move-object v0, v8

    move/from16 v33, v11

    move/from16 v31, v17

    move/from16 v8, v34

    move-object/from16 v17, v36

    move/from16 v11, v37

    const/16 v34, 0x5

    goto :goto_3f4

    :cond_3e3
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v6, p2

    invoke-virtual {v6, v8, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v42
    :try_end_3f3
    .catch Ljava/lang/Exception; {:try_start_39b .. :try_end_3f3} :catch_3a1
    .catchall {:try_start_39b .. :try_end_3f3} :catchall_fe

    goto :goto_3af

    :goto_3f4
    :try_start_3f4
    invoke-virtual/range {v2 .. v27}, Lcom/android/server/pm/PackageSetting;->setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;)V

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    check-cast v2, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    move/from16 v4, v29

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setLegacyUserState(IILjava/lang/String;)Z

    move-object/from16 v0, v35

    goto/16 :goto_4a6

    :catch_404
    move-exception v0

    goto/16 :goto_196

    :catch_407
    move-exception v0

    move-object v1, v2

    const/16 v32, 0x1

    :goto_40b
    const/16 v33, 0x0

    goto/16 :goto_196

    :catch_40f
    move-exception v0

    move-object v1, v2

    move/from16 v33, v11

    :goto_413
    const/16 v32, 0x1

    goto/16 :goto_196

    :catch_417
    move-exception v0

    move-object v1, v2

    move/from16 v33, v4

    goto :goto_413

    :catch_41c
    move-exception v0

    move-object v1, v2

    move/from16 v33, v10

    goto :goto_413

    :catch_421
    move-exception v0

    move/from16 v32, v1

    move-object v1, v2

    goto :goto_40b

    :catch_426
    move-exception v0

    move/from16 v32, v1

    move-object v1, v2

    goto :goto_40b

    :cond_42b
    move-object/from16 v35, v0

    move/from16 v32, v1

    move-object v1, v2

    move/from16 v31, v4

    move/from16 v34, v5

    move-object/from16 v44, v6

    move/from16 v51, v7

    const/16 v33, 0x0

    const-string/jumbo v0, "preferred-activities"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_449

    move-object/from16 v0, v35

    invoke-virtual {v1, v3, v0}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_4a6

    :cond_449
    move-object/from16 v0, v35

    const-string/jumbo v2, "persistent-preferred-activities"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_458

    invoke-virtual {v1, v3, v0}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_4a6

    :cond_458
    const-string/jumbo v2, "crossProfile-intent-filters"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_465

    invoke-virtual {v1, v3, v0}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_4a6

    :cond_465
    const-string/jumbo v2, "default-apps"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47a

    invoke-static {v0}, Lcom/android/server/pm/Settings;->readDefaultApps(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4a6

    iget-object v4, v1, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4, v3, v2}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4a6

    :cond_47a
    const-string/jumbo v2, "block-uninstall-packages"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_487

    invoke-virtual {v1, v3, v0}, Lcom/android/server/pm/Settings;->readBlockUninstallPackagesLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_4a6

    :cond_487
    const-string/jumbo v2, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown element under <stopped-packages>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4a6
    .catch Ljava/lang/Exception; {:try_start_3f4 .. :try_end_4a6} :catch_404
    .catchall {:try_start_3f4 .. :try_end_4a6} :catchall_fe

    :cond_4a6
    :goto_4a6
    move-object v2, v1

    move/from16 v4, v31

    move/from16 v1, v32

    move/from16 v5, v34

    move-object/from16 v6, v44

    move/from16 v7, v51

    goto/16 :goto_108

    :cond_4b3
    const/16 v33, 0x0

    goto/16 :goto_108

    :cond_4b7
    move-object/from16 v2, v30

    goto/16 :goto_517

    :catch_4bb
    move-exception v0

    const/16 v33, 0x0

    move/from16 v32, v1

    move-object/from16 v1, p0

    goto/16 :goto_196

    :catchall_4c4
    move-exception v0

    const/16 v33, 0x0

    move/from16 v32, v1

    move-object/from16 v1, p0

    move-object/from16 v6, v28

    goto :goto_4d9

    :catchall_4ce
    move-exception v0

    move-object/from16 v30, v2

    move/from16 v33, v4

    move/from16 v32, v5

    move-object/from16 v44, v6

    move-object/from16 v31, v7

    :goto_4d9
    :try_start_4d9
    monitor-exit v31
    :try_end_4da
    .catchall {:try_start_4d9 .. :try_end_4da} :catchall_4de

    :try_start_4da
    throw v0
    :try_end_4db
    .catch Ljava/lang/Exception; {:try_start_4da .. :try_end_4db} :catch_4db
    .catchall {:try_start_4da .. :try_end_4db} :catchall_fe

    :catch_4db
    move-exception v0

    goto/16 :goto_198

    :catchall_4de
    move-exception v0

    goto :goto_4d9

    :catchall_4e0
    move-exception v0

    move-object/from16 v30, v2

    :goto_4e3
    move-object v1, v0

    goto :goto_51b

    :catch_4e5
    move-exception v0

    move-object/from16 v30, v2

    move/from16 v33, v4

    move/from16 v32, v5

    move-object/from16 v44, v6

    :goto_4ee
    :try_start_4ee
    iget-object v4, v2, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_50a

    iget-object v4, v2, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_50a

    iget-object v4, v2, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_507

    goto :goto_50a

    :cond_507
    move/from16 v4, v33

    goto :goto_50c

    :cond_50a
    :goto_50a
    move/from16 v4, v32

    :goto_50c
    if-eqz v4, :cond_514

    invoke-virtual {v2, v6, v0}, Lcom/android/server/pm/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    goto :goto_514

    :catchall_512
    move-exception v0

    goto :goto_4e3

    :cond_514
    :goto_514
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(ILandroid/util/ArrayMap;Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)V
    :try_end_517
    .catchall {:try_start_4ee .. :try_end_517} :catchall_512

    :goto_517
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :goto_51b
    :try_start_51b
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_51e
    .catchall {:try_start_51b .. :try_end_51e} :catchall_51f

    goto :goto_523

    :catchall_51f
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_523
    throw v1

    :sswitch_data_524
    .sparse-switch
        -0x7cf1603a -> :sswitch_2c5
        -0x78da70f9 -> :sswitch_2ba
        -0x75017ede -> :sswitch_2af
        -0x5ee8613f -> :sswitch_2a4
        -0x54ce12c2 -> :sswitch_299
        -0x3326b7c9 -> :sswitch_28e
        0x62ff4521 -> :sswitch_282
    .end sparse-switch

    :pswitch_data_542
    .packed-switch 0x0
        :pswitch_34b  #00000000
        :pswitch_342  #00000001
        :pswitch_33a  #00000002
        :pswitch_332  #00000003
        :pswitch_32b  #00000004
        :pswitch_307  #00000005
        :pswitch_2fe  #00000006
    .end packed-switch
.end method

.method public final readPersistentPreferredActivitiesLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 7

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    :cond_4
    :goto_4
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5b

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5b

    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    goto :goto_4

    :cond_1a
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "item"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    new-instance v1, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-direct {v1, p2}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v3, v2, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    if-nez v3, :cond_40

    new-instance v3, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    invoke-direct {v3}, Lcom/android/server/pm/PersistentPreferredIntentResolver;-><init>()V

    invoke-virtual {v2, p1, v3}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    :cond_40
    const/4 v2, 0x0

    invoke-virtual {v3, v2, v1}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;)V

    goto :goto_4

    :cond_45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown element under <persistent-preferred-activities>: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_5b
    return-void
.end method

.method public final readPreferredActivitiesLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 20

    move-object/from16 v0, p2

    const/4 v1, 0x1

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    :cond_7
    :goto_7
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    if-eq v3, v1, :cond_10f

    const/4 v4, 0x3

    if-ne v3, v4, :cond_16

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_10f

    :cond_16
    if-eq v3, v4, :cond_7

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1c

    goto :goto_7

    :cond_1c
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_f5

    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v3, v0}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    iget-object v5, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v6, v5, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v6, :cond_d1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/WatchedIntentResolver;->findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_ca

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_47

    goto/16 :goto_ca

    :cond_47
    iget-boolean v7, v5, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-nez v7, :cond_4f

    :cond_4b
    move/from16 v16, v1

    goto/16 :goto_10b

    :cond_4f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    move v9, v8

    :goto_55
    if-ge v9, v7, :cond_ca

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PreferredActivity;

    iget-object v10, v10, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v11, v10, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-eqz v11, :cond_c3

    iget v11, v5, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    const/high16 v12, 0xfff0000

    and-int/2addr v11, v12

    iget v12, v10, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    if-ne v12, v11, :cond_c3

    iget-object v11, v10, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    if-eqz v11, :cond_c3

    iget-object v12, v5, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    if-eqz v12, :cond_c3

    iget-object v13, v5, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    iget-object v14, v10, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    if-eqz v14, :cond_c3

    if-nez v13, :cond_7d

    goto :goto_c3

    :cond_7d
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c3

    iget-object v14, v10, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c3

    array-length v13, v12

    array-length v14, v11

    if-eq v13, v14, :cond_a0

    goto :goto_c3

    :cond_a0
    move v13, v8

    :goto_a1
    if-ge v13, v14, :cond_4b

    aget-object v15, v11, v13

    move/from16 v16, v1

    aget-object v1, v12, v13

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    iget-object v1, v10, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v1, v1, v13

    iget-object v15, v5, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v15, v15, v13

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_be

    goto :goto_c5

    :cond_be
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v16

    goto :goto_a1

    :cond_c3
    :goto_c3
    move/from16 v16, v1

    :cond_c5
    :goto_c5
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v16

    goto :goto_55

    :cond_ca
    :goto_ca
    move/from16 v16, v1

    const/4 v1, 0x0

    invoke-virtual {v4, v1, v3}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;)V

    goto :goto_10b

    :cond_d1
    move/from16 v16, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error in package manager settings: <preferred-activity> "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v5, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v4, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_10b

    :cond_f5
    move/from16 v16, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unknown element under <preferred-activities>: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v4, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_10b
    move/from16 v1, v16

    goto/16 :goto_7

    :cond_10f
    return-void
.end method

.method public final readSettingsLPw(Lcom/android/server/pm/ComputerLocked;Ljava/util/List;Landroid/util/ArrayMap;Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)Z
    .registers 24

    move-object/from16 v1, p0

    const-string/jumbo v0, "No start tag found in package manager settings"

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayList;->clear()V

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    invoke-virtual/range {p3 .. p3}, Landroid/util/ArrayMap;->clear()V

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/server/pm/ResilientAtomicFile;

    move-object v3, v2

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object v4, v3

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPreviousSettingsFilename:Ljava/io/File;

    move-object v5, v4

    iget-object v4, v1, Lcom/android/server/pm/Settings;->mSettingsReserveCopyFilename:Ljava/io/File;

    move-object v1, v5

    const/16 v5, 0x1b0

    const-string/jumbo v6, "package manager settings"

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V

    move-object/from16 v18, v7

    move-object v7, v1

    move-object/from16 v1, v18

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    :try_start_3a
    invoke-virtual {v7}, Lcom/android/server/pm/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3e} :catch_2c4
    .catchall {:try_start_3a .. :try_end_3e} :catchall_46

    if-nez v2, :cond_44

    :try_start_40
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/Settings;->restorePackages(Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_44} :catch_4a
    .catchall {:try_start_40 .. :try_end_44} :catchall_46

    :cond_44
    move-object v13, v2

    goto :goto_53

    :catchall_46
    move-exception v0

    move-object v1, v0

    goto/16 :goto_2f4

    :catch_4a
    move-exception v0

    move-object/from16 v3, p1

    move-object v12, v2

    move v6, v10

    move/from16 v16, v11

    goto/16 :goto_2cb

    :goto_53
    const-string/jumbo v14, "primary_physical"

    if-nez v13, :cond_75

    :try_start_58
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    invoke-virtual {v1, v14}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_68} :catch_6c
    .catchall {:try_start_58 .. :try_end_68} :catchall_46

    invoke-virtual {v7}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return v10

    :catch_6c
    move-exception v0

    move-object/from16 v3, p1

    move v6, v10

    move/from16 v16, v11

    :goto_72
    move-object v12, v13

    goto/16 :goto_2cb

    :cond_75
    :try_start_75
    invoke-static {v13}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v2

    :goto_79
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7d} :catch_6c
    .catchall {:try_start_75 .. :try_end_7d} :catchall_46

    const/4 v4, 0x2

    if-eq v3, v4, :cond_83

    if-eq v3, v11, :cond_83

    goto :goto_79

    :cond_83
    const-string/jumbo v15, "PackageManager"

    if-eq v3, v4, :cond_9d

    :try_start_88
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string/jumbo v3, "No start tag found in settings file\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    invoke-static {v15, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_99} :catch_6c
    .catchall {:try_start_88 .. :try_end_99} :catchall_46

    invoke-virtual {v7}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return v10

    :cond_9d
    :try_start_9d
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    :goto_a1
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    if-eq v3, v11, :cond_b1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_b8

    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_b1

    goto :goto_b8

    :cond_b1
    move-object/from16 v3, p1

    move v6, v10

    move/from16 v16, v11

    goto/16 :goto_2c0

    :cond_b8
    :goto_b8
    if-eq v3, v4, :cond_2bb

    const/4 v4, 0x4

    if-ne v3, v4, :cond_be

    goto :goto_a1

    :cond_be
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "package"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_de

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v4, v8

    move-object v3, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Settings;->readPackageLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;Landroid/util/ArrayMap;Ljava/util/List;Landroid/util/ArrayMap;)V

    :cond_d4
    :goto_d4
    move-object/from16 v17, v3

    move v6, v10

    move/from16 v16, v11

    move-object v10, v12

    :goto_da
    move-object/from16 v3, p1

    goto/16 :goto_2a9

    :cond_de
    move-object/from16 v5, p2

    move-object v4, v8

    move-object v8, v3

    move-object v3, v9

    const-string/jumbo v6, "permissions"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_ea} :catch_6c
    .catchall {:try_start_9d .. :try_end_ea} :catchall_46

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    if-eqz v6, :cond_f2

    :try_start_ee
    invoke-virtual {v9, v2}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->readPermissions(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_d4

    :cond_f2
    const-string/jumbo v6, "permission-trees"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ff

    invoke-virtual {v9, v2}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->readPermissionTrees(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_d4

    :cond_ff
    const-string/jumbo v6, "shared-user"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10c

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/pm/Settings;->readSharedUserLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;Ljava/util/List;)V

    goto :goto_d4

    :cond_10c
    const-string/jumbo v6, "preferred-packages"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_116

    goto :goto_d4

    :cond_116
    const-string/jumbo v6, "preferred-activities"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_123

    invoke-virtual {v1, v10, v2}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_d4

    :cond_123
    const-string/jumbo v6, "persistent-preferred-activities"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_130

    invoke-virtual {v1, v10, v2}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_d4

    :cond_130
    const-string/jumbo v6, "crossProfile-intent-filters"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13d

    invoke-virtual {v1, v10, v2}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_d4

    :cond_13d
    const-string/jumbo v6, "default-browser"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_152

    invoke-static {v2}, Lcom/android/server/pm/Settings;->readDefaultApps(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d4

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v8, v10, v6}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d4

    :cond_152
    const-string/jumbo v6, "updated-package"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_160

    invoke-virtual {v1, v2, v5}, Lcom/android/server/pm/Settings;->readDisabledSysPackageLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/List;)V

    goto/16 :goto_d4

    :cond_160
    const-string/jumbo v6, "renamed-package"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_182

    const-string/jumbo v6, "new"

    invoke-interface {v2, v12, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "old"

    invoke-interface {v2, v12, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v6, :cond_d4

    if-eqz v8, :cond_d4

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v9, v6, v8}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d4

    :cond_182
    const-string/jumbo v6, "last-platform-version"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_189} :catch_6c
    .catchall {:try_start_ee .. :try_end_189} :catchall_46

    const-string/jumbo v9, "fingerprint"

    move/from16 v16, v11

    const-string/jumbo v11, "buildFingerprint"

    const-string/jumbo v10, "external"

    const-string/jumbo v12, "internal"

    if-eqz v6, :cond_1d0

    :try_start_199
    sget-object v6, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v6

    invoke-virtual {v1, v14}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v8

    move-object/from16 v17, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v5, v12, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    iput v12, v6, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-interface {v2, v5, v10, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    iput v10, v8, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v2, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    iput-object v3, v6, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    invoke-static {v2, v9}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    iput-object v3, v6, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_199 .. :try_end_1c3} :catch_1c9
    .catchall {:try_start_199 .. :try_end_1c3} :catchall_46

    move-object/from16 v3, p1

    const/4 v6, 0x0

    :goto_1c6
    const/4 v10, 0x0

    goto/16 :goto_2a9

    :catch_1c9
    move-exception v0

    move-object/from16 v3, p1

    move-object v12, v13

    const/4 v6, 0x0

    goto/16 :goto_2cb

    :cond_1d0
    move-object/from16 v17, v3

    :try_start_1d2
    const-string/jumbo v3, "database-version"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_1d9} :catch_2b5
    .catchall {:try_start_1d2 .. :try_end_1d9} :catchall_46

    if-eqz v3, :cond_1fe

    :try_start_1db
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v3

    invoke-virtual {v1, v14}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v5
    :try_end_1e5
    .catch Ljava/lang/Exception; {:try_start_1db .. :try_end_1e5} :catch_1fb
    .catchall {:try_start_1db .. :try_end_1e5} :catchall_46

    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_1e7
    invoke-interface {v2, v8, v12, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v3, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-interface {v2, v8, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v5, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    :goto_1f3
    move-object/from16 v3, p1

    goto :goto_1c6

    :catch_1f6
    move-exception v0

    :goto_1f7
    move-object/from16 v3, p1

    goto/16 :goto_72

    :catch_1fb
    move-exception v0

    const/4 v6, 0x0

    goto :goto_1f7

    :cond_1fe
    const/4 v6, 0x0

    const-string/jumbo v3, "verifier"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_217

    const-string/jumbo v3, "device"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/VerifierDeviceIdentity;->parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    goto :goto_1f3

    :cond_217
    const-string/jumbo v3, "read-external-storage"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_221

    goto :goto_1f3

    :cond_221
    const-string/jumbo v3, "keyset-settings"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_230

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/pm/KeySetManagerService;->readKeySetsLPw(Landroid/util/ArrayMap;Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_1f3

    :cond_230
    const-string/jumbo v3, "version"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_265

    const-string/jumbo v3, "volumeUuid"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v3

    const-string/jumbo v5, "sdkVersion"

    const/4 v10, 0x0

    invoke-interface {v2, v10, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    const-string/jumbo v5, "databaseVersion"

    invoke-interface {v2, v10, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v2, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    invoke-static {v2, v9}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    goto/16 :goto_da

    :cond_265
    const/4 v10, 0x0

    const-string/jumbo v3, "domain-verifications"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_26d
    .catch Ljava/lang/Exception; {:try_start_1e7 .. :try_end_26d} :catch_1f6
    .catchall {:try_start_1e7 .. :try_end_26d} :catchall_46

    iget-object v5, v1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    if-eqz v3, :cond_27c

    :try_start_271
    check-cast v5, Lcom/android/server/pm/verify/domain/DomainVerificationService;
    :try_end_273
    .catch Ljava/lang/Exception; {:try_start_271 .. :try_end_273} :catch_279
    .catchall {:try_start_271 .. :try_end_273} :catchall_46

    move-object/from16 v3, p1

    :try_start_275
    invoke-virtual {v5, v3, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->readSettings(Lcom/android/server/pm/ComputerLocked;Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_2a9

    :catch_279
    move-exception v0

    goto/16 :goto_1f7

    :cond_27c
    move-object/from16 v3, p1

    const-string/jumbo v9, "domain-verifications-legacy"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28d

    check-cast v5, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->readLegacySettings(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_2a9

    :cond_28d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown element under <packages>: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_2a9
    move-object v8, v4

    move-object v12, v10

    move/from16 v11, v16

    move-object/from16 v9, v17

    move v10, v6

    goto/16 :goto_a1

    :catch_2b2
    move-exception v0

    goto/16 :goto_72

    :catch_2b5
    move-exception v0

    move-object/from16 v3, p1

    const/4 v6, 0x0

    goto/16 :goto_72

    :cond_2bb
    move-object/from16 v3, p1

    move v6, v10

    goto/16 :goto_a1

    :goto_2c0
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_2c3
    .catch Ljava/lang/Exception; {:try_start_275 .. :try_end_2c3} :catch_2b2
    .catchall {:try_start_275 .. :try_end_2c3} :catchall_46

    goto :goto_2f0

    :catch_2c4
    move-exception v0

    move-object/from16 v3, p1

    move v6, v10

    move/from16 v16, v11

    move-object v10, v12

    :goto_2cb
    :try_start_2cb
    iget-object v2, v7, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2e6

    iget-object v2, v7, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2e6

    iget-object v2, v7, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2e4

    goto :goto_2e6

    :cond_2e4
    move v10, v6

    goto :goto_2e8

    :cond_2e6
    :goto_2e6
    move/from16 v10, v16

    :goto_2e8
    if-eqz v10, :cond_2ed

    invoke-virtual {v7, v12, v0}, Lcom/android/server/pm/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    :cond_2ed
    invoke-virtual/range {p0 .. p4}, Lcom/android/server/pm/Settings;->readSettingsLPw(Lcom/android/server/pm/ComputerLocked;Ljava/util/List;Landroid/util/ArrayMap;Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)Z
    :try_end_2f0
    .catchall {:try_start_2cb .. :try_end_2f0} :catchall_46

    :goto_2f0
    invoke-virtual {v7}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return v16

    :goto_2f4
    :try_start_2f4
    invoke-virtual {v7}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_2f7
    .catchall {:try_start_2f4 .. :try_end_2f7} :catchall_2f8

    goto :goto_2fc

    :catchall_2f8
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2fc
    throw v1
.end method

.method public final readSharedUserLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;Ljava/util/List;)V
    .registers 10

    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userId"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v4, "system"

    invoke-interface {p1, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x5

    if-nez v1, :cond_2b

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Error in package manager settings: <shared-user> has no name at "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v5, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_5d

    :cond_2b
    if-nez v2, :cond_41

    const-string p0, "Error in package manager settings: shared-user "

    const-string v3, " has bad appId "

    const-string v4, " at "

    invoke-static {v2, p0, v1, v3, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v5, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_5d

    :cond_41
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v4, v3, v0}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    if-nez v0, :cond_5d

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Occurred while parsing settings at "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v1, 0x6

    invoke-static {v1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :cond_5d
    :goto_5d
    if-eqz v0, :cond_b1

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p0

    :cond_63
    :goto_63
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_73

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, p0, :cond_b0

    :cond_73
    if-eq v1, v2, :cond_63

    const/4 v2, 0x4

    if-ne v1, v2, :cond_79

    goto :goto_63

    :cond_79
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sigs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    iget-object v1, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/PackageSignatures;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_63

    :cond_8c
    const-string/jumbo v2, "perms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    iget-object v1, v0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-static {p1, v1, p3}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    goto :goto_63

    :cond_9b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown element under <shared-user>: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v5, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_63

    :cond_b0
    return-void

    :cond_b1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public final registerAppIdLPw(Lcom/android/server/pm/PackageSetting;)Z
    .registers 5

    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    if-eqz v0, :cond_d

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/AppIdSettingMap;->registerExistingAppId(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_15

    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppIdSettingMap;->acquireAndRegisterNewAppId(Lcom/android/server/pm/SettingBase;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageSetting;->setAppId(I)V

    const/4 p0, 0x1

    :goto_15
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    if-ltz v0, :cond_1a

    return p0

    :cond_1a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Package "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    const-string v2, " could not be assigned a valid UID"

    invoke-static {p0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v1, 0x5

    invoke-static {v1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-static {v1, p1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x4

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public final registerObservers$1()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/pm/Settings$1;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    iget-object v2, v0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayList;->registerObserver(Lcom/android/server/utils/Watcher;)V

    iget-object v0, v0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedArrayList;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public final removeAppIdLPw(I)V
    .registers 5

    const/16 v0, 0x2710

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    if-lt p1, v0, :cond_17

    iget-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    iget-object v1, v0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit16 v2, p1, -0x2710

    if-ge v2, v1, :cond_1c

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/utils/WatchedArrayList;->set(ILcom/android/server/pm/SettingBase;)V

    goto :goto_1c

    :cond_17
    iget-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->delete(I)V

    :cond_1c
    :goto_1c
    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mFirstAvailableAppId:I

    if-le p1, v0, :cond_24

    iput p1, p0, Lcom/android/server/pm/AppIdSettingMap;->mFirstAvailableAppId:I

    :cond_24
    return-void
.end method

.method public final removePackageAndAppIdLPw(Ljava/lang/String;)Z
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    const/4 v3, 0x0

    if-eqz v2, :cond_e3

    iget-object v4, v0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object v5, v4, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1c

    goto/16 :goto_cf

    :cond_1c
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v5, v5, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v7, "com.sec.android.app.samsungapps"

    if-eqz v5, :cond_3a

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cf

    const-string/jumbo v5, "com.android.vending"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    goto/16 :goto_cf

    :cond_3a
    sget-boolean v5, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    if-eqz v5, :cond_50

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v5, v5, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_50

    goto/16 :goto_cf

    :cond_50
    move v5, v3

    :goto_51
    iget-object v7, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v7, v7, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v5, v7, :cond_cc

    iget-object v7, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v7, v7, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    if-nez v1, :cond_6e

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_c4

    :cond_6e
    iget-object v9, v8, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iget-boolean v10, v8, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    if-eqz v9, :cond_7e

    if-nez v10, :cond_7e

    move v9, v6

    move/from16 v20, v9

    goto :goto_81

    :cond_7e
    move v9, v3

    move/from16 v20, v10

    :goto_81
    iget-object v10, v8, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_8d

    move v9, v6

    move-object v15, v12

    goto :goto_8e

    :cond_8d
    move-object v15, v10

    :goto_8e
    iget-object v10, v8, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9f

    const/4 v9, -0x1

    move/from16 v19, v6

    move v11, v9

    move-object/from16 v16, v12

    move/from16 v9, v19

    goto :goto_a7

    :cond_9f
    iget v11, v8, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    iget-boolean v13, v8, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    move-object/from16 v16, v10

    move/from16 v19, v13

    :goto_a7
    iget-object v10, v8, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b3

    move v9, v6

    move-object/from16 v17, v12

    goto :goto_b5

    :cond_b3
    move-object/from16 v17, v10

    :goto_b5
    if-nez v9, :cond_b8

    goto :goto_c4

    :cond_b8
    iget v12, v8, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    iget-object v13, v8, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v14, v8, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    const/16 v18, 0x0

    invoke-static/range {v11 .. v20}, Lcom/android/server/pm/InstallSource;->createInternal(IILcom/android/server/pm/PackageSignatures;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/InstallSource;

    move-result-object v8

    :goto_c4
    iput-object v8, v7, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v7}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    :cond_cc
    invoke-virtual {v4, v1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    :cond_cf
    :goto_cf
    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v1

    if-eqz v1, :cond_dd

    invoke-virtual {v1, v2}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/Settings;->checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z

    move-result v0

    return v0

    :cond_dd
    iget v1, v2, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    return v6

    :cond_e3
    return v3
.end method

.method public final removeUserLPw(I)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_a

    :cond_25
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2d
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    iget-object v2, v1, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    iget-object v1, v1, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_2d .. :try_end_46} :catchall_e8

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    monitor-enter v1

    :try_start_49
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v0, v0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->delete(I)V

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(IZ)V

    goto :goto_60

    :catchall_5d
    move-exception p0

    goto/16 :goto_e6

    :cond_60
    :goto_60
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v0, v0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v3, v2

    :goto_69
    if-ge v3, v0, :cond_aa

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v4, v4, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v5, v5, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/CrossProfileIntentResolver;

    new-instance v6, Landroid/util/ArraySet;

    iget-object v7, v5, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v2

    :cond_8d
    :goto_8d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/CrossProfileIntentFilter;

    iget v9, v8, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    if-ne v9, p1, :cond_8d

    invoke-virtual {v5, v8}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    const/4 v7, 0x1

    goto :goto_8d

    :cond_a2
    if-eqz v7, :cond_a7

    invoke-virtual {p0, v4, v2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(IZ)V

    :cond_a7
    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    :cond_aa
    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_49 .. :try_end_ab} :catchall_5d

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget-object v2, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b0
    iget-object v1, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v1, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v2
    :try_end_c5
    .catchall {:try_start_b0 .. :try_end_c5} :catchall_e3

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    check-cast v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->clearUser(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_d5

    return-void

    :cond_d5
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    const-string/jumbo v1, "remove_userid"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    return-void

    :catchall_e3
    move-exception p0

    :try_start_e4
    monitor-exit v2
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    throw p0

    :goto_e6
    :try_start_e6
    monitor-exit v1
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_5d

    throw p0

    :catchall_e8
    move-exception p0

    :try_start_e9
    monitor-exit v0
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    throw p0
.end method

.method public final setBlockUninstallLPw(ILjava/lang/String;Z)V
    .registers 5

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz p3, :cond_1a

    if-nez v0, :cond_16

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    :cond_16
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1a
    if-eqz v0, :cond_28

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_28

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->delete(I)V

    :cond_28
    return-void
.end method

.method public final setPermissionControllerVersion(J)V
    .registers 8

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?pc_version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mExtendedFingerprint:Ljava/lang/String;

    const/4 p1, 0x0

    :goto_24
    if-ge p1, v1, :cond_46

    iget-object p2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mExtendedFingerprint:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_24

    :catchall_44
    move-exception p0

    goto :goto_48

    :cond_46
    monitor-exit v0

    return-void

    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_44

    throw p0
.end method

.method public final snapshot()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/Settings;

    return-object p0
.end method

.method public final systemReady(Lcom/android/server/pm/resolution/ComponentResolver;)Ljava/util/ArrayList;
    .registers 13

    const/4 v0, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_d
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v5, v5, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_9f

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v5, v5, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PreferredIntentResolver;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v6, v5, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2e
    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PreferredActivity;

    iget-object v8, v7, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v8, v8, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    iget-object v9, p1, Lcom/android/server/pm/resolution/ComponentResolverLocked;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v9

    :try_start_43
    iget-object v10, p1, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    iget-object v10, v10, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4f

    move v8, v0

    goto :goto_50

    :cond_4f
    move v8, v3

    :goto_50
    monitor-exit v9
    :try_end_51
    .catchall {:try_start_43 .. :try_end_51} :catchall_57

    if-nez v8, :cond_2e

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :catchall_57
    move-exception p0

    :try_start_58
    monitor-exit v9
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_5c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_9c

    move v6, v3

    :goto_63
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_8d

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PreferredActivity;

    const-string/jumbo v8, "PackageSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Removing dangling preferred activity: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v7, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v10, v10, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v7}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    add-int/2addr v6, v0

    goto :goto_63

    :cond_8d
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v5, v5, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9c
    add-int/2addr v4, v0

    goto/16 :goto_d

    :cond_9f
    invoke-virtual {p0, p0}, Lcom/android/server/pm/Settings;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-object v1
.end method

.method public final unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public final writeAllUsersPackageRestrictionsLPr(Z)V
    .registers 6

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_38

    :cond_c
    if-eqz p1, :cond_22

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_11
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1f

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_22

    :catchall_1f
    move-exception p0

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0

    :cond_22
    :goto_22
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_28
    if-ge v1, v2, :cond_38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(IZ)V

    goto :goto_28

    :cond_38
    :goto_38
    return-void
.end method

.method public final writeBlockUninstallPackagesLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V
    .registers 8

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_35

    const/4 p2, 0x0

    const-string/jumbo v0, "block-uninstall-packages"

    invoke-interface {p1, p2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    :goto_14
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    const-string/jumbo v2, "block-uninstall"

    invoke-interface {p1, p2, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "packageName"

    invoke-interface {p1, p2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, p2, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_32
    invoke-interface {p1, p2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_35
    return-void
.end method

.method public final writeCrossProfileIntentFiltersLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V
    .registers 8

    const/4 v0, 0x0

    const-string/jumbo v1, "crossProfile-intent-filters"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/CrossProfileIntentResolver;

    if-eqz p0, :cond_61

    iget-object p0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_61

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/CrossProfileIntentFilter;

    const-string/jumbo v2, "item"

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v3, p2, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    const-string/jumbo v4, "targetUserId"

    invoke-interface {p1, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "flags"

    iget v4, p2, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "ownerPackage"

    iget-object v4, p2, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "accessControl"

    iget v4, p2, Lcom/android/server/pm/CrossProfileIntentFilter;->mAccessControlLevel:I

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "filter"

    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p2, p2, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1d

    :cond_61
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeKernelMappingLPr()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_5

    goto :goto_59

    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_1c

    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_1c
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_26

    :cond_3b
    :goto_3b
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v3, v0, :cond_59

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_59
    :goto_59
    return-void
.end method

.method public final writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-eqz v0, :cond_9a

    if-eqz p1, :cond_9a

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    if-nez v0, :cond_c

    goto/16 :goto_9a

    :cond_c
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v3, v2, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Settings$KernelPackageState;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_22

    move v6, v4

    goto :goto_23

    :cond_22
    move v6, v5

    :goto_23
    if-nez v6, :cond_2f

    iget-object v7, v3, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    invoke-static {p1, v7}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v7

    if-nez v7, :cond_2e

    goto :goto_2f

    :cond_2e
    move v4, v5

    :cond_2f
    :goto_2f
    new-instance v7, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v7, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v6, :cond_43

    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    new-instance v3, Lcom/android/server/pm/Settings$KernelPackageState;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v0, v3}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_53

    new-instance p0, Ljava/io/File;

    const-string/jumbo v0, "appid"

    invoke-direct {p0, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    :cond_53
    if-eqz v4, :cond_9a

    move p0, v5

    :goto_56
    array-length v0, p1

    if-ge p0, v0, :cond_75

    iget-object v0, v3, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz v0, :cond_65

    aget v1, p1, p0

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_72

    :cond_65
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "excluded_userids"

    invoke-direct {v0, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aget v1, p1, p0

    invoke-static {v0, v1}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    :cond_72
    add-int/lit8 p0, p0, 0x1

    goto :goto_56

    :cond_75
    iget-object p0, v3, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz p0, :cond_98

    :goto_79
    iget-object p0, v3, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    array-length v0, p0

    if-ge v5, v0, :cond_98

    aget p0, p0, v5

    invoke-static {p1, p0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    if-nez p0, :cond_95

    new-instance p0, Ljava/io/File;

    const-string/jumbo v0, "clear_userid"

    invoke-direct {p0, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v0, v0, v5

    invoke-static {p0, v0}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    :cond_95
    add-int/lit8 v5, v5, 0x1

    goto :goto_79

    :cond_98
    iput-object p1, v3, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    :cond_9a
    :goto_9a
    return-void
.end method

.method public final writeLPr(Lcom/android/server/pm/Computer;Z)V
    .registers 26

    move-object/from16 v7, p0

    const-string/jumbo v0, "renamed-package"

    iget-object v8, v7, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    const-string/jumbo v9, "shared-user"

    const-string/jumbo v10, "permissions"

    iget-object v11, v7, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    const-string/jumbo v12, "permission-trees"

    const-string/jumbo v13, "verifier"

    const-string/jumbo v14, "version"

    const-string/jumbo v15, "packages"

    iget-object v1, v7, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    invoke-virtual {v7, v7}, Lcom/android/server/pm/Settings;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v1

    new-instance v1, Lcom/android/server/pm/ResilientAtomicFile;

    move-object v4, v2

    iget-object v2, v7, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object v5, v3

    iget-object v3, v7, Lcom/android/server/pm/Settings;->mPreviousSettingsFilename:Ljava/io/File;

    move-object v6, v4

    iget-object v4, v7, Lcom/android/server/pm/Settings;->mSettingsReserveCopyFilename:Ljava/io/File;

    move-object/from16 v18, v5

    const/16 v5, 0x1b0

    move-object/from16 v19, v6

    const-string/jumbo v6, "package manager settings"

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v18, v8

    move-object/from16 v8, v19

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V

    const/4 v2, 0x0

    :try_start_50
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_54} :catch_216
    .catchall {:try_start_50 .. :try_end_54} :catchall_210

    :try_start_54
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    invoke-interface {v4, v2, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    :goto_68
    iget-object v5, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_6e} :catch_213
    .catchall {:try_start_54 .. :try_end_6e} :catchall_210

    if-ge v6, v5, :cond_cc

    :try_start_70
    iget-object v5, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/Settings$VersionInfo;

    move/from16 v21, v6

    const/4 v6, 0x0

    invoke-interface {v4, v6, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "volumeUuid"

    invoke-static {v4, v6, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v5, "sdkVersion"

    iget v6, v2, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_91} :catch_c8
    .catchall {:try_start_70 .. :try_end_91} :catchall_c4

    move-object/from16 v22, v1

    const/4 v1, 0x0

    :try_start_94
    invoke-interface {v4, v1, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "databaseVersion"

    iget v6, v2, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-interface {v4, v1, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "buildFingerprint"

    iget-object v5, v2, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    invoke-static {v4, v1, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "fingerprint"

    iget-object v2, v2, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-static {v4, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-interface {v4, v1, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_b3} :catch_bf
    .catchall {:try_start_94 .. :try_end_b3} :catchall_b9

    add-int/lit8 v6, v21, 0x1

    move-object/from16 v1, v22

    const/4 v2, 0x0

    goto :goto_68

    :catchall_b9
    move-exception v0

    :goto_ba
    move-object v1, v0

    move-object/from16 v2, v22

    goto/16 :goto_22c

    :catch_bf
    move-exception v0

    :goto_c0
    move-object/from16 v2, v22

    goto/16 :goto_21a

    :catchall_c4
    move-exception v0

    move-object/from16 v22, v1

    goto :goto_ba

    :catch_c8
    move-exception v0

    move-object/from16 v22, v1

    goto :goto_c0

    :cond_cc
    move-object/from16 v22, v1

    :try_start_ce
    iget-object v0, v7, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d0} :catch_bf
    .catchall {:try_start_ce .. :try_end_d0} :catchall_20c

    if-eqz v0, :cond_e5

    const/4 v1, 0x0

    :try_start_d3
    invoke-interface {v4, v1, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "device"

    iget-object v2, v7, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    invoke-virtual {v2}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v1, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_e5} :catch_bf
    .catchall {:try_start_d3 .. :try_end_e5} :catchall_b9

    :cond_e5
    const/4 v1, 0x0

    :try_start_e6
    invoke-interface {v4, v1, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v11, v4}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->writePermissionTrees(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {v4, v1, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v1, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v11, v4}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->writePermissions(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {v4, v1, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v7, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_102
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_106} :catch_bf
    .catchall {:try_start_e6 .. :try_end_106} :catchall_20c

    if-eqz v1, :cond_11d

    :try_start_108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v2, :cond_119

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v2

    if-eqz v2, :cond_119

    goto :goto_102

    :cond_119
    invoke-static {v4, v8, v1}, Lcom/android/server/pm/Settings;->writePackageLPr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/ArrayList;Lcom/android/server/pm/PackageSetting;)V
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_11c} :catch_bf
    .catchall {:try_start_108 .. :try_end_11c} :catchall_b9

    goto :goto_102

    :cond_11d
    :try_start_11d
    iget-object v0, v7, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_127
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_12b} :catch_bf
    .catchall {:try_start_11d .. :try_end_12b} :catchall_20c

    if-eqz v1, :cond_142

    :try_start_12d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v2, :cond_13e

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v2

    if-eqz v2, :cond_13e

    goto :goto_127

    :cond_13e
    invoke-static {v4, v1}, Lcom/android/server/pm/Settings;->writeDisabledSysPackageLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_141} :catch_bf
    .catchall {:try_start_12d .. :try_end_141} :catchall_b9

    goto :goto_127

    :cond_142
    :try_start_142
    iget-object v0, v7, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_150
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_150} :catch_bf
    .catchall {:try_start_142 .. :try_end_150} :catchall_20c

    if-eqz v1, :cond_178

    :try_start_152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    const/4 v6, 0x0

    invoke-interface {v4, v6, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "name"

    iget-object v5, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-interface {v4, v6, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "userId"

    iget v5, v1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-interface {v4, v6, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string/jumbo v2, "sigs"

    invoke-virtual {v1, v4, v2, v8}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-interface {v4, v6, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_177
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_177} :catch_bf
    .catchall {:try_start_152 .. :try_end_177} :catchall_b9

    goto :goto_14c

    :cond_178
    move-object/from16 v0, v18

    :try_start_17a
    iget-object v1, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1
    :try_end_180
    .catch Ljava/io/IOException; {:try_start_17a .. :try_end_180} :catch_bf
    .catchall {:try_start_17a .. :try_end_180} :catchall_20c

    if-lez v1, :cond_1ba

    :try_start_182
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1ba

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object/from16 v2, v20

    const/4 v6, 0x0

    invoke-interface {v4, v6, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "new"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v4, v6, v5, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "old"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v6, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v6, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1b7
    .catch Ljava/io/IOException; {:try_start_182 .. :try_end_1b7} :catch_bf
    .catchall {:try_start_182 .. :try_end_1b7} :catchall_b9

    move-object/from16 v20, v2

    goto :goto_18a

    :cond_1ba
    :try_start_1ba
    iget-object v0, v7, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    check-cast v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    const/4 v1, -0x1

    move-object/from16 v2, p1

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->writeSettings(Lcom/android/server/pm/Computer;Lcom/android/modules/utils/TypedXmlSerializer;ZI)V

    iget-object v0, v7, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetManagerServiceLPr(Lcom/android/modules/utils/TypedXmlSerializer;)V

    const/4 v6, 0x0

    invoke-interface {v4, v6, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V
    :try_end_1d1
    .catch Ljava/io/IOException; {:try_start_1ba .. :try_end_1d1} :catch_bf
    .catchall {:try_start_1ba .. :try_end_1d1} :catchall_20c

    move-object/from16 v2, v22

    const/4 v0, 0x1

    :try_start_1d4
    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;Z)V

    invoke-virtual {v7}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    invoke-virtual {v7, v1}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr(Z)V

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    :goto_1eb
    if-ge v5, v1, :cond_1f7

    aget v4, v0, v5

    iget-object v6, v7, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUserAsync(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1eb

    :cond_1f7
    const-string/jumbo v0, "package"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-static {v0, v4, v5}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_203
    .catch Ljava/io/IOException; {:try_start_1d4 .. :try_end_203} :catch_20a
    .catchall {:try_start_1d4 .. :try_end_203} :catchall_207

    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :catchall_207
    move-exception v0

    :goto_208
    move-object v1, v0

    goto :goto_22c

    :catch_20a
    move-exception v0

    goto :goto_21a

    :catchall_20c
    move-exception v0

    move-object/from16 v2, v22

    goto :goto_208

    :catchall_210
    move-exception v0

    move-object v2, v1

    goto :goto_208

    :catch_213
    move-exception v0

    move-object v2, v1

    goto :goto_21a

    :catch_216
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    move-object v3, v6

    :goto_21a
    :try_start_21a
    const-string/jumbo v1, "PackageManager"

    const-string/jumbo v4, "Unable to write package manager settings, current changes will be lost at reboot"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v3, :cond_228

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ResilientAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_228
    .catchall {:try_start_21a .. :try_end_228} :catchall_207

    :cond_228
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :goto_22c
    :try_start_22c
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_22f
    .catchall {:try_start_22c .. :try_end_22f} :catchall_230

    goto :goto_234

    :catchall_230
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_234
    throw v1
.end method

.method public final writePackageListLPr(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SELinux;->fileSelabelLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PackageSettings"

    if-nez v0, :cond_26

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get SELinux context for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    invoke-static {v0}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "Failed to set packages.list SELinux context"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const/4 v0, 0x0

    :try_start_32
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writePackageListLPrInternal(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_39

    invoke-static {v0}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    return-void

    :catchall_39
    move-exception p0

    invoke-static {v0}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    throw p0
.end method

.method public final writePackageListLPrInternal(I)V
    .registers 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string/jumbo v2, "PackageSettings"

    const-string v3, " "

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5, v5}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v7, v6, [I

    const/4 v8, 0x0

    move v9, v8

    :goto_1c
    if-ge v9, v6, :cond_2b

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    aput v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    :cond_2b
    const/4 v4, -0x1

    if-eq v1, v4, :cond_32

    invoke-static {v7, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    :cond_32
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/android/internal/util/JournaledFile;

    iget-object v6, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-direct {v4, v6, v1}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v1

    const/4 v6, 0x0

    :try_start_5a
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-direct {v10, v9, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_6d} :catch_1ff

    :try_start_6d
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    const/16 v10, 0x408

    const/16 v11, 0x1a0

    const/16 v12, 0x3e8

    invoke-static {v6, v11, v12, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v10}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_89
    :goto_89
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1f0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    iget-object v12, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_97} :catch_108

    if-nez v12, :cond_c5

    :try_start_99
    const-string/jumbo v12, "android"

    iget-object v13, v11, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_89

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Skipping "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " due to missing metadata"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_be} :catch_bf

    goto :goto_89

    :catch_bf
    move-exception v0

    move-object v6, v1

    :goto_c1
    move-object/from16 p1, v4

    goto/16 :goto_202

    :cond_c5
    :try_start_c5
    invoke-interface {v12}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v12

    if-eqz v12, :cond_cc

    goto :goto_89

    :cond_cc
    invoke-static {v11, v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->getDataDir(Lcom/android/server/pm/PackageSetting;I)Ljava/io/File;

    move-result-object v12
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_d0} :catch_108

    if-nez v12, :cond_d6

    :try_start_d2
    const-string/jumbo v12, "null"
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d5} :catch_bf

    goto :goto_da

    :cond_d6
    :try_start_d6
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    :goto_da
    iget-object v13, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isDebuggable()Z

    move-result v13

    new-instance v14, Landroid/util/IntArray;

    invoke-direct {v14}, Landroid/util/IntArray;-><init>()V

    array-length v15, v7

    move v5, v8

    :goto_e7
    if-ge v5, v15, :cond_10c

    aget v8, v7, v5
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_eb} :catch_108

    move-object/from16 p1, v4

    :try_start_ed
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iget v0, v11, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-static {v8, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->getGidsForUid(I)[I

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/util/IntArray;->addAll([I)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    const/4 v8, 0x0

    goto :goto_e7

    :catch_104
    move-exception v0

    :goto_105
    move-object v6, v1

    goto/16 :goto_202

    :catch_108
    move-exception v0

    move-object/from16 p1, v4

    goto :goto_105

    :cond_10c
    move-object/from16 p1, v4

    const/16 v0, 0x20

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_11e

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_89

    :cond_11e
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUid()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v13, :cond_13c

    const-string v0, " 1 "

    goto :goto_13e

    :cond_13c
    const-string v0, " 0 "

    :goto_13e
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getSeInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/util/IntArray;->size()I

    move-result v0

    invoke-virtual {v14}, Landroid/util/IntArray;->size()I

    move-result v4

    if-lez v4, :cond_175

    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Landroid/util/IntArray;->get(I)I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    :goto_164
    if-ge v5, v0, :cond_17c

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Landroid/util/IntArray;->get(I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_164

    :cond_175
    const/4 v4, 0x0

    const-string/jumbo v0, "none"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17c
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isProfileableByShell()Z

    move-result v0
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_185} :catch_104

    const-string v5, "0"

    const-string v8, "1"

    if-eqz v0, :cond_18d

    move-object v0, v8

    goto :goto_18e

    :cond_18d
    move-object v0, v5

    :goto_18e
    :try_start_18e
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getLongVersionCode()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isProfileable()Z

    move-result v0

    if-eqz v0, :cond_1a9

    move-object v5, v8

    :cond_1a9
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_1bb

    const-string v0, "@system"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e0

    :cond_1bb
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->isProduct()Z

    move-result v0

    if-eqz v0, :cond_1c7

    const-string v0, "@product"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e0

    :cond_1c7
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1db

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1db

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e0

    :cond_1db
    const-string v0, "@null"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1e0
    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-object/from16 v0, p0

    move v8, v4

    const/4 v5, 0x1

    move-object/from16 v4, p1

    goto/16 :goto_89

    :cond_1f0
    move-object/from16 p1, v4

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_1fe
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_1fe} :catch_104

    return-void

    :catch_1ff
    move-exception v0

    goto/16 :goto_c1

    :goto_202
    const-string v1, "Failed to write packages.list"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    return-void
.end method

.method public final writePackageRestrictions(IJZ)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    const-string v3, "Cancel writing package restrictions for user="

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_c
    iget-object v6, v0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_2b5
    .catchall {:try_start_c .. :try_end_f} :catchall_297

    const/4 v7, 0x0

    if-nez p4, :cond_3a

    :try_start_12
    iget-object v8, v0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v1, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    sub-int/2addr v8, v2

    if-gez v8, :cond_35

    const-string/jumbo v0, "PackageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_32

    invoke-virtual {v4}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :catchall_32
    move-exception v0

    goto/16 :goto_2b3

    :cond_35
    :try_start_35
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1, v8}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_32

    :cond_3a
    :try_start_3a
    invoke-virtual {v4}, Lcom/android/server/pm/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3e} :catch_2a4
    .catchall {:try_start_3a .. :try_end_3e} :catchall_32

    :try_start_3e
    monitor-exit v6
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_2a1

    :try_start_3f
    iget-object v6, v0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v6
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_44} :catch_29a
    .catchall {:try_start_3f .. :try_end_44} :catchall_297

    :try_start_44
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v5, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v8, v9, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v9, "package-restrictions"

    invoke-interface {v8, v5, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v9, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v9}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_63
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_250

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v10, v1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v11

    const-string/jumbo v12, "pkg"

    invoke-interface {v8, v5, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "name"

    iget-object v10, v10, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-interface {v8, v5, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-eqz v10, :cond_99

    const-string/jumbo v10, "ceDataInode"

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v12

    invoke-interface {v8, v5, v10, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_99

    :catchall_96
    move-exception v0

    goto/16 :goto_29d

    :cond_99
    :goto_99
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getDeDataInode()J

    move-result-wide v12

    cmp-long v10, v12, v14

    if-eqz v10, :cond_ab

    const-string/jumbo v10, "deDataInode"

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getDeDataInode()J

    move-result-wide v12

    invoke-interface {v8, v5, v10, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_ab
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v10

    if-nez v10, :cond_b7

    const-string/jumbo v10, "inst"

    invoke-interface {v8, v5, v10, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b7
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v10

    if-eqz v10, :cond_c3

    const-string/jumbo v10, "stopped"

    invoke-interface {v8, v5, v10, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c3
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v10

    if-eqz v10, :cond_cf

    const-string/jumbo v10, "nl"

    invoke-interface {v8, v5, v10, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_cf
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v10

    if-eqz v10, :cond_db

    const-string/jumbo v10, "hidden"

    invoke-interface {v8, v5, v10, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_db
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v10

    if-eqz v10, :cond_eb

    const-string/jumbo v10, "distraction_flags"

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v12

    invoke-interface {v8, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_eb
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v10

    if-eqz v10, :cond_f7

    const-string/jumbo v10, "suspended"

    invoke-interface {v8, v5, v10, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f7
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v10

    if-eqz v10, :cond_103

    const-string/jumbo v10, "instant-app"

    invoke-interface {v8, v5, v10, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_103
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v10

    if-eqz v10, :cond_10f

    const-string/jumbo v10, "virtual-preload"

    invoke-interface {v8, v5, v10, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_10f
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v10

    if-eqz v10, :cond_11f

    const-string/jumbo v10, "enabled"

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v12

    invoke-interface {v8, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_11f
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_12f

    const-string/jumbo v10, "enabledCaller"

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_12f
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v10

    if-eqz v10, :cond_13f

    const-string/jumbo v10, "install-reason"

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v12

    invoke-interface {v8, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_13f
    const-string/jumbo v10, "first-install-time"

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v12

    invoke-interface {v8, v5, v10, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result v10

    if-eqz v10, :cond_159

    const-string/jumbo v10, "uninstall-reason"

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result v12

    invoke-interface {v8, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_159
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_169

    const-string/jumbo v10, "harmful-app-warning"

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_169
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getSplashScreenTheme()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_179

    const-string/jumbo v10, "splash-screen-theme"

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getSplashScreenTheme()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_179
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getMinAspectRatio()I

    move-result v10

    if-eqz v10, :cond_189

    const-string/jumbo v10, "min-aspect-ratio"

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getMinAspectRatio()I

    move-result v12

    invoke-interface {v8, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_189
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v10

    if-eqz v10, :cond_1cf

    move v10, v7

    :goto_190
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v10, v12, :cond_1cf

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserPackage;

    const-string/jumbo v13, "suspend-params"

    invoke-interface {v8, v5, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "suspending-package"

    iget-object v12, v12, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-interface {v8, v5, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/pkg/SuspendParams;

    if-eqz v12, :cond_1c7

    invoke-virtual {v12, v8}, Lcom/android/server/pm/pkg/SuspendParams;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    :cond_1c7
    const-string/jumbo v12, "suspend-params"

    invoke-interface {v8, v5, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/2addr v10, v2

    goto :goto_190

    :cond_1cf
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledComponents()Landroid/util/ArraySet;

    move-result-object v10

    if-eqz v10, :cond_208

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v12

    if-lez v12, :cond_208

    const-string/jumbo v12, "enabled-components"

    invoke-interface {v8, v5, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v12, v7

    :goto_1e2
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-ge v12, v13, :cond_202

    const-string/jumbo v13, "item"

    invoke-interface {v8, v5, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "name"

    invoke-virtual {v10, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v8, v5, v13, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "item"

    invoke-interface {v8, v5, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/2addr v12, v2

    goto :goto_1e2

    :cond_202
    const-string/jumbo v10, "enabled-components"

    invoke-interface {v8, v5, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_208
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getDisabledComponents()Landroid/util/ArraySet;

    move-result-object v10

    if-eqz v10, :cond_241

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v12

    if-lez v12, :cond_241

    const-string/jumbo v12, "disabled-components"

    invoke-interface {v8, v5, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v12, v7

    :goto_21b
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-ge v12, v13, :cond_23b

    const-string/jumbo v13, "item"

    invoke-interface {v8, v5, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "name"

    invoke-virtual {v10, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v8, v5, v13, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "item"

    invoke-interface {v8, v5, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/2addr v12, v2

    goto :goto_21b

    :cond_23b
    const-string/jumbo v10, "disabled-components"

    invoke-interface {v8, v5, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_241
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/server/pm/Settings;->writeArchiveStateLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/pkg/ArchiveState;)V

    const-string/jumbo v10, "pkg"

    invoke-interface {v8, v5, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_63

    :cond_250
    invoke-virtual {v0, v1, v8, v2}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(ILcom/android/modules/utils/TypedXmlSerializer;Z)V

    invoke-virtual {v0, v8, v1}, Lcom/android/server/pm/Settings;->writePersistentPreferredActivitiesLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V

    invoke-virtual {v0, v8, v1}, Lcom/android/server/pm/Settings;->writeCrossProfileIntentFiltersLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V

    iget-object v7, v0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v7, v7, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/android/server/pm/Settings;->writeDefaultApps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v1}, Lcom/android/server/pm/Settings;->writeBlockUninstallPackagesLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V

    const-string/jumbo v0, "package-restrictions"

    invoke-interface {v8, v5, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    monitor-exit v6
    :try_end_273
    .catchall {:try_start_44 .. :try_end_273} :catchall_96

    :try_start_273
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-virtual {v4, v3, v2}, Lcom/android/server/pm/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package-user-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v1, v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_293
    .catch Ljava/io/IOException; {:try_start_273 .. :try_end_293} :catch_29a
    .catchall {:try_start_273 .. :try_end_293} :catchall_297

    invoke-virtual {v4}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :catchall_297
    move-exception v0

    move-object v1, v0

    goto :goto_2c6

    :catch_29a
    move-exception v0

    move-object v5, v3

    goto :goto_2b6

    :goto_29d
    :try_start_29d
    monitor-exit v6
    :try_end_29e
    .catchall {:try_start_29d .. :try_end_29e} :catchall_96

    :try_start_29e
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
    :try_end_2a1
    .catch Ljava/io/IOException; {:try_start_29e .. :try_end_2a1} :catch_29a
    .catchall {:try_start_29e .. :try_end_2a1} :catchall_297

    :catchall_2a1
    move-exception v0

    move-object v5, v3

    goto :goto_2b3

    :catch_2a4
    move-exception v0

    :try_start_2a5
    const-string/jumbo v1, "PackageManager"

    const-string/jumbo v2, "Unable to write package manager package restrictions,  current changes will be lost at reboot"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v6
    :try_end_2af
    .catchall {:try_start_2a5 .. :try_end_2af} :catchall_32

    :cond_2af
    :goto_2af
    invoke-virtual {v4}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    goto :goto_2c5

    :goto_2b3
    :try_start_2b3
    monitor-exit v6
    :try_end_2b4
    .catchall {:try_start_2b3 .. :try_end_2b4} :catchall_32

    :try_start_2b4
    throw v0
    :try_end_2b5
    .catch Ljava/io/IOException; {:try_start_2b4 .. :try_end_2b5} :catch_2b5
    .catchall {:try_start_2b4 .. :try_end_2b5} :catchall_297

    :catch_2b5
    move-exception v0

    :goto_2b6
    :try_start_2b6
    const-string/jumbo v1, "PackageManager"

    const-string/jumbo v2, "Unable to write package manager package restrictions,  current changes will be lost at reboot"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v5, :cond_2af

    invoke-virtual {v4, v5}, Lcom/android/server/pm/ResilientAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2c4
    .catchall {:try_start_2b6 .. :try_end_2c4} :catchall_297

    goto :goto_2af

    :goto_2c5
    return-void

    :goto_2c6
    :try_start_2c6
    invoke-virtual {v4}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_2c9
    .catchall {:try_start_2c6 .. :try_end_2c9} :catchall_2ca

    goto :goto_2ce

    :catchall_2ca
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2ce
    throw v1
.end method

.method public final writePackageRestrictionsLPr(IZ)V
    .registers 9

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    invoke-virtual {p0, p0}, Lcom/android/server/pm/Settings;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    if-eqz p2, :cond_13

    invoke-virtual {p0, p1, v3, v4, p2}, Lcom/android/server/pm/Settings;->writePackageRestrictions(IJZ)V

    return-void

    :cond_13
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_16
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_39

    new-instance v0, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;

    move-object v1, p0

    move v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/Settings;IJZ)V

    iget-object p0, v1, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x1e

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_39
    move-exception v0

    move-object p0, v0

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_39

    throw p0
.end method

.method public final writePersistentPreferredActivitiesLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V
    .registers 8

    const/4 v0, 0x0

    const-string/jumbo v1, "persistent-preferred-activities"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    if-eqz p0, :cond_55

    iget-object p0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_55

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/PersistentPreferredActivity;

    const-string/jumbo v2, "item"

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, p2, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "name"

    invoke-interface {p1, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "set-by-dpm"

    iget-boolean v4, p2, Lcom/android/server/pm/PersistentPreferredActivity;->mIsSetByDpm:Z

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "filter"

    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p2, p2, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1d

    :cond_55
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writePreferredActivitiesLPr(ILcom/android/modules/utils/TypedXmlSerializer;Z)V
    .registers 13

    const/4 v0, 0x0

    const-string/jumbo v1, "preferred-activities"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PreferredIntentResolver;

    if-eqz p0, :cond_7f

    iget-object p0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PreferredActivity;

    const-string/jumbo v2, "item"

    invoke-interface {p2, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, p1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v4, v3, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_38

    array-length v4, v4

    goto :goto_39

    :cond_38
    move v4, v5

    :goto_39
    const-string/jumbo v6, "name"

    iget-object v7, v3, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-interface {p2, v0, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p3, :cond_6d

    iget v7, v3, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    if-eqz v7, :cond_4d

    const-string/jumbo v8, "match"

    invoke-interface {p2, v0, v8, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4d
    const-string/jumbo v7, "always"

    iget-boolean v8, v3, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    invoke-interface {p2, v0, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "set"

    invoke-interface {p2, v0, v7, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :goto_5b
    if-ge v5, v4, :cond_6d

    invoke-interface {p2, v0, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v8, v3, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-interface {p2, v0, v6, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2, v0, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5b

    :cond_6d
    const-string/jumbo v3, "filter"

    invoke-interface {p2, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p1, p1, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-interface {p2, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1d

    :cond_7f
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
