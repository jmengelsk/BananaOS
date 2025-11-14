.class public final Lcom/android/server/pm/DeletePackageHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public mDpms:Landroid/app/admin/IDevicePolicyManager;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

.field public final mSilentUninstallerList:Lcom/samsung/android/server/pm/install/SilentUninstallerList;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/BroadcastHelper;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/server/pm/install/SilentUninstallerList;

    invoke-direct {v0}, Lcom/samsung/android/server/pm/install/SilentUninstallerList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mSilentUninstallerList:Lcom/samsung/android/server/pm/install/SilentUninstallerList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mDpms:Landroid/app/admin/IDevicePolicyManager;

    iput-object p1, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    iput-object p1, p0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    iput-object p2, p0, Lcom/android/server/pm/DeletePackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iput-object p3, p0, Lcom/android/server/pm/DeletePackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    return-void
.end method

.method public static mayDeletePackageLocked(ILandroid/os/UserHandle;Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/DeletePackageAction;
    .registers 12

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return-object v0

    :cond_4
    sget-boolean v1, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getFlags()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_37

    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_15

    move v1, v2

    goto :goto_16

    :cond_15
    move v1, v3

    :goto_16
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_20

    goto :goto_21

    :cond_20
    move v2, v3

    :cond_21
    :goto_21
    if-eqz v1, :cond_25

    if-eqz v2, :cond_37

    :cond_25
    if-nez p4, :cond_37

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Attempt to delete unknown system package "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    const-string/jumbo p2, "PackageManager"

    invoke-static {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_37
    new-instance v1, Lcom/android/server/pm/DeletePackageAction;

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/DeletePackageAction;-><init>(ILandroid/os/UserHandle;Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V

    return-object v1
.end method


# virtual methods
.method public final deleteInstalledPackageLIF(Lcom/android/server/pm/PackageSetting;IZI[ILcom/android/server/pm/PackageRemovedInfo;Z)V
    .registers 15

    iget-object v2, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v2

    :try_start_7
    iget v3, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    iput v3, p6, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    iget-object v3, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v6, v6, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5, v3, p1, p5, v6}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILcom/android/server/utils/WatchedArrayMap;)Landroid/util/SparseArray;

    move-result-object v3

    iput-object v3, p6, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_41

    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    move-object v1, p1

    move v2, p2

    move v5, p4

    move-object v3, p5

    move-object v4, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/RemovePackageHelper;->removePackageDataLIF(Lcom/android/server/pm/PackageSetting;I[ILcom/android/server/pm/PackageRemovedInfo;IZ)V

    if-eqz p3, :cond_40

    new-instance v0, Lcom/android/server/pm/CleanUpArgs;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/CleanUpArgs;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p6, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    :cond_40
    return-void

    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method

.method public final deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z
    .registers 15

    const-string/jumbo v0, "dummy"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    :try_start_d
    const-string/jumbo v5, "persist.sys.knox.non_required_apps_task"

    const-string/jumbo v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_3a
    .catchall {:try_start_d .. :try_end_1e} :catchall_36

    if-nez v5, :cond_24

    :goto_20
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_52

    :cond_24
    :try_start_24
    iget-object v5, p0, Lcom/android/server/pm/DeletePackageHelper;->mDpms:Landroid/app/admin/IDevicePolicyManager;

    if-nez v5, :cond_3c

    const-string/jumbo v5, "device_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/pm/DeletePackageHelper;->mDpms:Landroid/app/admin/IDevicePolicyManager;

    goto :goto_3c

    :catchall_36
    move-exception v0

    move-object p0, v0

    goto/16 :goto_b0

    :catch_3a
    move-exception v0

    goto :goto_4e

    :cond_3c
    :goto_3c
    iget-object v5, p0, Lcom/android/server/pm/DeletePackageHelper;->mDpms:Landroid/app/admin/IDevicePolicyManager;

    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v0, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-interface {v5, v6, v4, v0}, Landroid/app/admin/IDevicePolicyManager;->getDisallowedSystemApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_4d} :catch_3a
    .catchall {:try_start_24 .. :try_end_4d} :catchall_36

    goto :goto_20

    :goto_4e
    :try_start_4e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_36

    goto :goto_20

    :goto_52
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_5c
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_6b

    monitor-exit v1

    goto :goto_ab

    :catchall_68
    move-exception v0

    move-object p0, v0

    goto :goto_ac

    :cond_6b
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSUI_GRADLE_BUILD:Z

    if-eqz v2, :cond_8c

    iget-object v2, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v3, Landroid/content/pm/PackageManagerInternal;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_8c
    iget-object v2, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    invoke-static {p5, p2, p6, v0, v2}, Lcom/android/server/pm/DeletePackageHelper;->mayDeletePackageLocked(ILandroid/os/UserHandle;Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/DeletePackageAction;

    move-result-object p2

    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_5c .. :try_end_9e} :catchall_68

    if-nez p2, :cond_a1

    goto :goto_ab

    :cond_a1
    const/4 p6, 0x0

    move-object p5, p2

    move-object p2, p1

    move-object p1, p5

    move p5, p7

    :try_start_a6
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/DeletePackageHelper;->executeDeletePackageLIF(Lcom/android/server/pm/DeletePackageAction;Ljava/lang/String;Z[IZZ)V
    :try_end_a9
    .catch Lcom/android/server/pm/SystemDeleteException; {:try_start_a6 .. :try_end_a9} :catch_ab

    const/4 p0, 0x1

    return p0

    :catch_ab
    :goto_ab
    return v4

    :goto_ac
    :try_start_ac
    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_68

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :goto_b0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIIZ)V
    .registers 31

    move-object/from16 v1, p0

    move-object/from16 v7, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    const/4 v8, 0x1

    iget-object v9, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "android.permission.DELETE_PACKAGES"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v10

    invoke-interface {v10, v6, v4}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    move-result v12

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v13

    const-string/jumbo v19, "versionCode must be >= -1"

    const-wide/16 v15, -0x1

    const-wide v17, 0x7fffffffffffffffL

    invoke-static/range {v13 .. v19}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v14

    sget v0, Lcom/android/server/om/SemSamsungThemeUtils;->$r8$clinit:I

    const-string/jumbo v0, "com.samsung.android.themecenter"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v16, 0x2

    iget-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_57

    if-nez v4, :cond_57

    new-instance v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, v13, v6, v7}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver2;)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_57
    :try_start_57
    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v17, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v17 .. v17}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isBaseOfLockedTask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    const/4 v0, -0x7

    invoke-interface {v7, v13, v0, v11}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "127605586"

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_77} :catch_88

    const/16 v17, 0x0

    :try_start_79
    const-string v2, ""

    filled-new-array {v0, v11, v2}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x534e4554

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_85} :catch_86

    return-void

    :catch_86
    move-exception v0

    goto :goto_8f

    :catch_88
    move-exception v0

    const/16 v17, 0x0

    goto :goto_8f

    :cond_8c
    const/16 v17, 0x0

    goto :goto_92

    :goto_8f
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_92
    invoke-interface {v10, v14, v15, v13}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    and-int/lit8 v2, v5, 0x2

    if-eqz v2, :cond_9c

    move v2, v8

    goto :goto_9e

    :cond_9c
    move/from16 v2, v17

    :goto_9e
    if-eqz v2, :cond_a9

    iget-object v11, v1, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    iget-object v11, v11, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v11}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v11

    goto :goto_ad

    :cond_a9
    new-array v11, v8, [I

    aput v4, v11, v17

    :goto_ad
    invoke-interface {v10, v0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v18

    move/from16 v19, v8

    if-eqz v18, :cond_c7

    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    if-eqz v8, :cond_c7

    :cond_bd
    move/from16 p1, v2

    :goto_bf
    move-object/from16 p6, v11

    move/from16 v18, v12

    move-wide/from16 v20, v14

    goto/16 :goto_16f

    :cond_c7
    if-nez p6, :cond_bd

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->isRootOrShell(I)Z

    move-result v8

    if-nez v8, :cond_bd

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    move/from16 p1, v2

    const/16 v2, 0x3e8

    if-ne v8, v2, :cond_da

    goto :goto_bf

    :cond_da
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    array-length v8, v11

    move/from16 v18, v12

    move-wide/from16 v20, v14

    move/from16 v12, v17

    :goto_e5
    if-ge v12, v8, :cond_103

    aget v14, v11, v12

    :try_start_e9
    invoke-interface {v10, v14, v0}, Lcom/android/server/pm/Computer;->getInstallerPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ed} :catch_fc

    move-object v15, v11

    move/from16 p6, v12

    const-wide/16 v11, 0x0

    :try_start_f2
    invoke-interface {v10, v14, v11, v12, v2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v11
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f6} :catch_ff

    if-ne v6, v11, :cond_ff

    :goto_f8
    move-object/from16 p6, v15

    goto/16 :goto_16f

    :catch_fc
    move-object v15, v11

    move/from16 p6, v12

    :catch_ff
    :cond_ff
    add-int/lit8 v12, p6, 0x1

    move-object v11, v15

    goto :goto_e5

    :cond_103
    move-object v15, v11

    iget-object v8, v9, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    array-length v11, v8

    move/from16 v12, v17

    :goto_109
    if-ge v12, v11, :cond_120

    aget-object v14, v8, v12

    move/from16 p6, v11

    move/from16 v23, v12

    const-wide/16 v11, 0x0

    invoke-interface {v10, v14, v11, v12, v2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v14

    if-ne v6, v14, :cond_11a

    :goto_119
    goto :goto_f8

    :cond_11a
    add-int/lit8 v14, v23, 0x1

    move/from16 v11, p6

    move v12, v14

    goto :goto_109

    :cond_120
    const-wide/16 v11, 0x0

    iget-object v8, v9, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    if-eqz v8, :cond_12d

    invoke-interface {v10, v8, v11, v12, v2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v8

    if-ne v6, v8, :cond_12d

    goto :goto_119

    :cond_12d
    iget-object v8, v9, Lcom/android/server/pm/PackageManagerService;->mStorageManagerPackage:Ljava/lang/String;

    if-eqz v8, :cond_138

    invoke-interface {v10, v8, v11, v12, v2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v8

    if-ne v6, v8, :cond_138

    goto :goto_f8

    :cond_138
    iget-object v8, v1, Lcom/android/server/pm/DeletePackageHelper;->mSilentUninstallerList:Lcom/samsung/android/server/pm/install/SilentUninstallerList;

    iget-object v8, v8, Lcom/samsung/android/server/pm/install/SilentUninstallerList;->allowedSilentUninstallers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_140
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 p6, v15

    const-wide/16 v14, 0x0

    invoke-interface {v10, v11, v14, v15, v2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v11

    if-ne v6, v11, :cond_157

    goto :goto_16f

    :cond_157
    move-object/from16 v15, p6

    goto :goto_140

    :cond_15a
    move-object/from16 p6, v15

    const-string/jumbo v2, "android.permission.MANAGE_PROFILE_AND_DEVICE_OWNERS"

    invoke-interface {v10, v2, v6}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_166

    goto :goto_16f

    :cond_166
    new-instance v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, v13, v7, v5}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;I)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_16f
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    move-object/from16 v15, p6

    if-ne v2, v4, :cond_17e

    if-eqz p1, :cond_195

    array-length v2, v15

    move/from16 v8, v19

    if-le v2, v8, :cond_195

    :cond_17e
    iget-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "deletePackage for user "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v11, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v2, v11, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_195
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    :try_start_199
    array-length v2, v15

    move/from16 v8, v17

    :goto_19c
    if-ge v8, v2, :cond_1e0

    aget v14, v15, v8

    invoke-virtual {v9, v14, v13}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(ILjava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1b7

    new-instance v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda3;

    move/from16 v1, v17

    invoke-direct {v0, v13, v7, v1}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;I)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1b0
    .catchall {:try_start_199 .. :try_end_1b0} :catchall_1b4

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b4
    move-exception v0

    goto/16 :goto_260

    :cond_1b7
    :try_start_1b7
    iget-object v1, v9, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v1, v14, v13}, Lcom/android/server/pm/ProtectedPackages;->hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1c9

    invoke-virtual {v1, v14, v13}, Lcom/android/server/pm/ProtectedPackages;->isProtectedPackage(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c6

    goto :goto_1c9

    :cond_1c6
    move/from16 v1, v17

    goto :goto_1ca

    :cond_1c9
    :goto_1c9
    const/4 v1, 0x1

    :goto_1ca
    if-eqz v1, :cond_1d9

    new-instance v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda3;

    const/4 v8, 0x1

    invoke-direct {v0, v13, v7, v8}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;I)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1d5
    .catchall {:try_start_1b7 .. :try_end_1d5} :catchall_1b4

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1d9
    const/16 v19, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    goto :goto_19c

    :cond_1e0
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v1, "no_uninstall_apps"

    invoke-virtual {v9, v4, v1}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f7

    new-instance v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda3;

    move/from16 v1, v16

    invoke-direct {v0, v7, v13, v1}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda3;-><init>(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1f7
    if-nez p1, :cond_209

    invoke-interface {v10, v0, v4}, Lcom/android/server/pm/Computer;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_209

    new-instance v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda3;

    const/4 v1, 0x3

    invoke-direct {v0, v7, v13, v1}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda3;-><init>(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_209
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "START DELETE PACKAGE: observer{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_21c

    invoke-interface {v7}, Landroid/content/pm/IPackageDeleteObserver2;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_21f

    :cond_21c
    const-string/jumbo v2, "null"

    :goto_21f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}\npkg{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}, user{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}, caller{"

    const-string/jumbo v8, "} flags{"

    invoke-static {v4, v6, v2, v8, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    move-object v8, v0

    new-instance v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;

    move-object/from16 v1, p0

    move-object v14, v3

    move-object v2, v10

    move-object v3, v13

    move-object v13, v15

    move/from16 v9, v18

    move-wide/from16 v11, v20

    move/from16 v10, p1

    invoke-direct/range {v0 .. v13}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/DeletePackageHelper;Lcom/android/server/pm/Computer;Ljava/lang/String;IIILandroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;ZZJ[I)V

    invoke-virtual {v14, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_260
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final deletePackageX(IIJLjava/lang/String;Z)I
    .registers 50

    move-object/from16 v1, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move-wide/from16 v11, p3

    move-object/from16 v6, p5

    const/4 v0, 0x2

    const-string/jumbo v2, "Not removing package "

    const-string/jumbo v3, "Not removing package "

    const-string/jumbo v4, "Not removing non-existent package "

    new-instance v14, Lcom/android/server/pm/PackageRemovedInfo;

    invoke-direct {v14}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    const/high16 v20, 0x10000000

    and-int v5, v10, v20

    const/4 v15, 0x1

    if-eqz v5, :cond_23

    move/from16 v21, v15

    goto :goto_25

    :cond_23
    const/16 v21, 0x0

    :goto_25
    and-int/lit8 v22, v10, 0x2

    const/4 v5, -0x1

    if-eqz v22, :cond_2c

    move v7, v5

    goto :goto_2d

    :cond_2c
    move v7, v9

    :goto_2d
    iget-object v8, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v16, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v8

    const/16 v16, 0x0

    :try_start_36
    iget-object v13, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v13

    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_61

    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v21, :cond_5f

    monitor-exit v8

    return v15

    :catchall_5c
    move-exception v0

    goto/16 :goto_646

    :cond_5f
    monitor-exit v8

    return v5

    :cond_61
    const-wide/16 v17, -0x1

    cmp-long v4, v11, v17

    if-eqz v4, :cond_99

    move v4, v5

    iget-wide v5, v0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    cmp-long v5, v5, v11

    if-eqz v5, :cond_96

    const-string/jumbo v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, p5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with versionCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " != "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    return v4

    :cond_96
    move-object/from16 v6, p5

    goto :goto_9a

    :cond_99
    move v4, v5

    :goto_9a
    sget-boolean v3, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_a6

    move v3, v15

    goto :goto_a8

    :cond_a6
    move/from16 v3, v16

    :goto_a8
    if-eqz v3, :cond_f6

    and-int/lit8 v3, v10, 0x4

    if-nez v3, :cond_f6

    iget-object v3, v1, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v3, v9}, Lcom/android/server/pm/UserManagerService$LocalService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_cc

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v3

    if-nez v3, :cond_f6

    iget-object v3, v1, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v3, v9}, Lcom/android/server/pm/UserManagerService$LocalService;->getProfileParentId(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/UserManagerService$LocalService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v3

    if-nez v3, :cond_f6

    :cond_cc
    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as only admin user (or their profile) may downgrade system apps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "170646036"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1, v6}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 v0, -0x3

    monitor-exit v8

    return v0

    :cond_f6
    iget-object v2, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v6}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v3, v3, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/AndroidPackage;

    iget-object v5, v1, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    const/16 v29, 0x0

    if-eqz v3, :cond_1e5

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_12f

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v2

    move-object/from16 v30, v3

    invoke-interface/range {v30 .. v30}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    move-result-wide v2

    invoke-interface {v13, v2, v3, v4}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(JLjava/lang/String;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v2

    :goto_12c
    move-object/from16 v24, v2

    goto :goto_149

    :cond_12f
    move-object/from16 v18, v2

    move-object/from16 v30, v3

    invoke-interface/range {v30 .. v30}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_147

    invoke-interface/range {v30 .. v30}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {v30 .. v30}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibVersionMajor()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v13, v3, v4, v2}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(JLjava/lang/String;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v2

    goto :goto_12c

    :cond_147
    move-object/from16 v24, v29

    :goto_149
    if-eqz v24, :cond_1e3

    array-length v2, v5

    move/from16 v3, v16

    :goto_14e
    if-ge v3, v2, :cond_1e3

    aget v4, v5, v3

    move/from16 v31, v15

    const/4 v15, -0x1

    if-eq v7, v15, :cond_15d

    if-eq v7, v4, :cond_15d

    move-object/from16 v23, v13

    goto/16 :goto_1db

    :cond_15d
    const-wide/32 v25, 0x402000

    const/16 v27, 0x3e8

    move/from16 v28, v4

    move-object/from16 v23, v13

    invoke-interface/range {v23 .. v28}, Lcom/android/server/pm/Computer;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Landroid/util/Pair;

    move-result-object v4

    move/from16 v13, v28

    iget-object v15, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/util/List;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface/range {v30 .. v30}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_18c

    invoke-static {v15}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v25

    if-nez v25, :cond_18c

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v25

    if-nez v25, :cond_18c

    invoke-interface {v15}, Ljava/util/List;->size()I

    invoke-interface {v4}, Ljava/util/List;->size()I

    :cond_18c
    invoke-static {v15}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_1db

    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not removing package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v30 .. v30}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hosting lib "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " used by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8
    :try_end_1d7
    .catchall {:try_start_36 .. :try_end_1d7} :catchall_5c

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v0, -0x6

    return v0

    :cond_1db
    :goto_1db
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v13, v23

    move/from16 v15, v31

    goto/16 :goto_14e

    :cond_1e3
    :goto_1e3
    move v2, v15

    goto :goto_1ea

    :cond_1e5
    move-object/from16 v18, v2

    move-object/from16 v30, v3

    goto :goto_1e3

    :goto_1ea
    :try_start_1ea
    invoke-virtual {v0, v5, v2}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v3

    iput-object v3, v14, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1fa

    const/4 v2, 0x1

    goto :goto_1fc

    :cond_1fa
    move/from16 v2, v16

    :goto_1fc
    if-eqz v2, :cond_23a

    and-int/lit8 v2, v10, 0x4

    if-nez v2, :cond_23a

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move/from16 v3, v16

    :goto_209
    array-length v4, v5

    if-ge v3, v4, :cond_235

    aget v4, v5, v3

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    aget v13, v5, v3

    new-instance v15, Lcom/android/server/pm/DeletePackageHelper$TempUserState;

    move/from16 v23, v3

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v3

    move-object/from16 v24, v4

    invoke-interface/range {v24 .. v24}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v25, v5

    invoke-interface/range {v24 .. v24}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v5

    invoke-direct {v15, v3, v4, v5}, Lcom/android/server/pm/DeletePackageHelper$TempUserState;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v2, v13, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v31, 0x1

    add-int/lit8 v3, v23, 0x1

    move-object/from16 v5, v25

    goto :goto_209

    :cond_235
    move-object/from16 v25, v5

    move-object v13, v2

    const/4 v2, -0x1

    goto :goto_23f

    :cond_23a
    move-object/from16 v25, v5

    move v2, v7

    move-object/from16 v13, v29

    :goto_23f
    iget-object v3, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object v3, v3, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v23

    monitor-exit v8
    :try_end_24c
    .catchall {:try_start_1ea .. :try_end_24c} :catchall_5c

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    iget-object v3, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v3, v15, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_257
    iget-object v3, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v4, "deletePackageX"

    invoke-virtual {v3, v2, v10, v6, v4}, Lcom/android/server/pm/PackageManagerService;->freezePackageForDelete(IILjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v24
    :try_end_260
    .catchall {:try_start_257 .. :try_end_260} :catchall_2a5

    :try_start_260
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/high16 v2, -0x80000000

    or-int/2addr v2, v10

    const/4 v8, 0x1

    const/4 v4, 0x1

    move-object v5, v6

    move v6, v2

    move-object v2, v5

    move-object v5, v14

    move v14, v7

    move-object v7, v5

    move-object/from16 v32, v18

    move-object/from16 v5, v25

    move-object/from16 v10, v30

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z

    move-result v3
    :try_end_279
    .catchall {:try_start_260 .. :try_end_279} :catchall_632

    move-object v6, v2

    :try_start_27a
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/pm/PackageFreezer;->close()V

    if-eqz v3, :cond_2ae

    if-eqz v10, :cond_2ae

    iget-object v2, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2
    :try_end_286
    .catchall {:try_start_27a .. :try_end_286} :catchall_2a5

    :try_start_286
    iget-object v4, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v4, v4, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_298

    const/4 v4, 0x1

    goto :goto_29a

    :cond_298
    move/from16 v4, v16

    :goto_29a
    monitor-exit v2
    :try_end_29b
    .catchall {:try_start_286 .. :try_end_29b} :catchall_2a9

    :try_start_29b
    iget-object v2, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iget-object v8, v7, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    invoke-virtual {v2, v10, v0, v8, v4}, Lcom/android/server/pm/InstantAppRegistry;->onPackageUninstalled(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;[IZ)V
    :try_end_2a4
    .catchall {:try_start_29b .. :try_end_2a4} :catchall_2a5

    goto :goto_2ae

    :catchall_2a5
    move-exception v0

    move-object v1, v0

    goto/16 :goto_63d

    :catchall_2a9
    move-exception v0

    :try_start_2aa
    monitor-exit v2
    :try_end_2ab
    .catchall {:try_start_2aa .. :try_end_2ab} :catchall_2a9

    :try_start_2ab
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_2ae
    :goto_2ae
    iget-object v2, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2
    :try_end_2b3
    .catchall {:try_start_2ab .. :try_end_2b3} :catchall_2a5

    if-eqz v3, :cond_2c5

    :try_start_2b5
    iget-object v4, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v7, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    invoke-virtual {v4, v0, v8}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    iget-object v4, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v6}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V

    goto :goto_2c5

    :catchall_2c2
    move-exception v0

    goto/16 :goto_62e

    :cond_2c5
    :goto_2c5
    monitor-exit v2
    :try_end_2c6
    .catchall {:try_start_2b5 .. :try_end_2c6} :catchall_2c2

    :try_start_2c6
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateGetPackagesForUidCache()V
    :try_end_2c9
    .catchall {:try_start_2c6 .. :try_end_2c9} :catchall_2a5

    invoke-virtual {v15}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    if-eqz v3, :cond_42a

    and-int/lit8 v2, p2, 0x8

    if-nez v2, :cond_2d4

    const/4 v2, 0x1

    goto :goto_2d6

    :cond_2d4
    move/from16 v2, v16

    :goto_2d6
    and-int/lit8 v4, p2, 0x10

    if-eqz v4, :cond_2dd

    const/16 v18, 0x1

    goto :goto_2df

    :cond_2dd
    move/from16 v18, v16

    :goto_2df
    iget-boolean v4, v7, Lcom/android/server/pm/PackageRemovedInfo;->mIsExternal:Z

    if-eqz v4, :cond_30e

    if-eqz v10, :cond_30e

    new-instance v4, Ljava/util/ArrayList;

    const/4 v8, 0x1

    new-array v15, v8, [Lcom/android/server/pm/pkg/AndroidPackage;

    aput-object v10, v15, v16

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v10, v1, Lcom/android/server/pm/DeletePackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v15, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    invoke-direct {v8, v15}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    move-object/from16 v37, v4

    move-object/from16 v34, v8

    move-object/from16 v33, v10

    invoke-virtual/range {v33 .. v38}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcastAndNotify(Ljava/util/function/Supplier;ZZLjava/util/ArrayList;Lcom/android/server/pm/AsecInstallHelper$3;)V

    :cond_30e
    move-object v4, v13

    iget-object v13, v1, Lcom/android/server/pm/DeletePackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v15, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move/from16 v8, v16

    move/from16 v16, v2

    move v2, v8

    move-object v8, v7

    move-object v7, v4

    move v4, v14

    move-object v14, v8

    move/from16 v17, p6

    const/4 v8, 0x1

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/pm/BroadcastHelper;->sendPackageRemovedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSender;ZZZ)V

    move-object v10, v14

    iget-object v13, v1, Lcom/android/server/pm/DeletePackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v14, v10, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    if-nez v14, :cond_330

    move/from16 v26, v3

    goto/16 :goto_3ca

    :cond_330
    iget-object v14, v10, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    iget-object v15, v10, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    iget-object v2, v10, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    new-instance v8, Landroid/os/Bundle;

    move-object/from16 v41, v2

    const/4 v2, 0x2

    invoke-direct {v8, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v2, "android.intent.extra.UID"

    move/from16 v26, v3

    iget v3, v10, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v34, "android.intent.action.PACKAGE_ADDED"

    const/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v36, v8

    move-object/from16 v33, v13

    move-object/from16 v35, v14

    invoke-virtual/range {v33 .. v42}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    move-object/from16 v2, v41

    if-eqz v15, :cond_381

    const-string/jumbo v34, "android.intent.action.PACKAGE_ADDED"

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v38, v15

    invoke-virtual/range {v33 .. v42}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    const-string/jumbo v34, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual/range {v33 .. v42}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    :cond_381
    const-string/jumbo v34, "android.intent.action.PACKAGE_REPLACED"

    const/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v41, v2

    invoke-virtual/range {v33 .. v42}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    move-object/from16 v2, v33

    iget-object v3, v2, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-eqz v3, :cond_3a0

    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v13

    :goto_39d
    move-wide/from16 v37, v13

    goto :goto_3a3

    :cond_3a0
    const-wide/16 v13, 0x2710

    goto :goto_39d

    :goto_3a3
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v36

    const-string v41, ""

    const/16 v40, 0x137

    const/16 v39, 0x0

    invoke-virtual/range {v36 .. v41}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    invoke-virtual/range {v36 .. v36}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v42

    const-string/jumbo v34, "android.intent.action.MY_PACKAGE_REPLACED"

    const/16 v37, 0x0

    const/16 v39, 0x0

    move-object/from16 v38, v35

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v42}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    :goto_3ca
    iget-boolean v2, v10, Lcom/android/server/pm/PackageRemovedInfo;->mIsUpdate:Z

    if-eqz v2, :cond_3d0

    :goto_3ce
    move-object v8, v10

    goto :goto_42f

    :cond_3d0
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    if-nez v2, :cond_3db

    goto :goto_3ce

    :cond_3db
    iget-object v12, v10, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    invoke-virtual {v2, v12}, Lcom/android/server/pm/UserManagerInternal;->getUserTypesForStatsd([I)[I

    move-result-object v13

    iget-object v14, v10, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    invoke-virtual {v2, v14}, Lcom/android/server/pm/UserManagerInternal;->getUserTypesForStatsd([I)[I

    move-result-object v15

    iget v2, v10, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    const/4 v3, -0x1

    if-ne v4, v3, :cond_3f1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    goto :goto_3f2

    :cond_3f1
    move v8, v4

    :goto_3f2
    invoke-static {v8, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v11

    iget-boolean v2, v10, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    iget-boolean v8, v10, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    const/16 v31, 0x1

    xor-int/lit8 v19, v8, 0x1

    move-object v8, v10

    const/16 v10, 0x22a

    const/16 v17, 0x1

    move/from16 v16, p2

    move/from16 v18, v2

    move/from16 v25, v3

    invoke-static/range {v10 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->write(II[I[I[I[IIIZZ)V

    iget-object v2, v8, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    iget-wide v10, v8, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackageVersionCode:J

    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_417

    goto :goto_431

    :cond_417
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v2, v3, v10}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x3347b

    invoke-static {v3, v2}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_431

    :cond_42a
    move/from16 v26, v3

    move-object v8, v7

    move-object v7, v13

    move v4, v14

    :goto_42f
    const/16 v25, -0x1

    :goto_431
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    iget-object v2, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_441
    iget-object v3, v8, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;
    :try_end_443
    .catchall {:try_start_441 .. :try_end_443} :catchall_4ea

    if-eqz v3, :cond_455

    :try_start_445
    iget-object v10, v1, Lcom/android/server/pm/DeletePackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iget-object v11, v3, Lcom/android/server/pm/CleanUpArgs;->mPackageName:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/server/pm/CleanUpArgs;->mCodeFile:Ljava/io/File;

    invoke-virtual {v10, v3, v11}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/io/File;Ljava/lang/String;)V
    :try_end_44e
    .catchall {:try_start_445 .. :try_end_44e} :catchall_44f

    goto :goto_455

    :catchall_44f
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v2

    goto/16 :goto_625

    :cond_455
    :goto_455
    if-eqz v7, :cond_4ee

    :try_start_457
    iget-object v3, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3
    :try_end_45c
    .catchall {:try_start_457 .. :try_end_45c} :catchall_4ea

    :try_start_45c
    iget-object v10, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v10, v6}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    if-eqz v10, :cond_4b3

    iget-object v11, v10, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v11, :cond_477

    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_477

    const/4 v13, 0x1

    goto :goto_478

    :catchall_472
    move-exception v0

    move-object/from16 v16, v2

    goto/16 :goto_4e6

    :cond_477
    const/4 v13, 0x0

    :goto_478
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_47a
    array-length v14, v5

    if-ge v11, v14, :cond_4ae

    aget v14, v5, v11

    invoke-virtual {v7, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/DeletePackageHelper$TempUserState;

    iget v15, v14, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->enabledState:I
    :try_end_487
    .catchall {:try_start_45c .. :try_end_487} :catchall_472

    move-object/from16 v16, v2

    :try_start_489
    aget v2, v5, v11

    move-object/from16 v17, v5

    iget-object v5, v14, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->lastDisableAppCaller:Ljava/lang/String;

    invoke-virtual {v10, v15, v2, v5}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    if-nez v12, :cond_4a4

    iget-boolean v2, v14, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->installed:Z

    if-eqz v2, :cond_4a4

    if-nez v15, :cond_49c

    if-nez v13, :cond_49e

    :cond_49c
    const/4 v2, 0x1

    goto :goto_4a0

    :cond_49e
    const/4 v2, 0x1

    goto :goto_4a2

    :goto_4a0
    if-ne v15, v2, :cond_4a8

    :goto_4a2
    move v12, v2

    goto :goto_4a8

    :cond_4a4
    const/4 v2, 0x1

    goto :goto_4a8

    :catchall_4a6
    move-exception v0

    goto :goto_4e6

    :cond_4a8
    :goto_4a8
    add-int/2addr v11, v2

    move-object/from16 v2, v16

    move-object/from16 v5, v17

    goto :goto_47a

    :cond_4ae
    move-object/from16 v16, v2

    const/4 v2, 0x1

    move v13, v12

    goto :goto_4d4

    :cond_4b3
    move-object/from16 v16, v2

    const/4 v2, 0x1

    const-string/jumbo v5, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Missing PackageSetting after uninstalling the update for system app: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ". This should not happen."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    :goto_4d4
    iget-object v5, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr(Z)V

    monitor-exit v3
    :try_end_4dd
    .catchall {:try_start_489 .. :try_end_4dd} :catchall_4a6

    :try_start_4dd
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z
    :try_end_4df
    .catchall {:try_start_4dd .. :try_end_4df} :catchall_4e2

    :goto_4df
    move-object/from16 v3, v32

    goto :goto_4f4

    :catchall_4e2
    move-exception v0

    :goto_4e3
    move-object v1, v0

    goto/16 :goto_625

    :goto_4e6
    :try_start_4e6
    monitor-exit v3
    :try_end_4e7
    .catchall {:try_start_4e6 .. :try_end_4e7} :catchall_4a6

    :try_start_4e7
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :catchall_4ea
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_4e3

    :cond_4ee
    move-object/from16 v16, v2

    const/4 v2, 0x1

    const/4 v7, 0x0

    move v13, v7

    goto :goto_4df

    :goto_4f4
    if-nez v3, :cond_4f9

    move-object/from16 v3, v29

    goto :goto_4fb

    :cond_4f9
    iget-object v3, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    :goto_4fb
    if-eqz v3, :cond_564

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    move-result v5

    if-eqz v5, :cond_564

    iget-object v5, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v5
    :try_end_508
    .catchall {:try_start_4e7 .. :try_end_508} :catchall_4e2

    :try_start_508
    iget-object v7, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    monitor-exit v5
    :try_end_515
    .catchall {:try_start_508 .. :try_end_515} :catchall_55f

    if-eqz v7, :cond_564

    if-eqz v13, :cond_53e

    :try_start_519
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v5, :cond_538

    const-string/jumbo v5, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Enabling system stub after removal; pkg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_538
    iget-object v5, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v7, v3}, Lcom/android/server/pm/PackageManagerService;->enableCompressedPackage(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    goto :goto_564

    :cond_53e
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v5, :cond_564

    const-string/jumbo v5, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "System stub disabled for all users, leaving uncompressed after removal; pkg: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55e
    .catchall {:try_start_519 .. :try_end_55e} :catchall_4e2

    goto :goto_564

    :catchall_55f
    move-exception v0

    :try_start_560
    monitor-exit v5
    :try_end_561
    .catchall {:try_start_560 .. :try_end_561} :catchall_55f

    :try_start_561
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
    :try_end_564
    .catchall {:try_start_561 .. :try_end_564} :catchall_4e2

    :cond_564
    :goto_564
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    if-eqz v26, :cond_578

    if-eqz v23, :cond_578

    iget-object v3, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    move-result-object v3

    iget v0, v0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {v3, v0, v4}, Lcom/android/server/pm/PackageInstallerService;->onInstallerPackageDeleted(II)V

    :cond_578
    if-eqz v26, :cond_5b1

    if-nez v9, :cond_5b1

    const-string v0, "AASA_PackageManager_RESTRICTED"

    const-string/jumbo v3, "Uninstall : userId = "

    const-string v4, ", info.uid = "

    invoke-static {v9, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v8, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_59b
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/content/pm/IASKSManager;->clearASKSruleForRemovedPackage(Ljava/lang/String;)V
    :try_end_5a2
    .catch Ljava/lang/Exception; {:try_start_59b .. :try_end_5a2} :catch_5a3

    goto :goto_5b1

    :catch_5a3
    move-exception v0

    const-string/jumbo v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception during clearASKSruleForRemovedPackage() : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_5b1
    :goto_5b1
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    if-eqz v26, :cond_61e

    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v0, :cond_61c

    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_61c

    if-eqz v9, :cond_5da

    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v0

    if-ne v9, v0, :cond_61c

    :cond_5da
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61c

    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v0

    if-eqz v0, :cond_61c

    if-nez v21, :cond_61c

    if-nez v22, :cond_61c

    or-int v3, p2, v20

    if-nez v9, :cond_60f

    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v2

    const/4 v7, 0x1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(IIJLjava/lang/String;Z)I

    move-result v15

    goto :goto_61d

    :cond_60f
    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(IIJLjava/lang/String;Z)I

    move-result v15

    goto :goto_61d

    :cond_61c
    move v15, v2

    :goto_61d
    return v15

    :cond_61e
    if-eqz v26, :cond_622

    move v15, v2

    goto :goto_624

    :cond_622
    move/from16 v15, v25

    :goto_624
    return v15

    :goto_625
    :try_start_625
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_628
    .catchall {:try_start_625 .. :try_end_628} :catchall_629

    goto :goto_62d

    :catchall_629
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_62d
    throw v1

    :goto_62e
    :try_start_62e
    monitor-exit v2
    :try_end_62f
    .catchall {:try_start_62e .. :try_end_62f} :catchall_2c2

    :try_start_62f
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
    :try_end_632
    .catchall {:try_start_62f .. :try_end_632} :catchall_2a5

    :catchall_632
    move-exception v0

    move-object v1, v0

    :try_start_634
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_637
    .catchall {:try_start_634 .. :try_end_637} :catchall_638

    goto :goto_63c

    :catchall_638
    move-exception v0

    :try_start_639
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_63c
    throw v1
    :try_end_63d
    .catchall {:try_start_639 .. :try_end_63d} :catchall_2a5

    :goto_63d
    :try_start_63d
    invoke-virtual {v15}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_640
    .catchall {:try_start_63d .. :try_end_640} :catchall_641

    goto :goto_645

    :catchall_641
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_645
    throw v1

    :goto_646
    :try_start_646
    monitor-exit v8
    :try_end_647
    .catchall {:try_start_646 .. :try_end_647} :catchall_5c

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method

.method public final executeDeletePackageLIF(Lcom/android/server/pm/DeletePackageAction;Ljava/lang/String;Z[IZZ)V
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v6, p4

    const/4 v10, -0x1

    const/4 v11, 0x1

    iget-object v12, v0, Lcom/android/server/pm/DeletePackageAction;->mDeletingPs:Lcom/android/server/pm/PackageSetting;

    iget-object v13, v0, Lcom/android/server/pm/DeletePackageAction;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v2, v0, Lcom/android/server/pm/DeletePackageAction;->mUser:Landroid/os/UserHandle;

    if-eqz p6, :cond_19

    iget v3, v0, Lcom/android/server/pm/DeletePackageAction;->mFlags:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    :goto_17
    move v5, v3

    goto :goto_1c

    :cond_19
    iget v3, v0, Lcom/android/server/pm/DeletePackageAction;->mFlags:I

    goto :goto_17

    :goto_1c
    sget-boolean v3, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageStateInternal;->getFlags()I

    move-result v3

    and-int/2addr v3, v11

    if-eqz v3, :cond_27

    move v3, v11

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    :goto_28
    new-instance v15, Landroid/util/SparseBooleanArray;

    invoke-direct {v15}, Landroid/util/SparseBooleanArray;-><init>()V

    array-length v4, v6

    const/4 v7, 0x0

    :goto_2f
    if-ge v7, v4, :cond_4f

    aget v8, v6, v7

    const/16 p6, 0x0

    iget-object v14, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move/from16 v16, v11

    const-string/jumbo v11, "android.permission.SUSPEND_APPS"

    invoke-virtual {v14, v11, v9, v8}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_45

    move/from16 v11, v16

    goto :goto_47

    :cond_45
    move/from16 v11, p6

    :goto_47
    invoke-virtual {v15, v8, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v11, v16

    goto :goto_2f

    :cond_4f
    move/from16 v16, v11

    const/16 p6, 0x0

    if-nez v2, :cond_57

    move v4, v10

    goto :goto_5b

    :cond_57
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    :goto_5b
    if-ne v4, v10, :cond_62

    invoke-virtual {v12, v6}, Lcom/android/server/pm/PackageSetting;->queryUsersInstalledOrHasData([I)[I

    move-result-object v7

    goto :goto_69

    :cond_62
    move/from16 v7, v16

    new-array v8, v7, [I

    aput v4, v8, p6

    move-object v7, v8

    :goto_69
    iput-object v7, v13, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    if-nez v7, :cond_73

    const/4 v7, 0x0

    iput-object v7, v13, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    :cond_70
    const/16 v16, 0x1

    goto :goto_9d

    :cond_73
    sget-object v8, Lcom/android/server/pm/PackageRemovedInfo;->EMPTY_INT_ARRAY:[I

    iput-object v8, v13, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    iput-object v8, v13, Lcom/android/server/pm/PackageRemovedInfo;->mInstantUserIds:[I

    array-length v7, v7

    const/16 v16, 0x1

    add-int/lit8 v7, v7, -0x1

    :goto_7e
    if-ltz v7, :cond_70

    iget-object v8, v13, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    aget v8, v8, v7

    invoke-virtual {v12, v8}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v11

    if-eqz v11, :cond_93

    iget-object v11, v13, Lcom/android/server/pm/PackageRemovedInfo;->mInstantUserIds:[I

    invoke-static {v11, v8}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v8

    iput-object v8, v13, Lcom/android/server/pm/PackageRemovedInfo;->mInstantUserIds:[I

    goto :goto_9b

    :cond_93
    iget-object v11, v13, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    invoke-static {v11, v8}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v8

    iput-object v8, v13, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    :goto_9b
    add-int/2addr v7, v10

    goto :goto_7e

    :goto_9d
    and-int/lit8 v7, v5, 0x1

    if-nez v7, :cond_a3

    const/4 v7, 0x1

    goto :goto_a5

    :cond_a3
    move/from16 v7, p6

    :goto_a5
    iput-boolean v7, v13, Lcom/android/server/pm/PackageRemovedInfo;->mDataRemoved:Z

    iget-object v7, v12, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iput-object v7, v13, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    iget-object v7, v12, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v7, v7, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iput-object v7, v13, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    iget-object v7, v12, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v7, :cond_bd

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_bd

    const/4 v7, 0x1

    goto :goto_bf

    :cond_bd
    move/from16 v7, p6

    :goto_bf
    iput-boolean v7, v13, Lcom/android/server/pm/PackageRemovedInfo;->mIsStaticSharedLib:Z

    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isExternalStorage()Z

    move-result v7

    iput-boolean v7, v13, Lcom/android/server/pm/PackageRemovedInfo;->mIsExternal:Z

    iget-wide v7, v12, Lcom/android/server/pm/PackageSetting;->versionCode:J

    iput-wide v7, v13, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackageVersionCode:J

    if-eqz v3, :cond_d1

    and-int/lit8 v7, v5, 0x4

    if-eqz v7, :cond_152

    :cond_d1
    if-eq v4, v10, :cond_152

    iget-object v7, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v7

    :try_start_da
    invoke-virtual {v1, v5, v2, v12}, Lcom/android/server/pm/DeletePackageHelper;->markPackageUninstalledForUserLPw(ILandroid/os/UserHandle;Lcom/android/server/pm/PackageSetting;)V

    if-nez v3, :cond_125

    iget-object v8, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v8, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    monitor-enter v11
    :try_end_e4
    .catchall {:try_start_da .. :try_end_e4} :catchall_120

    :try_start_e4
    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    monitor-exit v11
    :try_end_eb
    .catchall {:try_start_e4 .. :try_end_eb} :catchall_122

    :try_start_eb
    iget-object v11, v1, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    iget-object v11, v11, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v11}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v11

    array-length v14, v11

    move/from16 v10, p6

    :goto_f6
    if-ge v10, v14, :cond_111

    move-object/from16 v17, v2

    aget v2, v11, v10

    if-ne v2, v4, :cond_101

    :cond_fe
    const/16 v16, 0x1

    goto :goto_10c

    :cond_101
    invoke-virtual {v12, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v2

    if-eqz v2, :cond_fe

    goto :goto_115

    :goto_10c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v17

    goto :goto_f6

    :cond_111
    move-object/from16 v17, v2

    if-eqz v8, :cond_116

    :goto_115
    goto :goto_127

    :cond_116
    iget-object v2, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v12}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V
    :try_end_11d
    .catchall {:try_start_eb .. :try_end_11d} :catchall_120

    move/from16 v2, p6

    goto :goto_128

    :catchall_120
    move-exception v0

    goto :goto_14e

    :catchall_122
    move-exception v0

    :try_start_123
    monitor-exit v11
    :try_end_124
    .catchall {:try_start_123 .. :try_end_124} :catchall_122

    :try_start_124
    throw v0

    :cond_125
    move-object/from16 v17, v2

    :goto_127
    const/4 v2, 0x1

    :goto_128
    monitor-exit v7
    :try_end_129
    .catchall {:try_start_124 .. :try_end_129} :catchall_120

    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v2, :cond_152

    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v0, v12, v4, v5}, Lcom/android/server/pm/RemovePackageHelper;->clearPackageStateForUserLIF(Lcom/android/server/pm/PackageSetting;II)V

    iget v0, v12, Lcom/android/server/pm/PackageSetting;->mAppId:I

    iput v0, v13, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    iget-boolean v0, v13, Lcom/android/server/pm/PackageRemovedInfo;->mDataRemoved:Z

    if-eqz v0, :cond_13d

    const/4 v7, 0x1

    iput-boolean v7, v13, Lcom/android/server/pm/PackageRemovedInfo;->mIsAppIdRemoved:Z

    :cond_13d
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    if-nez v17, :cond_143

    const/4 v10, -0x1

    goto :goto_14a

    :cond_143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v17 .. v17}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    :goto_14a
    invoke-virtual {v0, v10}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    return-void

    :goto_14e
    :try_start_14e
    monitor-exit v7
    :try_end_14f
    .catchall {:try_start_14e .. :try_end_14f} :catchall_120

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_152
    if-eqz p3, :cond_169

    if-nez v3, :cond_169

    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isExternalStorage()Z

    move-result v2

    if-eqz v2, :cond_169

    iget-object v2, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    iget-object v2, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfPackage(Ljava/lang/String;)J

    :cond_169
    if-eqz v3, :cond_1c6

    iget v2, v0, Lcom/android/server/pm/DeletePackageAction;->mFlags:I

    iget-object v7, v0, Lcom/android/server/pm/DeletePackageAction;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v3, v7, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    move v3, v2

    iget-object v2, v0, Lcom/android/server/pm/DeletePackageAction;->mDeletingPs:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "PackageManager"

    const-string v5, "Deleting system pkg from data partition"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    iput-boolean v4, v7, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    iget-object v4, v0, Lcom/android/server/pm/DeletePackageAction;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    iget-wide v10, v4, Lcom/android/server/pm/PackageSetting;->versionCode:J

    iget-wide v5, v2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    cmp-long v5, v10, v5

    if-ltz v5, :cond_199

    iget v4, v4, Lcom/android/server/pm/PackageSetting;->mAppId:I

    iget v5, v2, Lcom/android/server/pm/PackageSetting;->mAppId:I

    if-eq v4, v5, :cond_193

    goto :goto_199

    :cond_193
    const/16 v16, 0x1

    or-int/lit8 v3, v3, 0x1

    :goto_197
    move v5, v3

    goto :goto_19c

    :cond_199
    :goto_199
    and-int/lit8 v3, v3, -0x2

    goto :goto_197

    :goto_19c
    iget-object v3, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v3, v10, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v3, -0x1

    const/4 v4, 0x1

    move-object/from16 v6, p4

    move/from16 v8, p5

    :try_start_1ab
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/DeletePackageHelper;->deleteInstalledPackageLIF(Lcom/android/server/pm/PackageSetting;IZI[ILcom/android/server/pm/PackageRemovedInfo;Z)V
    :try_end_1ae
    .catchall {:try_start_1ab .. :try_end_1ae} :catchall_1bb

    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    iget-object v2, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move/from16 v8, p5

    invoke-virtual {v2, v0, v6, v8}, Lcom/android/server/pm/PackageManagerService;->restoreDisabledSystemPackageLIF(Lcom/android/server/pm/DeletePackageAction;[IZ)V

    move-object v2, v12

    move-object v7, v13

    goto :goto_207

    :catchall_1bb
    move-exception v0

    move-object v1, v0

    :try_start_1bd
    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_1c0
    .catchall {:try_start_1bd .. :try_end_1c0} :catchall_1c1

    goto :goto_1c5

    :catchall_1c1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1c5
    throw v1

    :cond_1c6
    move/from16 v8, p5

    iget-object v0, v12, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f3

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v2

    :try_start_1d8
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object v0

    invoke-virtual {v0, v2, v9}, Lcom/android/server/art/ArtManagerLocal;->deleteDexoptArtifacts(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;)Lcom/android/server/art/model/DeleteResult;
    :try_end_1df
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d8 .. :try_end_1df} :catch_1e3
    .catch Ljava/lang/IllegalStateException; {:try_start_1d8 .. :try_end_1df} :catch_1e3
    .catchall {:try_start_1d8 .. :try_end_1df} :catchall_1e0

    goto :goto_1ee

    :catchall_1e0
    move-exception v0

    move-object v1, v0

    goto :goto_1f9

    :catch_1e3
    move-exception v0

    :try_start_1e4
    const-string/jumbo v3, "PackageManager"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ee
    .catchall {:try_start_1e4 .. :try_end_1ee} :catchall_1e0

    :goto_1ee
    if-eqz v2, :cond_1f3

    invoke-interface {v2}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    :cond_1f3
    move v3, v4

    move-object v2, v12

    move-object v7, v13

    move/from16 v4, p3

    goto :goto_204

    :goto_1f9
    if-eqz v2, :cond_203

    :try_start_1fb
    invoke-interface {v2}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_1fe
    .catchall {:try_start_1fb .. :try_end_1fe} :catchall_1ff

    goto :goto_203

    :catchall_1ff
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_203
    :goto_203
    throw v1

    :goto_204
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/DeletePackageHelper;->deleteInstalledPackageLIF(Lcom/android/server/pm/PackageSetting;IZI[ILcom/android/server/pm/PackageRemovedInfo;Z)V

    :goto_207
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    iget-object v3, v7, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    array-length v4, v3

    move/from16 v5, p6

    :goto_212
    if-ge v5, v4, :cond_238

    aget v6, v3, v5

    invoke-virtual {v15, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_233

    iget-object v8, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v10, -0x1

    invoke-virtual {v8, v6, v10, v0, v9}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(IILcom/android/server/pm/Computer;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getAllAvailablePackageNames()[Ljava/lang/String;

    move-result-object v11

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    invoke-virtual {v8, v0, v11, v6}, Lcom/android/server/pm/DistractingPackageHelper;->removeDistractingPackageRestrictions(Lcom/android/server/pm/Computer;[Ljava/lang/String;I)V

    :goto_230
    const/16 v16, 0x1

    goto :goto_235

    :cond_233
    const/4 v10, -0x1

    goto :goto_230

    :goto_235
    add-int/lit8 v5, v5, 0x1

    goto :goto_212

    :cond_238
    const/16 v16, 0x1

    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v3

    :try_start_241
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_252

    move/from16 v11, v16

    goto :goto_254

    :cond_252
    move/from16 v11, p6

    :goto_254
    iput-boolean v11, v7, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    monitor-exit v3

    return-void

    :catchall_258
    move-exception v0

    monitor-exit v3
    :try_end_25a
    .catchall {:try_start_241 .. :try_end_25a} :catchall_258

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method

.method public final markPackageUninstalledForUserLPw(ILandroid/os/UserHandle;Lcom/android/server/pm/PackageSetting;)V
    .registers 38

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/16 v27, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1a

    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_11

    goto :goto_1a

    :cond_11
    new-array v3, v2, [I

    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    aput v4, v3, v27

    goto :goto_22

    :cond_1a
    :goto_1a
    iget-object v3, v0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    :goto_22
    array-length v4, v3

    move/from16 v5, v27

    :goto_25
    if-ge v5, v4, :cond_e2

    move v6, v2

    aget v2, v3, v5

    and-int/lit8 v7, p1, 0x1

    const/4 v8, 0x0

    if-eqz v7, :cond_4e

    new-instance v9, Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledComponents()Landroid/util/ArraySet;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    new-instance v10, Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getDisabledComponents()Landroid/util/ArraySet;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    goto :goto_52

    :cond_4e
    move-object/from16 v17, v8

    move-object/from16 v18, v17

    :goto_52
    if-nez v7, :cond_57

    move-object/from16 v26, v8

    goto :goto_61

    :cond_57
    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v9

    move-object/from16 v26, v9

    :goto_61
    if-nez v7, :cond_68

    const-wide/16 v9, 0x0

    :goto_65
    move-wide/from16 v23, v9

    goto :goto_71

    :cond_68
    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v9

    goto :goto_65

    :goto_71
    const-string/jumbo v7, "auto_disabler"

    if-eqz v26, :cond_86

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_86

    move v9, v6

    goto :goto_88

    :cond_86
    move/from16 v9, v27

    :goto_88
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v10

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageUserState;->getDeDataInode()J

    move-result-wide v12

    if-eqz v9, :cond_9f

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v14

    goto :goto_a1

    :cond_9f
    move/from16 v14, v27

    :goto_a1
    if-eqz v9, :cond_a6

    move-object/from16 v16, v7

    goto :goto_a8

    :cond_a6
    move-object/from16 v16, v8

    :goto_a8
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v7, v3

    move-wide/from16 v32, v10

    move v11, v4

    move-wide/from16 v3, v32

    const/4 v10, 0x1

    move v15, v11

    const/4 v11, 0x0

    move/from16 v19, v5

    move-wide/from16 v32, v12

    move v13, v6

    move-wide/from16 v5, v32

    const/4 v12, 0x0

    move/from16 v22, v13

    const/4 v13, 0x0

    move-object/from16 v25, v7

    move v7, v14

    const/4 v14, 0x0

    move/from16 v28, v15

    const/4 v15, 0x0

    move/from16 v29, v19

    const/16 v19, 0x0

    move/from16 v30, v22

    const/16 v22, 0x0

    move-object/from16 v31, v25

    const/16 v25, 0x0

    invoke-virtual/range {v1 .. v26}, Lcom/android/server/pm/PackageSetting;->setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;)V

    add-int/lit8 v5, v29, 0x1

    move/from16 v4, v28

    move/from16 v2, v30

    move-object/from16 v3, v31

    goto/16 :goto_25

    :cond_e2
    iget-object v0, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    return-void
.end method

.method public final removeUnusedPackagesLPw(Lcom/android/server/pm/UserManagerService;I)V
    .registers 13

    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, v1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v1, :cond_7b

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v4, v4, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-nez v5, :cond_25

    goto :goto_78

    :cond_25
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, v4, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-nez v6, :cond_78

    iget-object v6, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_78

    iget-object v6, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_48

    goto :goto_78

    :cond_48
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    monitor-enter v6

    :try_start_4b
    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    monitor-exit v6
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_75

    if-eqz v8, :cond_55

    goto :goto_67

    :cond_55
    move v6, v2

    :goto_56
    array-length v9, p1

    if-ge v6, v9, :cond_67

    aget v9, p1, v6

    if-eq v9, p2, :cond_64

    invoke-virtual {v4, v9}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v9

    if-eqz v9, :cond_64

    goto :goto_68

    :cond_64
    add-int/lit8 v6, v6, 0x1

    goto :goto_56

    :cond_67
    :goto_67
    move v7, v8

    :goto_68
    if-nez v7, :cond_78

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v5, p2}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;I)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_78

    :catchall_75
    move-exception p0

    :try_start_76
    monitor-exit v6
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw p0

    :cond_78
    :goto_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_7b
    return-void
.end method
